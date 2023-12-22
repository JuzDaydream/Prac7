using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac7
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cvDOB.ValueToCompare = DateTime.Now.ToString("yyyy-MM-dd");
        }

        protected Boolean isValidCardType(string cardNumber)
        {
            Boolean isValid = false;

            if (Regex.IsMatch(cardNumber, "^4\\d{15}") && rblCardType.SelectedIndex == 0)
            {
                isValid = true;
            }
            else if (Regex.IsMatch(cardNumber, "^5\\d{15}") && rblCardType.SelectedIndex == 1)
            {
                isValid = true;
            }

            return isValid;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //lblMsg.Text = txtDOB.Text.ToString();

            if (isValidCardType(txtCardNum.Text)==false)
            {
                regCardNum.IsValid = false;
                if (rblCardType.SelectedIndex == 0)
                {
                    //VISA
                    regCardNum.ErrorMessage = "Visa CardNumber starts with a 4";
                }
                else if (rblCardType.SelectedIndex == 1)
                {
                    //MASTER
                    regCardNum.ErrorMessage = "Master CardNumber starts with a 5";
                }
            }
            else
            {
                lblMsg.Text = "User Name: " + txtUsername.Text + "<br>" +
                    "Password: " + txtPassword.Text + "<br>" +
                    " Date of Birth: " + txtDOB.Text + "<br>" +
                    "Credit Card Number: " + txtCardNum.Text + "<br>";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAge.Text = string.Empty;
            rblCardType.SelectedIndex = 0;
            txtCardNum.Text = string.Empty;
            txtDOB.Text = string.Empty;
            txtCardNum.Text = string.Empty;
            lblMsg.Text=String.Empty; 
        }
    }
}