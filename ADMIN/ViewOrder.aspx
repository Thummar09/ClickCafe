<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.Master" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="ClickCafe.ADMIN.ViewOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl" align="center"> 
        <tr>
            <td class="tblhead" ><br /><b>
                VIEW ORDER</td></b>
        </tr>
        <tr>
            <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="WhiteSmoke" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" GridLines="Both" DataKeyNames="oid" 
                                 Width="938px"> 
                                 
                                <AlternatingRowStyle BackColor="Salmon" />
                                <Columns>
                                  <asp:BoundField DataField="Email" HeaderText="Email" 
                                        SortExpression="email" >
                                    <ItemStyle Width="250px" />
                                    </asp:BoundField>
                                <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                <asp:Image ID="imgg" runat="server" ImageUrl='<%#Eval("Picture") %>' Height="40px" Width="40px" />
                                </ItemTemplate>
                                    <ItemStyle Width="40px" />
                                    
                                </asp:TemplateField>


                                    <asp:BoundField DataField="PName" HeaderText="ProductName" 
                                        SortExpression="pname" >
                                    <ItemStyle Width="180px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="price" >
                                  <ItemStyle Width="100px" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="Qnt" HeaderText="Qnt" 
                                        SortExpression="Qnt" >
                                        <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                         <asp:BoundField DataField="Total_Price" HeaderText="TotalPrice" 
                                        SortExpression="totalprice" >
                                             <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                         <asp:TemplateField HeaderText="Dispatch">
                                <ItemTemplate>
                                <asp:LinkButton Text="Dispatch" runat="server" ID="lnkclear" CommandArgument='<%#Eval("oid") %>' ForeColor="Blue"></asp:LinkButton>
                                </ItemTemplate>
                                                 <ItemStyle Width="100px" />
                                </asp:TemplateField>
                                </Columns>
                               
                            </asp:GridView>
                        </td>
        </tr>
    </table>
</asp:Content>
