<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp_CustORVend.aspx.cs" Inherits="Vendor_Management_Site.SignUp_CustORVend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sign Up As a Customer<br />
            <br />
            OR<br />
&nbsp;<br />
            Sign Up as Service Provider and Partner Up with Us ! <br />
            It&#39;s a SmIt&#39;s a Smooth Ride From Here ! That&#39;s Our Promise !<br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="SignUp_Customer" Text="Sign Up as Cusomer" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="SignUp_Vendor" Text="Sign Up as Vendor" />
        </div>
    </form>
</body>
</html>
