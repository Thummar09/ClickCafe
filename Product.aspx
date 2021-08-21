﻿<%@ Page Title="Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ClickCafe.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 388px;
            height: 255px;
        }
        .style4
        {
            width: 304px;
        }
        .style6
        {
            width: 36px;
        }
        .style10
        {
            width: 70px;
        }
        .style14
        {
            width: 291px;
            height: 55px;
        }
        .style15
        {
            width: 75px;
        }
        .style16
        {
            width: 210px;
        }
    </style>

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                    RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table class="style2">
                            <tr>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style4">
                                    <asp:Image ID="Image1" runat="server" Height="231px" 
                                        ImageUrl='<%#Eval("Picture") %>' Width="300px" />
                                </td>
                                <td class="style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="color: indianred" class="style10">
                                    &nbsp;</td>
                                <td class="style4" style="color: indianred">
                                    <table class="style14">
                                        <tr>
                                            <td class="style16">
                                                Name :
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("PName") %>'></asp:Label>
                                            </td>
                                            <td rowspan="2" valign="middle"> 
                                                <table class="style15">
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" Text="Add"
                                                                height="30px" Width="70px" CommandArgument='<%#Eval("PID") %>'/>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style16">
                                                Price&nbsp; :
                                                <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                            </td>
                                            
                                        </tr>
                                        
                                        <td class="style16">
                                                Detail&nbsp; :
                                                <asp:Label ID="lbldetail" runat="server" Text='<%#Eval("Detail") %>'></asp:Label>
                                            </td>
                                        <td>&nbsp;</td>
                                    </table>
                                   
                                </td>
                                <td class="style6" style="color: #FFFF66">
                                    &nbsp;</td>
                                
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
