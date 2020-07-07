<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vendor_Registration.aspx.cs" Inherits="Vendor_Management_Site.Vendor_Registration" %>

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
         .auto-style8 {
             width: 627px;
             height: 30px;
         }
         .auto-style9 {
             height: 30px;
         }
        .auto-style10 {
            width: 627px;
            height: 38px;
        }
        .auto-style11 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1><b style="font-style: italic; background-color: #FFFFFF">-------------------:Vendor&nbsp; Registration:--------------------</b></h1></center>


        </div>
        <table class="auto-style4">
            <tr>
                <td aria-atomic="False" class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:</td>
                <td style="background-color: #FFFFFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextName" runat="server" Height="35px" Width="267px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email_Id:</td>
                <td style="background-color: #FFFFFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextEmail" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact_No:</td>
                <td style="background-color: #FFFFFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextContact" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold; font-style: italic; font-size: large; background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:</td>
                <td style="background-color: #FFFFFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">
                    <asp:TextBox ID="TextAddress" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-weight: bold; font-style: italic; font-size: large; background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vendor_Type:</td>
                <td style="background-color: #FFFFFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic" class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="32px" Width="181px">
                        <asp:ListItem>Computer</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Home Nurse</asp:ListItem>
                        <asp:ListItem>Plumber</asp:ListItem>
                        <asp:ListItem>Washman</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-weight: bold; font-style: italic; font-size: large; background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;</td>
                <td style="background-color: #FFFFFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic" class="auto-style9">
                    <asp:TextBox ID="TextPassword" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-weight: bold; font-style: italic; font-size: large; background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password:&nbsp;</td>
                <td style="background-color: #FFFFFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic" class="auto-style9">
                    <asp:TextBox ID="TextCpass" runat="server" Height="35px" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="font-weight: bold; font-style: italic; font-size: large; background-color: #FFFFFF"></td>
                <td class="auto-style11" style="background-color: #FFFFFF; border-color: #000000; font-size: large; font-weight: bold; font-style: italic">&nbsp; &nbsp;<asp:Button ID="Submit" runat="server" BackColor="Lime" Height="43px" Text="Submit" Width="121px" OnClick="Submit_Click" />
                &nbsp;
                    <asp:Button ID="clear" runat="server" BackColor="Yellow" Height="43px"  Text="Reset" Width="121px" OnClick="clear_Click" />
                </td>
            </tr>
        </table>
            <center>
                <br />
                <asp:Label ID="lbl" runat="server" BackColor="#FF99FF"></asp:Label></center>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vendor]"></asp:SqlDataSource>
    </form>
</body>
</html>