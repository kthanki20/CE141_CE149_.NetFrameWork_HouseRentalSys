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
    public partial class Rents1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showRentList();
            getApartments();
            getTenants();
        }

        private void ResetData()
        {
            ApartTb.SelectedIndex = -1;
            PeriodTb.Text = " ";
            TenantTb.SelectedIndex = -1;
            AmountTb.Text = " ";

        }

        protected void showRentList()
        {
            try

            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;

                using (Con)
                {
                    string Query = "Select * from RentTbl";
                    SqlCommand cmd = new SqlCommand(Query, Con);
                    Con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    RentDGV.DataSource = reader;
                    RentDGV.Columns[0].Visible = false;
                    RentDGV.DataBind();
                    Con.Close();

                }

            }
            catch (Exception ex)
            {
                string message = ex.Message;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
        }
        protected void getApartments()
        {
            try
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "select ANum from ApartTbl";
                using (Con)
                {
                    using (SqlCommand cmd = new SqlCommand(Query))
                    {
                        cmd.Connection = Con;
                        Con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        DataTable dt = new DataTable();
                        dt.Columns.Add("ANum", typeof(string));
                        dt.Load(reader);
                        ApartTb.DataTextField = "ANum";
                        ApartTb.DataSource = dt;
                        ApartTb.DataBind();
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

        protected void getTenants()
        {
            try
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "select TenId from TenantTbl";
                using (Con)
                {
                    using (SqlCommand cmd = new SqlCommand(Query))
                    {
                        cmd.Connection = Con;
                        Con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        DataTable dt = new DataTable();
                        dt.Columns.Add("TenId", typeof(string));
                        dt.Load(reader);
                        TenantTb.DataTextField = "TenId";
                        TenantTb.DataSource = dt;
                        TenantTb.DataBind();
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
        static int Key = 0;
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            if (ApartTb.SelectedIndex == -1 || AmountTb.Text == "" || TenantTb.SelectedIndex == -1 || PeriodTb.Text == "")
            {

                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "UPDATE  RentTbl SET Apartment=@AP,Tenant=@TE,Period=@PE,Amount=@AM where Rcode=@Rkey";

                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@AP", ApartTb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@TE", TenantTb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@PE", PeriodTb.Text);
                            cmd.Parameters.AddWithValue("@AM", AmountTb.Text);
                            cmd.Parameters.AddWithValue("@Rkey", Key);
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
                showRentList();
            }
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
                string Query = "DELETE FROM RentTbl WHERE Rcode=@Rkey";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@Rkey", Key);
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
                showRentList();

            }
        }

        protected void InsertBtn_Click(object sender, ImageClickEventArgs e)
        {
            if (ApartTb.SelectedIndex == -1 || AmountTb.Text == "" || TenantTb.SelectedIndex == -1 || PeriodTb.Text == "")
            {

                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "INSERT INTO RentTbl (Apartment,Tenant,Period,Amount) VALUES(@AP,@TE,@PE,@AM)";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@AP", ApartTb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@TE", TenantTb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@PE", PeriodTb.Text);
                            cmd.Parameters.AddWithValue("@AM", AmountTb.Text);
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
                showRentList();
            }
        }

        protected void RentDGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = RentDGV.SelectedRow;
            ApartTb.Text = row.Cells[3].Text;
            AmountTb.Text = row.Cells[6].Text;
            TenantTb.Text = row.Cells[4].Text;
            PeriodTb.Text = row.Cells[5].Text;

            int id = Convert.ToInt32(RentDGV.SelectedRow.Cells[2].Text);
            if (ApartTb.Text == "")
            {
                Key = 0;
            }
            else
            {
                Key = id;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}