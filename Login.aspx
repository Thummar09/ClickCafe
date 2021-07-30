<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ClickCafe.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />

     <style type="text/css">
        body{
            box-sizing: border-box;
        }
         .hero-image {
  background-image: url("/foodimg/b24.jpg");
  background-color: white;
  height: 500px;
  background-position: left;
  background-repeat: no-repeat;
  background-size: 500px;
  position: relative;
  top:0;
}
 /* .hero-image .content{
      position: absolute; /* Position the background text */
  bottom: 0; /* At the bottom. Use top:0 to append it to the top */
  background: rgb(1, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #000000; /* Grey text */
  width: 100%; /* Full width */
  padding: 20px; /* Some padding */
  
*/

        #regi{
          
             
        }
  
        .tbl{
             margin-left:650px;
             margin-top:70px;
             border:2px solid black;
               
        
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
        .icon {
  padding: 8px;
  background: black;
  color: white;
  min-width: 50px;
  text-align: center;
  height:30px;
  
}

    </style>

    <div class="hero-image">
        <div class="content">
         <div class="hero-text">
    
   
    <div id="regi">
       <table class="tbl">
           
           <tr>
               <td class="tblhead" align="center">
                  <b>LOGIN FORM</b></td>
           </tr><br />
           <tr>
               <td>
                   <table align="center" class="style1">
                       <tr>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                                &nbsp;
                           </td>
                           <td>
                                <i class="fa fa-envelope"></i>
                               <asp:TextBox ID="txtemail" runat="server" placeholder="Email"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                               &nbsp;&nbsp;
                           </td>
                           <td>
                                <i class="fa fa-key"></i>
                               <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="txtpassword" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               <asp:Button ID="btnlogin" runat="server"  Height="35px" 
                                   Text="Login" Width="160px" OnClick="btnlogin_Click"/>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                   ForeColor="red" PostBackUrl="~/FPassword.aspx">Forgot Password ?</asp:LinkButton>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                            </tr><br />
                        <tr>
                             <td>
                               &nbsp;</td>
                             <td>
                               &nbsp;</td>
                           <td>
                                
                               <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                   Font-Strikeout="False" Font-Underline="True" ForeColor="blue" 
                                   PostBackUrl="~/Registration.aspx">New User?</asp:LinkButton></td>
                                                   <td>
                               &nbsp;</td>
                                                         <td>
                               &nbsp;</td>
                        </tr>
                   </table>
               </td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
       </table></div>
            </div> </div></div>

</asp:Content>
