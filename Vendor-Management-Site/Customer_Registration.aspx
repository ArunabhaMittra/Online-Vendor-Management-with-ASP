<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Registration.aspx.cs" Inherits="Vendor_Management_Site.Customer_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 243px;
        }
        .auto-style5 {
            width: 627px;
        }
        .auto-style6 {
            width: 627px;
            height: 32px;
        }
        .auto-style7 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <center><h1><b style="font-style: italic; background-color: #008080">-----:Customer Registration:-----</b></h1></center>
        </div>
        <table class="auto-style4">
            <tr>
                <td aria-atomic="False" class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:</td>
                <td style="background-color: #66CCFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextName" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email_Id:</td>
                <td style="background-color: #66CCFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextEmail" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact_No:</td>
                <td style="background-color: #66CCFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextContact" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:</td>
                <td style="background-color: #66CCFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextAddress" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;</td>
                <td style="background-color: #66CCFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextPassword" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm&nbsp;&nbsp; Password:&nbsp;</td>
                <td style="background-color: #66CCFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextCpass" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-weight: bold; font-style: italic; font-size: large; background-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style7" style="background-color: #66CCFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">&nbsp; &nbsp;<asp:Button ID="Submit" runat="server" BackColor="Lime" Height="43px" Text="Submit" Width="121px" OnClick="Submit_Click" />
                &nbsp;
                    <asp:Button ID="clear" runat="server" BackColor="#FF0066" Height="44px"  Text="Reset" Width="116px" OnClick="clear_Click" />
                </td>
            </tr>
        </table>
            <center>
                <br />
                <asp:Label ID="lbl" runat="server" BackColor="#FF99FF"></asp:Label></center>
        
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
