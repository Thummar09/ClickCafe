<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.Master" AutoEventWireup="true" CodeBehind="NewOrder.aspx.cs" Inherits="ClickCafe.ADMIN.NewOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .tblhead{
            margin-left:100px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   

    <table class="tbl">
        <tr>
            <td class="tblhead" >
              <br /> <b> NEW ORDER -
                <asp:Label ID="lbll" runat="server">
                </asp:Label></b><br />
            </td>
        </tr>
        <tr>
            <td><br />
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false"
                                  BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" GridLines="Both" DataKeyNames="oid" 
                                 Width="938px">
                    <AlternatingRowStyle BackColor="Salmon" />
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="email" >
                                         <ItemStyle Width="250px" />
                                        </asp:BoundField>
                                    <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <asp:Image ID="imgg" runat="server" ImageUrl='<%#Eval("Picture") %>' Height="40px" Width="40px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="PName" HeaderText="Product Name" SortExpression="pname" >
                                        <ItemStyle Width="180px" />
                                        </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="price" ></asp:BoundField >
                                    <asp:BoundField DataField="Qnt" HeaderText="Qnt" 
                                        SortExpression="qnt" />
                                     <asp:BoundField DataField="Total_Price" HeaderText="Totalprice" 
                                        SortExpression="totalprice" />
                        <asp:TemplateField HeaderText="Dispatch">
                        <ItemTemplate>
                            <asp:LinkButton Text="Dispatch" runat="server" ID="lnkclear" CommandArgument='<%#Eval("oid") %>' ForeColor="Blue"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
             </td>
        </tr>
    </table>

</asp:Content>
