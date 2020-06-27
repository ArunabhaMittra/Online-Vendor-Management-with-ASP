<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot_password.aspx.cs" Inherits="Vendor_Management.forgot_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div style="font-size: large; font-weight: bold; font-style: italic; background-color: #FF66FF">
    
        ----------------------------:Change Password:------------------<br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            Enter Email:&nbsp;
            <asp:TextBox ID="TextEmail" runat="server" Height="42px" Width="241px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="find" runat="server" Height="32px" onclick="find_Click" 
                Text="Enter" Width="119px" />
            <br />
            <br />
            <asp:Label ID="lbl1" runat="server"></asp:Label>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server">
            Enter Password:&nbsp;
            <asp:TextBox ID="TextPass" runat="server" Height="42px" Width="217px"></asp:TextBox>
            <br />
            <br />
            Confirm Password:<asp:TextBox ID="TextCon" runat="server" Height="45px" 
                Width="199px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="update" runat="server" Height="41px" onclick="update_Click" 
                Text="update" Width="137px" />
            &nbsp;&nbsp;
            <br />
            &nbsp;
            <br />
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </center>
    </form>
</body>
</html>
