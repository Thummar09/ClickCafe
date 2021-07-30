<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="ClickCafe.Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .hero-image {
  
  background-color: #26bbbb;
  height: 500px;
  
  top:0;
}
  .hero-text {
  
}
        #regi{
           
             
        }
        .tbl{
             margin-left:300px;
             margin-top:70px;
               border: 2px solid black;
        
        }
        .tblhead{
              border: 2px solid black;

        }
        .lbl{
            font-size: 15px;
            font-weight:400;
    
        }
        .txt{

        }
        .txt:hover{

        }
    </style>
    <div class="hero-image">
         <div class="hero-text">
      <div id="regi">
<table class="tbl">
        <tr>
            <td  background-color: #FFFFCC; font-weight: bold; font-size: medium" 
                class="tblhead" align="center">
                CHANGE PASSWORD</td>
        </tr>

        <tr>
            <td>
                &nbsp;</td>
        </tr>
     
                    
        <tr>
            <td>
                <table align="center" class="style1">
                    
                    <tr>
                        <td class="lbl">
                            Current Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtcurpass" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtcurpass" ErrorMessage="??" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                           New Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtnewpass" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtnewpass" ErrorMessage="??" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Confirm Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtcpass" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtcpass" ControlToValidate="txtnewpass" ErrorMessage="??" 
                                ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td><br />
                            <asp:Button ID="Button1" runat="server"  Text="Change Password" OnClick="Button1_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
