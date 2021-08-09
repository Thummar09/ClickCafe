<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="ClickCafe.ADMIN.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 902px;
        }
        .style3
        {
            width: 161px;
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
            <td class="tblhead" align="center"><br /><b>
                VIEW PRODUCT -
                <asp:Label ID="lblcnt" runat="server"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style2">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#999999" BorderWidth="1px" 
                                CellPadding="3" Gridlines="Vertical"
                                DataKeyNames="pid" 
                                onrowdeleting="GridView1_RowDeleting" Width="900px"  height="80px" AllowPaging="True" 
                                onpageindexchanging="GridView1_PageIndexChanging" 
                                onrowediting="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
                                onrowcancelingedit="GridView1_RowCancelingEdit1" OnRowDataBound="GridView1_RowDataBound" BorderStyle="None">
                                
                               
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns> 
                                    
                                
                                     

                                    <asp:BoundField DataField="PName" HeaderText="Product Name" 
                                        SortExpression="pname" >
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="price" >
                                    
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Detail" HeaderText="Detail" 
                                        SortExpression="detail" >
                                    <ItemStyle Width="140px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Cname" HeaderText="Category" 
                                        SortExpression="cname" >
                                    <ItemStyle Width="200px" />
                                    </asp:BoundField>
                                    
                                    <asp:CommandField ShowEditButton="True" >
                                    <ItemStyle Width="100px" />
                                    </asp:CommandField>
                                    <asp:CommandField ShowDeleteButton="True" >
                                    <ItemStyle Width="100px" />
                                    </asp:CommandField>
                                      
                                </Columns>
     <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />  
     <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />  
     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />  
     <RowStyle BackColor="#EEEEEE" ForeColor="Black" />  
     <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />  
     <SortedAscendingCellStyle BackColor="#F1F1F1" />  
     <SortedAscendingHeaderStyle BackColor="#0000A9" />  
     <SortedDescendingCellStyle BackColor="#CAC9C9" />  
     <SortedDescendingHeaderStyle BackColor="#000065" />  
                            </asp:GridView>
                            
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>


</asp:Content>
