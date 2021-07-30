<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ClickCafe.ADMIN.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet"  href="../css/Style2.css" type="text/css" />

    <style type="text/css">
        body {
           margin:0;
}

        .hero-image {
  background-image: url("/foodimg/b8.jpg");
  background-color: #cccccc;
  height: 600px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  top:0;
}

        .hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: black;
}

#login {
    width: 350px;
    height: 230px;
    border: 5px solid black;
    margin-top:150px;
   
   
}

.lbl {
    text-align: right;
    color: black;
    font-size: 20px;
    font-weight:bold;
    height: 35px;
}

.txt {
    border: 2px solid black;
    width: 200px;
    height: 24px;
    background-color: transparent;
    color: black;
}

    .txt:hover {
        border: solid 1px #000;
        width: 200px;
        height: 24px;
        background-color: #CC9D9D;
    }

.btn {
    height: 30px;
    border: 2px solid black;
    background-color: #CC9D9D;
    font-size: medium;
    color: Maroon;
    top: 0px;
    left: 0px;
}

    .btn:hover {
        background-color: transparent;
        height: 30px;
        font-size: medium;
        border: solid 1px #000;
        color: #ff0000;
    }

#cont {
    width: 940px;
    height: 550px;
    border: 5px solid black;
    margin: 0 auto;
    margin-top: 10px;
}

#menu {
    width: 940px;
    height: 35px;
    border: 2px solid  #000;
    margin: 0 auto;
    margin-top: 10px;
}

.btnn {
    height: 35px;
    font-size: medium;
    font-weight:bold;
    width: 133px;
    background-color: transparent;
    color: #fff;
    border: solid 2px #fff;
}

    .btnn:hover {
        height: 35px;
        background-color: #FFFFDF;
        width: 133px;
        color: Maroon;
    }

.tbl {
    width: 100%;
    height:100px;
    
}

.tblhead {
    height: 30px;
    text-align: center;
    font-size: larger;
    font-weight:bolder;
    color: #000;
    padding: 6px;
    border-bottom: double 3px #000;
}

        .auto-style1 {
            height: 428px;
        }

        .auto-style2 {
            width: 394px;
            height: 297px;
        }

        .auto-style3 {
            width: 100%;
            height: 230px;
            font-weight: bolder;
        }

        .auto-style4 {
            font-weight: bold;
        }

        .auto-style5 {
            height: 30px;
           
        }

@media-phone(max-width: 1048px){
    .tbl{
        font-size:20px;
        height:auto;
         margin:0px;
        
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


</head>
<body>
    <form id="form1" runat="server">

        <div class="hero-image">
             <div class="hero-text">
        <div class="page">
             <section class="auto-style1">
         <div class="container">
         </div>
            <div id="login" class="auto-style2">
                <table class="auto-style3" align="center">
                    <tr>
                        <td colspan="2" 
                            style="border-bottom:5px solid black; color:black; font-weight: 1000; text-align: center;" 
                            align="middle" class="auto-style5">
                            ADMIN LOGIN</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            UserName :&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Password :&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtpass" runat="server"  TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            <strong>
                            <asp:Button ID="Button1" runat="server"  Text="Login" BackColor="white" OnClick="Button1_Click" CssClass="auto-style4"/>
                            </strong>
                        </td>
                    </tr>
                  
                        
               
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            <asp:Label ID="lbl" runat="server" ForeColor="#ff0000"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
          </div>
        </section>
    
    </div></div>
            </div>
        
    </form>
</body>
</html>
