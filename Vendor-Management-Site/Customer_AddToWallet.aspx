<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerLogin.Master" AutoEventWireup="true" CodeBehind="Customer_AddToWallet.aspx.cs" Inherits="Vendor_Management_Site.Customer_AddToWallet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 428px;
        }
        .auto-style15 {
            width: 428px;
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td colspan="2">Enter your card details :</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Card-Holder Name :
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td rowspan="7">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Account Number :
                <asp:TextBox ID="TextBox1" runat="server" Width="96px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Card Type :
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>visa</asp:ListItem>
                    <asp:ListItem>Master Card</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Expiry Date :
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">CVV Number :
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="41px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">PIN Number :
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="68px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Enter the Amount :
                <asp:TextBox ID="TextBox5" runat="server" Width="103px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="OnSubmit" Text="Submit" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
    </table>
</asp:Content>
