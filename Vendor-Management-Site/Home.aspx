<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Vendor_Management_Site.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <center>
        <div><h1> <b style="font-size: xx-large; font-weight: bold; font-style: italic; font-family: Cambria; background-color: #FF0066;">-------------------------:Welcome Vendor Management System:----------------------</b></h1>
            <p> &nbsp;</p>
            <p style="background-color: #00FFFF; font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-weight: bold; font-style: italic"> 
                <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#66FFFF" BorderColor="Aqua" NavigateUrl="~/Customer_Registration.aspx">Customer New Registration</asp:HyperLink>
&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Vendor_Registration.aspx">Vendor New Register</asp:HyperLink>
&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LoginChoice.aspx" OnDataBinding="OnSignInClick">SignIn</asp:HyperLink>
            </p></div>
        </center>
       
    </form>
</body>
</html>
