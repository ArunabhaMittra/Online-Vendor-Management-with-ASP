<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerLogin.Master" AutoEventWireup="true" CodeBehind="Customer_Refund.aspx.cs" Inherits="Vendor_Management_Site.Customer_Refund" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
         Initiate a Cancellation or Refund Here :- (Please Note : If a service is in PENDING status then 90% of the fee will be refunded)</p>
    <p>
         Search by Category :&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Computer</asp:ListItem>
            <asp:ListItem>Electronics</asp:ListItem>
            <asp:ListItem>Nurse</asp:ListItem>
            <asp:ListItem>Plumber</asp:ListItem>
            <asp:ListItem>Cleaning</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="OnSelectClick" Text="Select" />
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <table align="center" cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td>Vendors Under :
                <asp:Label ID="Label4" runat="server"></asp:Label>
                &nbsp;category&nbsp; </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Enter the Service ID here :&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="42px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="OnSubmit" />
            </td>
        </tr>
    </table>


    </asp:Panel>
</asp:Content>
