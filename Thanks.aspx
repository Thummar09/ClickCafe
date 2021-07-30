<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.Master" AutoEventWireup="true" CodeBehind="Thanks.aspx.cs" Inherits="ClickCafe.Thanks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style type="text/css">
        .style1
        {
            width: 100%;
            height: 154px;
        }
    </style>
     <table class="style1">
        <tr>
            <td style="color: #AABBCC; font-weight: bold; font-size: xx-large">
                <br />
                Thank you for Shopping...</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server"  
                    PostBackUrl="~/Home.aspx" Text="Continew Shopping" />
            </td>
        </tr>
    </table>

</asp:Content>
