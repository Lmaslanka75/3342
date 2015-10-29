<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="Project3.frmHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 377px;
        }
    </style>
</head>
<body style="height: 433px">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <h1>Home Page
        </h1>
        <br />
        <asp:Button ID="btnNewCard" runat="server" Text="Apply for a new card" />
    
    </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="View All Transactions" />
    </form>
</body>
</html>
