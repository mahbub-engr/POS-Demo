<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUI.aspx.cs" Inherits="POS.wwwroot.LoginUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="description" content="Inventory management ststem POS" />
    <meta name="author" content="Mahbub Alam" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <link rel="stylesheet" href="css//bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="css/Login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-area d-flex justify-content-center">
            <asp:Login ID="LoginID" runat="server">
                <LayoutTemplate>
                    <div class="login-cart d-flex flex-column justify-content-center align-items-center gap-3">
                        <h2>Sign In</h2>
                        <asp:Label runat="server" ID="EroorMessegeLabel" CssClass="text-danger"></asp:Label>
                        <div>
                            <asp:Label runat="server" Text="User Name:"></asp:Label>
                            <asp:TextBox runat="server" ID="UserName" CssClass="user-name" placeholder="name"></asp:TextBox>
                        </div>

                        <div class="w-100 d-flex flex-column align-items-center gap-3 justify-content-center">
                            <div class="d-flex justify-content-between w-100 align-items-center">
                                <asp:Label runat="server" Text="Password:"></asp:Label>
                                <asp:TextBox runat="server" ID="Password" CssClass="user-pass" placeholder="password" TextMode="Password"></asp:TextBox>

                            </div>
                                <%--<asp:Label runat="server" Text="Remember login:" ></asp:Label>?--%>
                                <%--<asp:RadioButton runat="server" ID="RemLogin"/>--%>
                            <div class="d-flex gap-1" >
                                <asp:CheckBox ID="RememberMeCheckBox" runat="server" Text="Remember me" />
                            </div>
                                
                            <asp:Button runat="server" ID="LoginButton" Text="Login" CssClass="login-btn" OnClick="LoginButton_Click" />
                        </div>

                    </div>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </form>


    <script type="text/javascript" src="js/bootstrap/bootstrap.js"></script>
</body>
</html>
