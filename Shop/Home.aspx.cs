using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
           
                if (Session["Username"] != null)
                {
                    string username = Session["Username"].ToString();
                    lblWelcomeMessage.Text = $"Hi {username}, Welcome to Online Shop!!!!";
                }
                else
                {
                  
                    Response.Redirect("login.aspx");
                }
            }
        }
    }
}