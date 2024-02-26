using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                txtUsername.Attributes["placeholder"] = "Username";
                txtPassword.Attributes["placeholder"] = "Password";
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}