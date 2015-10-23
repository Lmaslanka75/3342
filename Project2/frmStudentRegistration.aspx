<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmStudentRegistration.aspx.cs" Inherits="Project2.frmStudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="PrettyCourseRegistration.css" rel="stylesheet" />
    <style type="text/css">
        .academicInfo {
            width: 958px;
            height: 145px;
        }
        .personalInfo {
            height: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Student Registration</h1>
        </div>

         <div class="personalInfo">
                  <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
              <br />
        </div>

        <div class="academicInfo">
             <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

        </div>



    

       



    </form>
</body>
</html>
