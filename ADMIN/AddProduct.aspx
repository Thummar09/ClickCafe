<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/ADMIN/Home.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="ClickCafe.ADMIN.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body{
            background-image:url("/foodimg/b39.jpg");
           background-color:aquamarine;
            height:600px;
  background-position:center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  top:0;
        }
        
        .style2
        {
            width: 664px;
        }
        .style3
        {
            width: 186px;
        }
        .style4
        {
            text-align: right;
            color: #fff;
            font-size: medium;
            height: 35px;
            width: 186px;
        }
        .tbl{
            margin-left:250px;
            
            margin-top:-50px;
        }
        .lbl{
            font-weight:bolder;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color:darkgreen;
            
        }
        .tblhead{
             font-weight:bolder;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size:20px;
            color:#006400;
        }
       
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="tbl">
        <tr>
            <td class="tblhead" align="center" >
                <br />
               <br />
                
   <b> ADD NEW PRODUCT</b></td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Category :&nbsp;
                        </td>
                        <td>
                            <asp:DropDownList ID="drpcate" runat="server" 
                                ForeColor="#006400" AppendDataBoundItems="True"   
AutoPostBack="True" DataTextField="Cname" DataValueField="PID">
                                <asp:ListItem>SELECT FOOD</asp:ListItem>
                                <asp:ListItem>ITALIAN</asp:ListItem>
                                <asp:ListItem>MAXICAN</asp:ListItem>
                                <asp:ListItem>STARTERS</asp:ListItem>
                                <asp:ListItem>INDIAN</asp:ListItem>
                                <asp:ListItem>LEBANESE</asp:ListItem>
                                 <asp:ListItem>DESSERT</asp:ListItem>
                                 <asp:ListItem>BEVERAGES</asp:ListItem>
                                <asp:ListItem>BREAKFAST</asp:ListItem>
                                <asp:ListItem>CHIENESE</asp:ListItem>
                                
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Name :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtname" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Price :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtprice" runat="server" CssClass="txt"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="txtprice" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Picture :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server"  />
                       
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   ControlToValidate="FileUpload1" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Detail :&nbsp; 
                        </td>
                        <td>
                            <asp:TextBox ID="txtdetail" runat="server"  Height="45px" 
                                TextMode="MultiLine" Width="200px"></asp:TextBox>
                       
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="txtdetail" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                             <asp:Label ID="lblmsg" runat="server" ForeColor="Green"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button7" runat="server" class="btn btn-success" Text="ADD PRODUCT" OnClick="Button7_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                           
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
       
    </table>
</asp:Content>
