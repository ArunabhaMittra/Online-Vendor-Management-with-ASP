<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Vendor_Management.c_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div style="background-color: #6699FF; font-size: large; font-weight: bold; font-style: italic; font-family: 'Dubai Medium'">
    
        <h1 style="background-color: #0000FF">----------------------------:Sign 
            Up:--------------------------</h1>
        <p>Enter Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextName" runat="server" Height="38px" Width="212px"></asp:TextBox>
        </p>
        <p>Enter Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextEmail" runat="server" Height="38px" Width="212px"></asp:TextBox>
        </p>
        <p>Enter Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextPhone" runat="server" Height="42px" Width="210px"></asp:TextBox>
        &nbsp;</p>
        <p>Enter Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextPass" runat="server" Height="45px" Width="210px"></asp:TextBox>
        </p>
        <p>Enter Confirm Password:&nbsp;
            <asp:TextBox ID="TextCPass" runat="server" Height="44px" Width="213px"></asp:TextBox>
        </p>
        <p>Enter Adddress:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
                ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextAdd" runat="server" Height="44px" Width="213px"></asp:TextBox>
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="submit" runat="server" BackColor="Red" Height="50px" 
                onclick="submit_Click" Text="Submit" Width="144px" />
&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
        </p>
        <p>
            <asp:Label ID="lbl" runat="server" BackColor="#FFFF66"></asp:Label>
        </p></div>
        </center>
    </form>
</body>
</html>
