<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="Project3.frmHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 345px;
            width: 773px;
        }
    </style>
    <link href="CreditCardStyle.css" rel="stylesheet" />
</head>
<body style="height: 433px">
    <form id="form1" runat="server">
   
    

        <br />
        <h1>Home Page</h1>
        <div class="content" style="height: 319px; width: 765px">
            <ul style="height: 66px; width: 656px">
            <asp:LinkButton ID="lnkbtnAddNewCard" runat="server" OnClick="btnNewCard_Click" Height="32px" Width="184px">Add New Card</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnNewTransaction" runat="server" Height="32px" OnClick="btnNewTransaction_Click">New Transaction</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnViewAllTransactions" runat="server" Height="32px" OnClick="lnkbtnViewAllTransactions_Click" Width="283px">View All Transactions</asp:LinkButton>

            </ul>
            <div class="box">

                <asp:Button class ID="btnNewTransaction" runat="server" Font-Names="Century Gothic" Height="36px" OnClick="btnNewTransaction_Click" Text="New Transaction" Width="201px" />

            </div>

        <div class="floating-box">
        <asp:Button ID="btnNewCard" runat="server" Text="Add New card" Width="202px" Font-Names="Century Gothic" OnClick="btnNewCard_Click" Height="37px" style="text-align: center" />
         </div>
  
      
        <div class="floating-box">
        <asp:Button ID="Button1" runat="server" Text="View All Transactions" Font-Names="Century Gothic" Height="37px" style="text-align: center" OnClick="Button1_Click" />
            </div>
            <br />
            </div>
    </form>
</body>
</html>
