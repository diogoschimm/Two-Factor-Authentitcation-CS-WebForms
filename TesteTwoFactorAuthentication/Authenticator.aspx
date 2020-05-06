<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Authenticator.aspx.cs" Inherits="TesteTwoFactorAuthentication.Authenticator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h2 class="text-info text-center">Google Authenticator</h2>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="section">
                            <h3 class="text-info">Step 1: Install Google Authenticator  
                            </h3>
                            <p>Please download and install Google Authenticator on your IPhone/IPad/Android device, if already not installed.</p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="section">
                            <h3 class="text-info">Step 2: Link your device to your account:  
                            </h3>
                            <p>You have two options to link your device to your account:</p>
                            <p><b>Using QR Code:</b> Select<b> Scan a barcode</b>. If the Authenticator app cannot locate a barcode scanner app on your mobile device, you might be prompted to download and install one. If you want to install a barcode scanner app so you can complete the setup process, select Install, then go through the installation process. Once the app is installed, reopen Google Authenticator, then point your camera at the QR code on your computer screen.</p>

                            <p>
                                <b>Using Secret Key:</b>
                                Select <b>Enter provided key</b>, then enter account name of your account in the <b>"Enter account name"</b> box. Next, enter the secret key appear on your computer screen in the <b>"Enter your key"</b> box. Make sure you've chosen to make the key Time based, then select Add.  
                            </p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <asp:Image ID="imgQrCode" runat="server" />
                        </div>
                        <div class="col-md-6">
                            <div>
                                <span style="font-weight: bold; font-size: 14px;">Account Name:</span>
                            </div>
                            <div>
                                <asp:Label runat="server" ID="lblAccountName"></asp:Label>
                            </div>

                            <div>
                                <span style="font-weight: bold; font-size: 14px;">Secret Key:</span>
                            </div>
                            <div>
                                <asp:Label runat="server" ID="lblManualSetupCode"></asp:Label>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <p>
                            <br />
                            <br />
                            <a href="ValidarCodigo.aspx">Clique para acessar a Tela para validar código gerado</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
