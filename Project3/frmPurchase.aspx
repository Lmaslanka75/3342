<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPurchase.aspx.cs" Inherits="Project3.frmPurchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 623px;
        }
    </style>
    <link href="CreditCardStyle.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 616px; width: 1294px;">
    
        <br />
        <br />
        <br />
        <br />
        <div class="floating-box">
            <asp:Label ID="lbl" runat="server" Text="First Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" runat="server" Width="169px"></asp:TextBox>
        </div>
            <div class="floating-box">
            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="173px"></asp:TextBox>
        </div>
           
        <br />
        <br />
        <br />
           
        <br/> 
        <div style="height: 224px; width: 329px">
        <div class="floating-box">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" Width="218px"></asp:TextBox>
        </div>
            <div class="floating-box">
            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCity" runat="server" style="margin-left: 0px" Width="225px"></asp:TextBox>
        </div>

            <div class="floating-box">
            <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtState" runat="server" Height="16px" Width="226px"></asp:TextBox>
        </div>
        <div class="floating-box">
            <asp:Label ID="lblZip" runat="server" Text="Zipcode"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="227px"></asp:TextBox>
        </div>
            </div>
           
    </form>
</body>
</html>
