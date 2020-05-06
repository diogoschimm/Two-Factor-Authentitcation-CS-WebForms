<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidarCodigo.aspx.cs" Inherits="TesteTwoFactorAuthentication.ValidarCodigo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="clearfix"></div>
            <div class="col-md-12" style="margin-top: 2%">
                <div class="form-group col-md-4">
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtSecurityCode" MaxLength="50" ToolTip="Please enter security code you get on your authenticator application">  
                    </asp:TextBox>
                </div>
                <asp:Button ID="btnValidate" OnClick="btnValidate_Click" CssClass="btn btn-primary" runat="server" Text="Validate" />
            </div>
            <h3>Result:</h3>
            <div class="alert alert-success col-md-12" runat="server" role="alert">
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
