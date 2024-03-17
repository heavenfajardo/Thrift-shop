using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Shop.ThankYou;

namespace Shop
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                decimal totalPrice = 0;
                if (Session["CartTotalPrice"] != null)
                {
                    totalPrice = (decimal)Session["CartTotalPrice"];
                }

                txtAmount.Text = totalPrice.ToString();
            }
        }



        protected void btnPayNow_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
             
                string name = txtName.Text;
                string gcashNumber = txtGcashNumber.Text;
                string gcashName = txtGcashName.Text;
                string referenceNumber = txtReferenceNumber.Text;
                decimal amount = Convert.ToDecimal(txtAmount.Text);

                
                PaymentInfo paymentInfo = new PaymentInfo
                {
                    Name = name,
                    GcashNumber = gcashNumber,
                    GcashName = gcashName,
                    ReferenceNumber = referenceNumber,
                    Amount = amount
                };

                
                Session["PaymentInfo"] = paymentInfo;

               
                Response.Redirect("ThankYou.aspx");
            }
        }


        protected void btnBack_Click(object sender,EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}
    
