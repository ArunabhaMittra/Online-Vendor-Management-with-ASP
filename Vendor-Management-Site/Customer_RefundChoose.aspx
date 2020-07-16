<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerLogin.Master" AutoEventWireup="true" CodeBehind="Customer_RefundChoose.aspx.cs" Inherits="Vendor_Management_Site.Customer_RefundChoose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td class="auto-style14">&nbsp;&nbsp; Manage Your Bookings Here :&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;Sort by Button&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Choose your Service ID :&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="49px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="OnGenInvoiceClick" Text="Generate Invoice" />
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>
