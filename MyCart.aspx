<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="ClickCafe.MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
       
       
         
        </style>
    <table class="tbl" align="center">
        <tr>
            <td class="tblhead" align="center">
                <br />
                <b>MY CART -
                            <asp:Label ID="lblc" runat="server"></asp:Label></b>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>

            <td class="style4" colspan="2">
    <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataKeyNames="PID" DataSourceID="SqlDataSource2"
        EmptyDataText="No Item in your shopping cart" Width="758px"
         onrowcommand="g1_RowCommand">
        <Columns>
            
            <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
            <asp:TemplateField HeaderText="Image">
                 <ItemTemplate>
                                <asp:Image ID="imgg" runat="server" ImageUrl='<%#"/"+ Eval("Picture") %>' Height="40px" Width="40px" />
                            </ItemTemplate>
            </asp:TemplateField>
           
            <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" ReadOnly="True" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" ReadOnly="True" />
             <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
            
            <asp:TemplateField HeaderText="Total">
                <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("Price").ToString())*Int32.Parse(Eval("Qnt").ToString()) %>'></asp:Label>
                            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>

<EditItemTemplate>

<asp:ImageButton ID="imgbtnUpdate" CommandName="Update" runat="server" ImageUrl="~/foodimg/update.png" ToolTip="Update" Height="30px" Width="30px" />

<asp:ImageButton ID="imgbtnCancel" runat="server" CommandName="Cancel" ImageUrl="~/foodimg/Cancel.png" ToolTip="Cancel" Height="30px" Width="30px" />

</EditItemTemplate>

<ItemTemplate>

<asp:ImageButton ID="imgbtnEdit" CommandName="Edit" runat="server" ImageUrl="~/foodimg/edit.png" ToolTip="Edit" Height="30px" Width="30px" />

<asp:ImageButton ID="imgbtnDelete" CommandName="Delete" Text="Edit" runat="server" ImageUrl="~/foodimg/delete.png" ToolTip="Delete" Height="30px" Width="30px" />

</ItemTemplate>
           
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ClickCafeConnectionString %>" SelectCommand="getCart" 
         DeleteCommand="dltcart" 
         UpdateCommand="updatecart" SelectCommandType="StoredProcedure">
        
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="id" Type="String" />
        </SelectParameters>
      

<DeleteParameters>

<asp:Parameter Name="CID" />

</DeleteParameters>
                <UpdateParameters>

        <asp:Parameter Name="Qnt" />

     <asp:Parameter Name="CID"/>

    </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
  
                <br />

                <asp:Button ID="btnsp" runat="server" PostBackUrl="~/Home.aspx"
                    Text="Continew Shopping" />
                &nbsp;<asp:Button ID="btnco" runat="server" PostBackUrl="~/Payment.aspx" Text="CheckOut" OnClick="btnco_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblgt" runat="server" Text="GrandTotal : " Visible="True"></asp:Label>
        </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
               

</asp:Content>
