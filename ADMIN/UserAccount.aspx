<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="ClickCafe.ADMIN.UserAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .style2
        {
            width: 931px;
        }
        .style3
        {
            width: 40px;
        }
        .tbl{
            margin-top:-100px;
            margin-left:150px;
        }
        .tbl tblhead{
            margin-left:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="tbl" align="center">
        <tr>
            <td class="tblhead" align="center" style="font-weight:bolder; font-size:larger;"><br /><b>
                USER ACCOUNT -
                <asp:Label ID="lbl" runat="server"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style2" align="center">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                 BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" ForeColor="#333333" GridLines="Both" Width="921px" >
                               
                                <AlternatingRowStyle BackColor="white" />
                                <Columns>
                                       <asp:BoundField DataField="FName" HeaderText="FirstName" />
                                    <asp:BoundField DataField="LName" HeaderText="LastName" />
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" />
                                    <asp:BoundField DataField="City" HeaderText="City" />
                                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                                </Columns>
                               <EditRowStyle BackColor="#2461BF" />  
     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />  
     <RowStyle BackColor="#EFF3FB" />  
     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
     <SortedAscendingCellStyle BackColor="#F5F7FB" />  
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
     <SortedDescendingCellStyle BackColor="#E9EBEF" />  
     <SortedDescendingHeaderStyle BackColor="#4870BE" />  
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
