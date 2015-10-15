<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HomePage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 398px;
            width: 898px;
        }
    </style>
</head>
<body style="height: 231px; width: 817px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <h1>Lauren Maslanka's CIS 3342 Home Page</h1>
        <h3>Table of Contents:</h3>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View DB Demo" />
        <p>
            <asp:Button ID="Button2" runat="server" Text="Lab 1" OnClick="Button2_Click" />
        </p>
        <asp:Button ID="Button3" runat="server" Text="Project 1" OnClick="Button3_Click" />
        <p>
            <asp:Button ID="Button4" runat="server" Text="Project 2" />
        </p>
        <asp:Button ID="Button5" runat="server" Text="Project 3 Web Services" />
    </form>
</body>
</html>
