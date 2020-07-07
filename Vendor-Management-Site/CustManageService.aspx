<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerLogin.Master" AutoEventWireup="true" CodeBehind="CustManageService.aspx.cs" Inherits="Vendor_Management_Site.CustManageService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 403px;
        }
    </style>
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
    </table>
&nbsp;
</asp:Content>
