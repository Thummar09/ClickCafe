<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="ClickCafe.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<table class="tbl" align="center">
        <tr>
            <td class="tblhead" colspan="3"  style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">
                           <br /><b> MY CART -
                            <asp:Label ID="lbl" runat="server"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4">
                            &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4" colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                                  BackColor="white" BorderColor="#999999" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" DataKeyNames="oid" 
                                 Width="938px" onrowdeleting="GridView2_RowDeleting" 
                                onrowupdating="GridView2_RowUpdating" EmptyDataText="No Item in your shopping cart">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Picture" DataImageUrlFormatString="&quot;~\Images\{0}&quot;" HeaderText="Image" ReadOnly="True">
                        </asp:ImageField>
                        <asp:BoundField HeaderText="ProductName" DataField="PName" />
                        <asp:BoundField HeaderText="Price" DataField="Price" />
                         <asp:BoundField HeaderText="Qnt" DataField="Qnt" />
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# DOuble.Parse(Eval("Price").ToString())*Int32.Parse(Eval("Qnt").ToString()) %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                         <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                     
                </asp:GridView>

                            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" 
                                Text="Continew Shopping" />
                        &nbsp;<asp:Button ID="btnchckout" runat="server" PostBackUrl="~/Payment.aspx"  Text="CheckOut" />
            </td>
            <td>
                            &nbsp;</td>
        </tr>
    </table>

</asp:Content>
