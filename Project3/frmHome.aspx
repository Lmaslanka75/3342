<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="Project3.frmHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 345px;
            width: 786px;
        }
    </style>
    <link href="CreditCardStyle.css" rel="stylesheet" />
</head>
<body style="height: 433px">
    <form id="form1" runat="server">
   
    

        <br />
        <h1>Home Page</h1>
        <div class="content" style="height: 294px; width: 776px">
        <div class="floating-box">
        <asp:Button ID="btnNewCard" runat="server" Text="Apply for a new card" Width="202px" Font-Names="Century Gothic" OnClick="btnNewCard_Click" Height="37px" style="text-align: center" />
         </div>
  
      
        <div class="floating-box">
        <asp:Button ID="Button1" runat="server" Text="View All Transactions" Font-Names="Century Gothic" Height="37px" style="text-align: center" OnClick="Button1_Click" />
            </div>
            </div>
    </form>
</body>
</html>
