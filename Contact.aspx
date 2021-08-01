<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ClickCafe.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <style type="text/css">
        .tbl{
            margin-right:10px;
        }
    </style>

    <h3>Contact Details</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">Phone:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>

    <table class="tbl">
        <tr>
            <td></td>
            <td><h3 class="auto-style1">Please leave a Message</h3></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">Your name : </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="192px"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">Email : </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="194px"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">Message : </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="98px" TextMode="MultiLine" Width="247px"></asp:TextBox></td>
            <td></td>

        </tr>
        <tr>
            <td></td>
            
            <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td></td>

        </tr>
    </table>
</asp:Content>
