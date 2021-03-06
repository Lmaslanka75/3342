﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmNewCard.aspx.cs" Inherits="Project3.frmNewCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CreditCardStyle.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            margin-top: 15px;
            height: 828px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 
    
        <br />
    <h1>Add New Credit Card</h1>
   
        <div class="content" style="height: 677px; width: 958px; margin-top: 0px;">
           
            <br />
            <br />
           
            <div class ="floating-box">
            <asp:Label ID="Label1" runat="server" Text="Name on Card"></asp:Label>&nbsp;
            <asp:TextBox ID="txtNameOnCard" runat="server" Width="366px" Height="24px"></asp:TextBox>
            </div>

            <div class="floating-box">
                &nbsp;
                <asp:Label ID="lblcardNumber" runat="server" Text="Card Number"></asp:Label>
                &nbsp; &nbsp;<asp:TextBox ID="txtCardNumber" runat="server" Width="251px" TextMode="Number" MaxLength="16" Height="24px"></asp:TextBox>
                &nbsp;
            </div>

            <div class="floating-box">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                <asp:Label ID="lblCity" runat="server" Text="Expires"></asp:Label>
                &nbsp;
                <asp:DropDownList ID="ddlExpMonth" runat="server" Height="24px" Width="83px" Font-Names="Century Gothic">
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
                </asp:DropDownList>&nbsp;&nbsp;

                <asp:DropDownList ID="ddlExpYear" runat="server" Width="96px" Font-Names="Century Gothic" Height="24px">
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
                &nbsp;&nbsp;Security Code
                <asp:TextBox ID="txtCSV" runat="server" Height="24px" Width="70px"></asp:TextBox>
            </div>

             <div class="floating-box">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label2" runat="server" Text="Card Type"></asp:Label> &nbsp;
                 <asp:DropDownList ID="ddlCardType" runat="server" Font-Names="Century Gothic" Height="24px" Width="113px">
                     <asp:ListItem Value="VISA"></asp:ListItem>
                     <asp:ListItem Value="Master Card"></asp:ListItem>
                     <asp:ListItem Value="American Express"></asp:ListItem>
                     <asp:ListItem Value="Discover"></asp:ListItem>
                 </asp:DropDownList>
             </div>
            
            <div class="floating-box">
            </div>
            
            <div class ="floating-box">
                <asp:Button ID="btnAddCard" runat="server" Font-Names="Century Gothic" Font-Size="Large" Height="49px" Text="Add Card" Width="131px" OnClick="btnSubmit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Font-Names="Century Gothic" Font-Size="Large" Height="49px" Text="Cancel" Width="131px" OnClick="btnCancel_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHome" runat="server" Font-Names="Century Gothic" Font-Size="Large" Height="49px" Text="Home" Width="131px" OnClick="btnHome_Click" />
            </div>

            <div class="floating-box">
                 <asp:Label ID="lblTransactionError" runat="server"></asp:Label>
           </div>
            
        </div>

    </form>
</body>
</html>
