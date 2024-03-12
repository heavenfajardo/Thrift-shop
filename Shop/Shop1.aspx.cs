using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            // You can add backend logic here if needed
            // For now, let's just show the alert message
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Item added to cart');", true);
        }
    }
}
