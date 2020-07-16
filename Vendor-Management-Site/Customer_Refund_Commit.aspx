<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerLogin.Master" AutoEventWireup="true" CodeBehind="Customer_Refund_Commit.aspx.cs" Inherits="Vendor_Management_Site.Customer_Refund_Commit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 574px;
        }
        .auto-style16 {
            height: 19px;
            width: 574px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td class="auto-style15">Set your Refund Details :-</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Service ID :
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td rowspan="7">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Refund Reason :
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">Refund Date :
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Service Status :
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Confirm Refund" OnClick="OnConfirmClick" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Cancel Refund" OnClick="OnCancelClick" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server"></asp:Label>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
