<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmStudentRegistration.aspx.cs" Inherits="Project2.frmStudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                  <asp:Label ID="Label5" runat="server" Text="StudentID: "></asp:Label>
            <asp:TextBox ID="txtstudentID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox ID="txtstudentName" runat="server" OnTextChanged="txtstudentName_TextChanged"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Field of Study"></asp:Label>
            <asp:TextBox ID="txtFieldOfStudy" runat="server"></asp:TextBox>
            <br />
              <br />
                  <asp:Button ID="btnAddNewStudent" runat="server" OnClick="btnAddNewStudent_Click" Text="Add New Student" />
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
