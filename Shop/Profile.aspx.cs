using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            string script = "alert('User Data saved successfully!');";
            ClientScript.RegisterStartupScript(this.GetType(), "SavedMessage", script, true);
        }
    }
}