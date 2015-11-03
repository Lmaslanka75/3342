<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmViewAccounts.aspx.cs" Inherits="Project3.frmViewAccounts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CreditCardStyle.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            margin-top: 27px;
        }
    </style>
</head>
<body>
    <br/>
    <form id="form1" runat="server">
        <br/>
        <h1>Credit Card Accounts</h1>

       
        <div class="content">
             <ul> 
                 <asp:LinkButton ID="lnkbtnHome" runat="server" Height="30px" OnClick="lnkbtnHome_Click" Width="75px">Home</asp:LinkButton>
                 <asp:LinkButton ID="lnkbtnViewAllAccounts" runat="server" Height="30px" OnClick="lnkbtnViewAllAccounts_Click">View All Accounts</asp:LinkButton>
             </ul>
            <br />
            <br />
            <asp:GridView ID="gvAccounts" runat="server" Width="885px" OnRowEditing="gvAccounts_RowEditing" OnRowCancelingEdit="gvAccounts_RowCancelingEdit" OnRowUpdating="gvAccounts_RowUpdating" AutoGenerateColumns="False" OnSelectedIndexChanged="gvAccounts_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 46px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="AccountID" HeaderText="AccountID" ReadOnly="True">
                    <ControlStyle Width="75px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="CardNumber" HeaderText="Card Number" />
                    <asp:BoundField DataField="ExpMonth" HeaderText="Expiration Month" />
                    <asp:BoundField DataField="ExpYear" HeaderText="Expiration Year" />
                    <asp:BoundField DataField="CSV" HeaderText="CSV" />
                </Columns>
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
