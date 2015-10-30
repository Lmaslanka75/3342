<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmTransaction.aspx.cs" Inherits="Project3.frmTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .floating-box {
            width: 462px;
        }
    </style>
</head>
<body style="height: 536px">
    <form id="form1" runat="server">
    <div style="height: 0px">
    
    </div>
        <div style="height: 224px; width: 465px">
        <div class="floating-box">
            <asp:Label ID="lblcardNumber" runat="server" Text="Card Number"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="txtCardNumber" runat="server" Width="251px"></asp:TextBox>
            <asp:TextBox ID="txtCSV" runat="server" Width="85px">Security Code</asp:TextBox>
        </div>
            <div class="floating-box">
                &nbsp;<asp:Label ID="lblCity" runat="server" Text="Expires:"></asp:Label>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlExpMonth" runat="server" Height="16px" Width="83px">
                    <asp:ListItem Value="01"></asp:ListItem>
                    <asp:ListItem Value="02"></asp:ListItem>
                    <asp:ListItem Value="03"></asp:ListItem>
                    <asp:ListItem Value="04"></asp:ListItem>
                    <asp:ListItem Value="05"></asp:ListItem>
                    <asp:ListItem Value="06"></asp:ListItem>
                    <asp:ListItem Value="07"></asp:ListItem>
                    <asp:ListItem Value="08"></asp:ListItem>
                    <asp:ListItem Value="09"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                    <asp:ListItem Value="11"></asp:ListItem>
                    <asp:ListItem Value="12"></asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:DropDownList ID="ddlExpYear" runat="server" Width="96px">
                </asp:DropDownList>
        </div>

            <div class="floating-box">
            <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtState" runat="server" Height="16px" Width="218px"></asp:TextBox>
        </div>
        <div class="floating-box">
            <asp:Label ID="lblZip" runat="server" Text="Zipcode"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="218px"></asp:TextBox>
        </div>
            </div>






    </form>
</body>
</html>
