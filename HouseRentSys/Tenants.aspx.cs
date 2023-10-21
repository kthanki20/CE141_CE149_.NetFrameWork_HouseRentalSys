using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace HouseRentalMS
{
    public partial class Tenants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowTenants();

        }

        private void ShowTenants()
        {
            try

            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;

                using (Con)
                {
                    string Query = "Select * from TenantTbl";
                    SqlCommand cmd = new SqlCommand(Query, Con);
                    Con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    TenantsDGV.DataSource = reader;
                    TenantsDGV.Columns[0].Visible = false;
                    TenantsDGV.DataBind();
                    Con.Close();

                }

            }
            catch (Exception ex)
            {
                string message = ex.Message;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }

             
        }
        static int Key = 0;

        protected void TenantsDGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = TenantsDGV.SelectedRow;
            TNameTb.Text = row.Cells[3].Text;
            PhoneTb.Text = row.Cells[4].Text;
            GenCb.Text = row.Cells[5].Text;
            int id = Convert.ToInt32(TenantsDGV.SelectedRow.Cells[2].Text);
            if (TNameTb.Text == "")
            {
                Key = 0;

            }
            else
            {
                Key = id;

            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            if (TNameTb.Text == "" || GenCb.SelectedIndex == -1 || PhoneTb.Text == "")
            {
                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "UPDATE  TenantTbl SET TenName=@TN,TenPhone=@TP,TenGen=@TG where TenId=@Tkey";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@TN", TNameTb.Text);
                            cmd.Parameters.AddWithValue("@TP", PhoneTb.Text);
                            cmd.Parameters.AddWithValue("@TG", GenCb.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@Tkey", Key);
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
                ShowTenants();
            }

        }

        protected void InsertBtn_Click(object sender, ImageClickEventArgs e)
        {

            if (TNameTb.Text == "" || GenCb.SelectedIndex == -1 || PhoneTb.Text == "")
            {
                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "INSERT INTO TenantTbl (TenName,TenPhone,TenGen) VALUES(@TN,@TP,@TG)";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@TN", TNameTb.Text);
                            cmd.Parameters.AddWithValue("@TP", PhoneTb.Text);
                            cmd.Parameters.AddWithValue("@TG", GenCb.SelectedItem.ToString());
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
                ShowTenants();
            }

        }

        private void ResetData()
        {
            PhoneTb.Text = " ";
            GenCb.SelectedIndex = -1;
            TNameTb.Text = " ";
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
                string Query = "DELETE FROM TenantTbl WHERE TenId=@Tkey";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@Tkey", Key);
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
                ShowTenants();

            }
        }
    }
}