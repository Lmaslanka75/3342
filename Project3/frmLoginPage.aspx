<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLoginPage.aspx.cs" Inherits="Project3.frmLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 563px;
            width: 737px;
        }
    </style>
    <link href="CreditCardStyle.css" rel="stylesheet" />
</head>
<body style="height: 399px; width: 530px">
    <form id="frmLogin" runat="server">
       
         <br />
         <h1>Login</h1>
        <div class="content" style="height: 237px; width: 522px">
        <div class="floating-box">

            <asp:Label ID="Label1" runat="server" Text="User Name: "></asp:Label>
&nbsp;<asp:TextBox ID="txtUserName" runat="server" Width="223px"></asp:TextBox>
            *</div> 


         <div class="floating-box">

        &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
&nbsp;
             <asp:TextBox ID="txtPassword" runat="server" Width="218px" TextMode="Password"></asp:TextBox>
             *</div>

            <div class="box">
            <asp:Button ID="btnLogin" runat="server" Height="33px" Text="Login" Width="100px" Font-Names="Century Gothic" OnClick="btnLogin_Click" />
         
                </div>
              <br />
            <br />
              <br />
            <div class="box">
                 <asp:Button ID="btnNewUser" runat="server" Height="33px" style="margin-top: 0px" Text="New User" Width="102px" Font-Names="Century Gothic" />
                </div>
               
          
        </div>

    </form>
</body>
</html>
