using Google.Authenticator;
using System;
using System.Web.UI;

namespace TesteTwoFactorAuthentication
{
    public partial class Authenticator : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GenerateTwoFactorAuthentication();
            }
        }

        public Boolean GenerateTwoFactorAuthentication()
        {
            var nomeConta = "e-Ecomm";
            var subTitulo = "Sistema de Teste";
            var codigoUsuario = Convert.ToString("5488C7F2-79E3-4F50-A900-FA547B54CA9D").Replace("-", "").Substring(0, 10);

            var tfa = new TwoFactorAuthenticator();
            var setupInfo = tfa.GenerateSetupCode(nomeConta, subTitulo, codigoUsuario, secretIsBase32: false, QRPixelsPerModule: 4);
            if (setupInfo != null)
            {
                imgQrCode.ImageUrl = setupInfo.QrCodeSetupImageUrl;
                lblManualSetupCode.Text = setupInfo.ManualEntryKey;
                lblAccountName.Text = nomeConta;
                return true;
            }

            return false;
        }
    }
}