# Two-Factor-Authentitcation-CS-WebForms
Exemplo de utilização do Google.Authenticator com C# para Algortimo 2FA (two-factor authentication)

## Package Manager

```
Install-Package GoogleAuthenticator
```

## Gerando o QRCode com TwoFactorAuthenticator

Lembrando que o código do usuário deve ser único para cada conta.

```cs
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
```

## Validando o Código Gerado pelos APP de Authenticator

```cs
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
```

## Aplicativos para Gerar Tokens

- Google Authenticator
- Microsoft Authenticator
- Entre outros ...

