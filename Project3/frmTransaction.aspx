<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmTransaction.aspx.cs" Inherits="Project3.frmTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .floating-box {
            width: 462px;
        }
        #form1 {
            height: 535px;
            width: 1093px;
        }
    </style>
    <link href="CreditCardStyle.css" rel="stylesheet" />

</head>
<body style="height: 536px; width: 1052px;">
    <form id="form1" runat="server">
    <div style="height: 0px">
    
        <br />
    <h1>Payment Transaction</h1>
    </div>
        <div class="content" style="height: 396px; width: 1050px">
            <div class ="floating-box">
        <asp:Label ID="Label1" runat="server" Text="Name on Card"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtNameOnCard" runat="server" Width="366px"></asp:TextBox>
    </div>
            <div class="floating-box">

            </div>


  
        <div class="floating-box">
            <asp:Label ID="lblcardNumber" runat="server" Text="Card Number"></asp:Label>
            &nbsp; &nbsp;<asp:TextBox ID="txtCardNumber" runat="server" Width="251px" TextMode="Number" MaxLength="15"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCSV" runat="server" Width="97px" Font-Names="Century Gothic" OnTextChanged="txtCSV_TextChanged" MaxLength="2">Security Code</asp:TextBox>
        </div>
            <div class="floating-box">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="lblCity" runat="server" Text="Expires:"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlExpMonth" runat="server" Height="16px" Width="83px" Font-Names="Century Gothic">
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
                <asp:DropDownList ID="ddlExpYear" runat="server" Width="96px" Font-Names="Century Gothic">
                    <asp:ListItem Value="2015"></asp:ListItem>
                    <asp:ListItem Value="2016"></asp:ListItem>
                    <asp:ListItem Value="2017"></asp:ListItem>
                    <asp:ListItem Value="2018"></asp:ListItem>
                    <asp:ListItem Value="2019"></asp:ListItem>
                    <asp:ListItem Value="2020"></asp:ListItem>
                    <asp:ListItem Value="2021"></asp:ListItem>
                    <asp:ListItem Value="2022"></asp:ListItem>
                    <asp:ListItem Value="2023"></asp:ListItem>
                    <asp:ListItem Value="2024"></asp:ListItem>
                    <asp:ListItem Value="2025"></asp:ListItem>
                    <asp:ListItem Value="2026"></asp:ListItem>
                    <asp:ListItem Value="2027"></asp:ListItem>
                    <asp:ListItem Value="2028"></asp:ListItem>
                    <asp:ListItem Value="2029"></asp:ListItem>
                    <asp:ListItem Value="2030"></asp:ListItem>
                    <asp:ListItem Value="2031"></asp:ListItem>
                    <asp:ListItem Value="2032"></asp:ListItem>
                    <asp:ListItem Value="2033"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
        </div>
             <div class="floating-box">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label2" runat="server" Text="Card Type"></asp:Label>
&nbsp;
                 <asp:DropDownList ID="ddlCardType" runat="server" Font-Names="Century Gothic" Height="16px" Width="113px">
                     <asp:ListItem Value="VISA"></asp:ListItem>
                     <asp:ListItem Value="Master Card"></asp:ListItem>
                     <asp:ListItem Value="American Express"></asp:ListItem>
                     <asp:ListItem Value="Discover"></asp:ListItem>
                 </asp:DropDownList>

        </div>


        <div class="floating-box">

            <asp:Label ID="Label3" runat="server" Text="Transaction Amount"></asp:Label>
&nbsp;<asp:TextBox ID="txtAmount" runat="server" Width="148px" TextMode="Number"></asp:TextBox>

        </div>





            <asp:Button ID="btnSubmit" runat="server" Font-Names="Century Gothic" Font-Size="Large" Height="49px" Text="Submit" Width="131px" OnClick="btnSubmit_Click" />





            <br />
           

            <div class="floating-box">
                 <asp:Label ID="lblTransactionError" runat="server"></asp:Label>


    </form>
</body>
</html>
