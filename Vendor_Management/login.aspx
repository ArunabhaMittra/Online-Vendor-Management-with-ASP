<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Vendor_Management.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div style="font-family: Cambria; font-size: large; font-weight: bold; font-style: italic; color: #000000; background-color: #00FFFF;">
    
        <h1>---------------------:Vendor Management System:------------------</h1>
        <br />
        Enter ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextID" runat="server" BackColor="#FF3300" 
            BorderColor="#FF3300" Height="32px" Width="265px"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextID" ErrorMessage="NOT BLANK" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        Enter Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextPass" runat="server" BackColor="#FF3300" Height="30px" 
            TextMode="Password" Width="253px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextPass" ErrorMessage="NOT BLANK"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button_login" runat="server" BackColor="Lime" Height="45px" 
            Text="Login" Width="153px" onclick="Button_login_Click" />
&nbsp;&nbsp;
        <asp:Button ID="new_user" runat="server" BackColor="#FF0066" Height="44px" 
            PostBackUrl="~/signup.aspx" Text="SignUp" Width="170px" />
        <br />
        <br />
        <asp:Label ID="lbl" runat="server"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/forgot_password.aspx">Forgot Password</asp:HyperLink>
        <br />
    
    </div>
    </center>
    </form>
</body>
</html>
