<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="ClickCafe.ADMIN.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tbl" align="center">
        <tr>
            <td class="tblhead"><br />
               <b> PAYMENT REPORT</b> </td>
        </tr>
        <tr>
            <td class="tblhead"><br />
                Select User :
                <asp:DropDownList ID="drpemail" runat="server" >
                </asp:DropDownList>
                <asp:Button ID="btnselect" runat="server" Text="Select" />
            </td>
        </tr>
        <tr>
            <td class="tblhead">
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvgrid" runat="server" AutoGenerateColumns="False" 
                                 BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="1" ForeColor="Black" GridLines="Both" 
                                 Width="938px" >
                    <AlternatingRowStyle BackColor="Salmon" />
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" 
                                        SortExpression="Email" >
                            <ItemStyle Width="250px" />
                        </asp:BoundField>
                        
                       
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" >
                            <ItemStyle Width="100px" />
                            </asp:BoundField>
                         <asp:BoundField DataField="Bank_Name" HeaderText="Bank_Name" SortExpression="Bank_Name" >
                        <ItemStyle Width="100px" />
                            </asp:BoundField>  
                        <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" >
                          <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CCV" HeaderText="CCV" SortExpression="CCV" >
                       <ItemStyle Width="100px" />
                            </asp:BoundField>
                                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" >
                   <ItemStyle Width="100px" />
                            </asp:BoundField>
                                    </Columns>
                    
                </asp:GridView>
                 </td>
        </tr>
    </table>

</asp:Content>
