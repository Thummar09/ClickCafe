<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FPassword.aspx.cs" Inherits="ClickCafe.FPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    </br>
    <style type="text/css">
        body{

        }
         .hero-image {
  background-image: url("/foodimg/b23.jpg");
  background-color: white;
  height: 500px;
  background-position: left;
  background-repeat: no-repeat;
  background-size: 500px;
  position: relative;
  top:0;
}
  .hero-text {
  
}

        #regi{
           
             
        }
        .tbl{
            background-color:antiquewhite;
             margin-left:650px;
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
        .icon {
  padding: 8px;
  background: black;
  color: white;
  min-width: 50px;
  text-align: center;
  height:30px;
  font-size:100px;
}


    </style>

    <div class="hero-image">
         <div class="hero-text">
        


    <div id="regi">
       <table class="tbl">
           <tr>
               <td bgcolor="#FFFFCC" class="tblhead" align="center">
                  <b> MEMBER LOGIN FORM</b></td>
           </tr><br />
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
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
                               <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtEmail" ErrorMessage="??" ForeColor="Red" 
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
                                   Text="Get Password" Width="160px" OnClick="btnlogin_Click"/>
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
                                   ForeColor="Red" PostBackUrl="~/Login.aspx">Login Now !</asp:LinkButton>
                           </td>
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
       </table>
</div>
     </div></div>  


</asp:Content>
