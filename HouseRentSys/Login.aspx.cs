using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HouseRentalMS
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_click(object sender, EventArgs e)
        {
            if(UserNameTb.Text=="Admin" &&  PasswordTb
                .Text == "Admin@1234")
            {
                Response.Redirect("Tenants.aspx");
            }
            else
            {
                string message = "UserName or Password is not Valid";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
        }
    }
}