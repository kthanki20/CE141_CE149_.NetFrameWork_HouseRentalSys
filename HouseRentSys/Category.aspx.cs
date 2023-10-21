using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace HouseRentalMS
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowCategories();
        }

        protected void ShowCategories()
        {
            try

            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;

                using (Con)
                {
                    string Query = "Select * from CategoryTbl";
                    SqlCommand cmd = new SqlCommand(Query, Con);
                    Con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    CategoriesDGV.DataSource = reader;
                    CategoriesDGV.Columns[0].Visible = false;
                    CategoriesDGV.DataBind();
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
        protected void CategoriesDGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = CategoriesDGV.SelectedRow;
            CName.Text = row.Cells[3].Text;
            CRemark.Text = row.Cells[4].Text;

            int id = Convert.ToInt32(CategoriesDGV.SelectedRow.Cells[2].Text);
            if (CName.Text == "")
            {
                Key = 0;

            }
            else
            {
                Key = id;

            }
        }

        private void ResetData()
        {
            CName.Text = " ";
            CRemark.Text = " ";
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            if (CName.Text == " " ||  CRemark.Text == " ")
            {

                string message = "Missing Information";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "INSERT INTO CategoryTbl (Category,Remarks) VALUES(@CN,@CR)";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@CN", CName.Text);
                            cmd.Parameters.AddWithValue("@CR", CRemark.Text);
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
                ShowCategories();
            }

        }


        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            if (Key == 0)
            {
                string message = "Select a Category!!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                SqlConnection Con = new SqlConnection();
                Con.ConnectionString = ConfigurationManager.ConnectionStrings["HouseRentalDB"].ConnectionString;
                string Query = "DELETE FROM CategoryTbl WHERE CNum=@Ckey";
                try
                {
                    using (Con)
                    {
                        using (SqlCommand cmd = new SqlCommand(Query))
                        {
                            cmd.Parameters.AddWithValue("@Ckey", Key);
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
                ShowCategories();
            }
        }
    }
}