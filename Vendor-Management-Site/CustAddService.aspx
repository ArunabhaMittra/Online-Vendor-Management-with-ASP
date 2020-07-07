<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerLogin.Master" AutoEventWireup="true" CodeBehind="CustAddService.aspx.cs" Inherits="Vendor_Management_Site.CustAddService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            height: 19px;
        }
        .auto-style15 {
            height: 30px;
        }
        .auto-style16 {
            width: 317px;
        }
        .auto-style17 {
            height: 19px;
            width: 317px;
        }
        .auto-style18 {
            height: 30px;
            width: 317px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td class="auto-style16">Add a new service&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">Service Booking Date:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Service Type:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Computer </asp:ListItem>
                    <asp:ListItem Selected="True">Electronic Appliances</asp:ListItem>
                    <asp:ListItem>Home Nurse</asp:ListItem>
                    <asp:ListItem>Plumber</asp:ListItem>
                    <asp:ListItem>Cleaning Service</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Service Description:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Larger" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Text="Submit" OnClick="OnSubmitClick" />
                &nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style15">
                <asp:Button ID="Button5" runat="server" OnClick="OnResetClick" Text="Reset" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    &nbsp;
</asp:Content>
