<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ClickCafe.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <style type="text/css">
        body{
            
             margin: 30px;
	padding: 0;
	
        }
        body:before{

        }
        .hero-image {
  background-image: url("/foodimg/b25.jpg");
 
  height: 600px;
  background-position:center;
  background-repeat: no-repeat;

  background-size:cover;
  position: relative;
  top:0;
  margin:0;
  padding:0;
  -webkit-filter: blur(6px);
	-moz-filter: blur(0px);
	filter: blur(0px);
  
}
  .hero-image .content{
   
  
}

        .form{
            
        }
        .tbl{
             margin-left:250px;
               background-color:rgb(0,0,0,.5);
               width:625px;
             
               

               
        
        }
        .tblhead{
            margin-left:400px;
        }
        .lbl{
            font-size: 15px;
            font-weight:500;
            font-family:Sylfaen;
            
    
        }
        .txt{

        }
        .txt:hover{

        }
        .text{
            font-size:15px;
        }

@media (max-width: 1048px){
    .tbl{
        font-size:20px;
        height:auto;
        
    }
    .hero-image{
        margin-right:0px;
    }
    
}

@media(max-width: 909px){
    .tbl{
        font-size:20px;
          height:auto;
        
    }
    .hero-image{
        margin-right:0px;
    }
}

    </style>

    <div class="hero-image">
        <div class="content">
         <div class="hero-text">
    <div class="form">
       
       <table class="tbl">
            
           <tr>
               <td  class="tblhead" align="center">
                  <b class="text-decoration-none"> REGISTRATION FORM</b></td>
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
                               &nbsp;&nbsp;&nbsp; 
                           </td>
                             
                           <td>
                               <asp:TextBox  ID="txtfname" runat="server" placeholder="First Name" Cssclass="form-control form-control-lg" type="text"></asp:TextBox>
                           <td>    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtfname" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True" style="margin-left: -70px;"></asp:RequiredFieldValidator>
                           
                              
                                     </td>
                           <td>
                               <asp:TextBox ID="txtlname" runat="server" placeholder="Last Name" Cssclass="form-control form-control-lg" type="text" style="margin-left: -100px;" Width="349px"></asp:TextBox>
                                 </td>
                           <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="txtlname" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True" style="margin-left: -40px;"></asp:RequiredFieldValidator>
                         </td>
                           <td>
                               &nbsp;</td>
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
                               &nbsp;</td>
                           <td>
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
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                             &nbsp;&nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtmobile" runat="server" placeholder="Mobile NO." Cssclass="form-control form-control-lg" type="text" ></asp:TextBox></td>
                            <td>   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   ControlToValidate="txtmobile" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True" style="margin-left: -70px;"></asp:RequiredFieldValidator></td>
                             <td>   </td>
                            <td>
                               
                               <asp:RadioButton ID="rdomale" runat="server" ForeColor="Black" Text="Male" 
                                   GroupName="a" Checked="True" style="margin-left: -180px;" />
                               <asp:RadioButton ID="rdofemale" runat="server" ForeColor="Black" 
                                   Text="Female" GroupName="a" style="margin-left: -120px;" />
                              
                           </td>
                           <td>
                               &nbsp;</td>
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
                               <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                   ControlToValidate="txtmobile" ErrorMessage="invalid mobile" ForeColor="Red" 
                                   MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True" 
                                   Type="Double" style="margin-left: 0px;"></asp:RangeValidator>
                          </td>
                           <td>
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
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                              &nbsp;&nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtadd" runat="server" placeholder="Address" Cssclass="form-control form-control-lg" type="text"></asp:TextBox>
                                  </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                   ControlToValidate="txtadd" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True" style="margin-left: -70px;"></asp:RequiredFieldValidator>
                         </td>
                           <td>
                               <asp:TextBox ID="txtcity" runat="server" placeholder="City" Cssclass="form-control form-control-lg" type="text" style="margin-left: -100px;" Width="349px"></asp:TextBox>
                                </td>
                           <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                   ControlToValidate="txtcity" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True" style="margin-left: -40px;"></asp:RequiredFieldValidator>
                          </td>
                           <td>
                               &nbsp;</td>
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
                               &nbsp;</td>
                           <td>
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
                       <tr> <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                              &nbsp;&nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtpincode" runat="server" placeholder="Pincode" Cssclass="form-control form-control-lg" type="text"></asp:TextBox>
                              
                                  </td>
                           <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                   ControlToValidate="txtpincode" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True" style="margin-left: -70px;"></asp:RequiredFieldValidator></td>
                           <td>
                               &nbsp;
                        </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
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
                               <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                   ControlToValidate="txtpincode" ErrorMessage="invalid pincode" 
                                   ForeColor="Red" MaximumValue="999999" MinimumValue="100000" 
                                   SetFocusOnError="True" Type="Double"></asp:RangeValidator></td>
                           <td>
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
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                              &nbsp;&nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtemail" runat="server" OnTextChanged="showBox" AutoPostBack="True" placeholder="EmailID" Cssclass="form-control form-control-lg" type="text"></asp:TextBox></td>
                              <td> 
                                 <asp:Button ID="btnverify" runat="server" Text="Get OTP" OnClick="btnverify_Click" CausesValidation="False" /></td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True" style="margin-left: -140px;"></asp:RequiredFieldValidator></td>
                           <td>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Red" 
                                   SetFocusOnError="True" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="margin-left: -90px;"></asp:RegularExpressionValidator>
                             </td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       
                       <tr>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               <asp:TextBox ID="txtverify" runat="server" Visible="False" OnTextChanged="verifyOTP" AutoPostBack="true" placeholder="Enter verification code" Cssclass="form-control form-control-lg" type="text"></asp:TextBox>
                                <asp:Label ID="otplbl" runat="server" Visible="false"></asp:Label>
                            </td>
                            <td>
                                </td>
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
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                              &nbsp;&nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="Password" Cssclass="form-control form-control-lg" type="text"></asp:TextBox>
                                  </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                   ControlToValidate="txtpassword" ErrorMessage="??" ForeColor="Red" 
                                   SetFocusOnError="True" style="margin-left: -70px;"></asp:RequiredFieldValidator>
                        </td>
                           <td>
                               <asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password" placeholder="Confirm Password" Cssclass="form-control form-control-lg" type="text" style="margin-left: -100px;" Width="349px"></asp:TextBox>
                                 </td>
                           <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                   ControlToCompare="txtpassword" ControlToValidate="txtconfirmpass" 
                                   ErrorMessage="not same" ForeColor="Red" style="margin-left: -80px;"></asp:CompareValidator>
                        </td>
                           <td>
                               &nbsp;</td>
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
                               &nbsp;</td>
                             <td>
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
                              
                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Green"></asp:Label>
                                   <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                       
                           </td>
                           <td>
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
                               <strong>
                               <asp:Button ID="btnreg" runat="server" Height="35px" font-weight="1000" Font-Size="Medium" BackColor="yellowgreen"
                                   Text="Register" Width="120px" OnClientClick="returnValidateEmail();" OnClick="Btnreg_Click" >
                                   </asp:Button>
                               </strong>
                           </td>
                           <td>
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
                           <td  style="color: #345ed2 " >
                               Already Register, Please login
                               <asp:LinkButton ID="LinkButton1" runat="server" 
                                   Font-Strikeout="False" Font-Underline="True" ForeColor="Red" 
                                   PostBackUrl="~/Login.aspx" CausesValidation="false">HERE</asp:LinkButton>
                           </td>
                           <td>
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
                   </table>
               </td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
       </table>

     </div></div></div>
       </div>
</asp:Content>

