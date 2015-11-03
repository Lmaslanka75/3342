<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="Project3.frmHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 921px;
            width: 1205px;
        }
    </style>
    <link href="CreditCardStyle.css" rel="stylesheet" />
</head>
<body style="height: 951px">
    <form id="form1" runat="server">
   
    

        <br />
        <h1>Home Page</h1>
        <div class="content" style="height: 783px; width: 1185px">
            <br />
            <ul style="height: 115px; width: 1152px; margin-left: 11px;">
            <asp:LinkButton ID="lnkbtnAddNewCard" runat="server" OnClick="btnNewCard_Click" Height="32px" Width="184px">Add New Card</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnNewTransaction" runat="server" Height="32px" OnClick="btnNewTransaction_Click">New Transaction</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnViewAllTransactions" runat="server" Height="32px" OnClick="lnkbtnViewAllTransactions_Click" Width="283px">View All Transactions</asp:LinkButton>

                <asp:LinkButton ID="lnkbtnViewAllAccounts" runat="server" Height="32px" OnClick="lnkbtnViewAllAccounts_Click">View All Accounts</asp:LinkButton>

            </ul>
            <asp:GridView ID="gvTransactions" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="245px" Width="1148px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            </div>
    </form>
</body>
</html>
