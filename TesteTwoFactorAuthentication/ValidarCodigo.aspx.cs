using Google.Authenticator;
using System;

namespace TesteTwoFactorAuthentication
{
    public partial class ValidarCodigo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnValidate_Click(object sender, EventArgs e)
        { 
            var pin = txtSecurityCode.Text.Trim(); 

            if (ValidateTwoFactorPIN(pin))
                lblResult.Text = "Code Successfully Verified.";
            else
                lblResult.Text = "Invalid Code.";
        }

        public bool ValidateTwoFactorPIN(string pin)
        {
            var uniqueUserKey = Convert.ToString("5488C7F2-79E3-4F50-A900-FA547B54CA9D").Replace("-", "").Substring(0, 10);

            var tfa = new TwoFactorAuthenticator();
            return tfa.ValidateTwoFactorPIN(uniqueUserKey, pin);
        } 
    }
}