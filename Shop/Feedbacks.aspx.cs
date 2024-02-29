using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Shop
{
    public partial class Feedbacks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit(object sender, EventArgs e)
        {
           
            if (string.IsNullOrWhiteSpace(name.Value) || string.IsNullOrWhiteSpace(email.Value) || string.IsNullOrWhiteSpace(message.Value))
            {
                
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill in all fields')", true);
            }
            else
            {
               
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Feedback submitted successfully')", true);

               
                name.Value = "";
                email.Value = "";
                message.Value = "";
            }
        }
    }
}