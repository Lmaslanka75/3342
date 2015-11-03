<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="Project3.frmHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 464px;
            width: 1035px;
        }
    </style>
    <link href="CreditCardStyle.css" rel="stylesheet" />
</head>
<body style="height: 433px">
    <form id="form1" runat="server">
   
    

        <br />
        <h1>Home Page</h1>
        <div class="content" style="height: 319px; width: 983px">
            <br />
            <ul style="height: 128px; width: 941px; margin-left: 11px;">
            <asp:LinkButton ID="lnkbtnAddNewCard" runat="server" OnClick="btnNewCard_Click" Height="32px" Width="184px">Add New Card</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnNewTransaction" runat="server" Height="32px" OnClick="btnNewTransaction_Click">New Transaction</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnViewAllTransactions" runat="server" Height="32px" OnClick="lnkbtnViewAllTransactions_Click" Width="283px">View All Transactions</asp:LinkButton>

                <asp:LinkButton ID="lnkbtnViewAllAccounts" runat="server" Height="32px" OnClick="lnkbtnViewAllAccounts_Click">View All Accounts</asp:LinkButton>

            </ul>
            </div>
    </form>
</body>
</html>
