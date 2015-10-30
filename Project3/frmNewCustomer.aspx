<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmNewCustomer.aspx.cs" Inherits="Project3.frmPurchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 523px;
            width: 1038px;
        }
    </style>
    <link href="CreditCardStyle.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    
    
        <br />
        <br />
        <h1>Background Information</h1>
        <br />
        <br />
        <div class ="content">
        <div class="floating-box">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server" Width="386px"></asp:TextBox>
        </div>
           
    
           
            <div class="floating-box">
                &nbsp;&nbsp;
            </div>
       
        <div class="floating-box">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" Width="218px" style="margin-left: 0px"></asp:TextBox>
        </div>
            <div class="floating-box">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCity" runat="server" style="margin-left: 0px" Width="225px"></asp:TextBox>
        </div>

            <div class="floating-box">
            &nbsp;<asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtState" runat="server" Height="16px" Width="226px"></asp:TextBox>
        </div>
        <div class="floating-box">
            <asp:Label ID="lblZip" runat="server" Text="Zipcode"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="231px"></asp:TextBox>
        </div>
            <div class ="floating-box"></div>
         <div class="floating-box">

         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnContinue" runat="server" Height="40px" OnClick="btnContinue_Click" Text="Continue" Width="156px" Font-Names="Century Gothic" Font-Size="Medium" />
             </div>
         </div>
          
            <br />
            <br />
            <br />
         
          
    </form>
</body>
</html>
