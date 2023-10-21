using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace HouseRentalMS
{
    public partial class LandLord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowLLords();
        }
        private void ShowLLords()
        {
            try

            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;

                using (Con)
                {
                    string Query = "Select * from LandLordTbl";
                    SqlCommand cmd = new SqlCommand(Query, Con);
                    Con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    LandLordDGV.DataSource = reader;
                    LandLordDGV.Columns[0].Visible = false;
                    LandLordDGV.DataBind();
                    Con.Close();

                }

            }
            catch (Exception ex)
            {
                string message = ex.Message;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }


        }
        protected void InsertBtn_Click(object sender, ImageClickEventArgs e)
        {
            if (LLNameTb.Text == "" || GenCb.SelectedIndex == -1 || PhoneTb.Text == "")
            {

                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "INSERT INTO LandLordTbl (LLName,LLPhone,LLGen) VALUES(@LLN,@LLP,@LLG)";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@LLN", LLNameTb.Text);
                            cmd.Parameters.AddWithValue("@LLP", PhoneTb.Text);
                            cmd.Parameters.AddWithValue("@LLG", GenCb.SelectedValue.ToString());
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
                ShowLLords();
            }

        }

        static int Key = 0;
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            if (LLNameTb.Text == "" || GenCb.SelectedIndex == -1 || PhoneTb.Text == "")
            {
                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "UPDATE  LandLordTbl SET LLName=@LLN,LLPhone=@LLP,LLGen=@LLG where LLId=@LLkey";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@LLN", LLNameTb.Text);
                            cmd.Parameters.AddWithValue("@LLP", PhoneTb.Text);
                            cmd.Parameters.AddWithValue("@LLG", GenCb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@LLkey", Key);
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
                ShowLLords();
            }
        }

        private void ResetData()
        {
            PhoneTb.Text = " ";
            GenCb.SelectedIndex = -1;
            LLNameTb.Text = " ";
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            if (Key == 0)
            {
                string message = "Select a Tenant!!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "DELETE FROM LandLordTbl WHERE LLId=@LLkey";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@LLkey", Key);
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
                ShowLLords();

            }
        }

        protected void LandLoardDGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = LandLordDGV.SelectedRow;
            LLNameTb.Text = row.Cells[3].Text;
            PhoneTb.Text = row.Cells[4].Text;
            GenCb.Text = row.Cells[5].Text;
            int id = Convert.ToInt32(LandLordDGV.SelectedRow.Cells[2].Text);
            if (LLNameTb.Text == "")
            {
                Key = 0;

            }
            else
            {
                Key = id;

            }

        }


    }
}