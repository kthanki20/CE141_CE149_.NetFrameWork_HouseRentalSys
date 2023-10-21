using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HouseRentalMS
{
    public partial class Apartments1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowApartments();
            GetCategories();
            GetOwners();
        }

        protected void GetOwners()
        {
            try
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "select LLId from LandLordTbl";
                using (Con)
                {
                    using (SqlCommand cmd = new SqlCommand(Query))
                    {
                        cmd.Connection = Con;
                        Con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        DataTable dt = new DataTable();
                        dt.Columns.Add("LLId", typeof(string));
                        dt.Load(reader);
                        LLTb.DataTextField = "LLId";
                        LLTb.DataSource = dt;
                        LLTb.DataBind();
                        Con.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                string message = ex.Message;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
        }
        protected void ShowApartments()
        {
            SqlConnection Con = new SqlConnection();
            Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;

            try

            {

                using (Con)
                {
                    string Query = "Select * from ApartTbl";
                    SqlCommand cmd = new SqlCommand(Query, Con);
                    Con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    ApartmentsDGV.DataSource = reader;
                    ApartmentsDGV.Columns[0].Visible = false;
                    ApartmentsDGV.DataBind();
                    Con.Close();

                }

            }
            catch (Exception ex)
            {
                string message = ex.Message;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
        }

        protected void GetCategories()
        {
            try

            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "select CNum from CategoryTbl";
                using (Con)
                {
                    using (SqlCommand cmd = new SqlCommand(Query))
                    {
                        cmd.Connection = Con;
                        Con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        DataTable dt = new DataTable();
                        dt.Columns.Add("CNum", typeof(string));
                        dt.Load(reader);
                        TypeCb.DataTextField = "CNum";
                        TypeCb.DataSource = dt;
                        TypeCb.DataBind();
                        Con.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                string message = ex.Message;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            if (ANameTb.Text == "" || AddressTb.Text == "" || TypeCb.SelectedIndex == -1 || CostTb.Text == "" || LLTb.Text == "")
            {

                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "UPDATE  ApartTbl SET AName=@AN,AAdress=@AA,AType=@AT,ACost=@AC,Owner=@OW where ANum=@Akey";

                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@AN", ANameTb.Text);
                            cmd.Parameters.AddWithValue("@AA", AddressTb.Text);
                            cmd.Parameters.AddWithValue("@AT", TypeCb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@AC", CostTb.Text);
                            cmd.Parameters.AddWithValue("@OW", LLTb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@Akey", Key);
                            cmd.Connection = Con;
                            Con.Open();
                            cmd.ExecuteNonQuery();
                            Con.Close();

                        }
                    }
                }
                catch (Exception error)
                {
                    string message = error.Message;
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }
                ResetData();
                ShowApartments();
            }
        }


        private void ResetData()
        {
            ANameTb.Text = " ";
            AddressTb.Text = " ";
            TypeCb.SelectedIndex = -1;
            LLTb.SelectedIndex = -1;
            CostTb.Text = " ";
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            if (Key == 0)
            {
                string message = "Select a Details!!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "DELETE FROM ApartTbl WHERE ANum=@Akey";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@Akey", Key);
                            cmd.Connection = Con;
                            Con.Open();
                            cmd.ExecuteNonQuery();
                            Con.Close();

                        }
                    }
                }
                catch (Exception error)
                {
                    string message = error.Message;
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }
                ResetData();
                ShowApartments();

            }
        }

        static int Key = 0;

        protected void ApartmentsDGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = ApartmentsDGV.SelectedRow;
            ANameTb.Text = row.Cells[3].Text;
            AddressTb.Text = row.Cells[4].Text;
            TypeCb.Text = row.Cells[5].Text;
            CostTb.Text = row.Cells[6].Text;
            LLTb.Text = row.Cells[7].Text;
            int id = Convert.ToInt32(ApartmentsDGV.SelectedRow.Cells[2].Text);
            if (ANameTb.Text == "")
            {
                Key = 0;
            }
            else
            {
                Key = id;
            }
        }


        protected void InsertBtn_Cllick(object sender, ImageClickEventArgs e)
        {
            if (ANameTb.Text == "" || AddressTb.Text == "" || TypeCb.SelectedIndex == -1 || CostTb.Text == "" || LLTb.Text == "")
            {

                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "INSERT INTO ApartTbl (AName,AAdress,AType,ACost,Owner) VALUES(@AN,@AA,@AT,@AC,@OW)";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@AN", ANameTb.Text);
                            cmd.Parameters.AddWithValue("@AA", AddressTb.Text);
                            cmd.Parameters.AddWithValue("@AT", TypeCb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@AC", CostTb.Text);
                            cmd.Parameters.AddWithValue("@OW", LLTb.SelectedValue.ToString());
                            cmd.Connection = Con;
                            Con.Open();
                            cmd.ExecuteNonQuery();
                            Con.Close();

                        }
                    }
                }
                catch (Exception error)
                {
                    string message = error.Message;
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }
                ResetData();
                ShowApartments();
            }
        }
    }
}

