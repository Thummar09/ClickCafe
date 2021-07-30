<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="ClickCafe.ADMIN.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tbl" align="center">
    <tr>
        <td class="tblhead" "><br />
          <b>  VIEW REPORT</b></td>
    </tr>
    <tr>
        <td class="tblhead" ><br />
            Select User :
            <asp:DropDownList ID="drpemail" runat="server" >
            </asp:DropDownList>
            <asp:Button ID="btnselect" runat="server"  Text="Select" />
&nbsp;</td>
    </tr>
     <tr>
        <td class="tblhead">
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" GridLines="Both" DataKeyNames="OID" 
                                 Width="938px" >
                              
                                
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
                    <asp:BoundField DataField="Pname" HeaderText="ProductName" 
                                        SortExpression="PName" >
                    <ItemStyle Width="180px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="price" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Qnt" HeaderText="Qnt" 
                                        SortExpression="qnt" >
                     <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Total_Price" HeaderText="totalprice" 
                                        SortExpression="totalprice" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                </Columns>
               
            </asp:GridView>
        </td>
    </tr>
</table>

</asp:Content>
