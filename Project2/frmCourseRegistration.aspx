﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCourseRegistration.aspx.cs" Inherits="Project2.frmCourseRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  
    <style type="text/css">
        .register {
            width: 686px;
        }
        #form1 {
            height: 706px;
            width: 1007px;
        }
    </style>
</head>
    <link href="PrettyCourseRegistration.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div class ="header">
            <h1>Course Registration System</h1>
            </div>

    <div class ="top">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="lblStudentID" runat="server" Text="Student ID:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtstudentID" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblSchool" runat="server" Text="School"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEnter" runat="server" Text="Enter" Width="107px" position ="absolute" OnClick="btnEnter_Click"/>
        <br />
        <br />
        <asp:Label ID="lblStudentName" runat="server" Text="Student Name:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtstudentName" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFieldOfStudy" runat="server" Text="Field of Study"></asp:Label>
        &nbsp;<asp:TextBox ID="txtFieldOfStudy" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAddNewStudent" runat="server" Text="New Student" position="absolute" OnClick="btnAddNewStudent_Click" />
        <br />
    </div>

        
         <div class ="sidePanel">
            <asp:Panel ID="Panel1" runat="server" Height="215px" Width="75px">
                <asp:Button ID="Button1" runat="server" Text="Button" /><br /><br />
                <asp:Button ID="Button7" runat="server" Text="Button" OnClick="Button7_Click" /> <br /><br />
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" /> 
                <br />
                <br />
                <asp:Button ID="btnTutition" runat="server" Text="Tutition" OnClick="Button3_Click" Width="56px" />   
                <br /><br />
                <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
               
                <div class="register">
                    <asp:Label ID="lblSemestere" runat="server" Text="Semester"></asp:Label>
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="lblCourseTitle" runat="server" Text="Course Title"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblSection" runat="server" Text="Section"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlSemester" runat="server" OnSelectedIndexChanged="ddlSemester_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Fall</asp:ListItem>
                        <asp:ListItem>Spring</asp:ListItem>
                        <asp:ListItem>Summer I</asp:ListItem>
                        <asp:ListItem>Summer II</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlDepartment" runat="server" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:DropDownList ID="ddlCourseTitle" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlSection" runat="server" Height="16px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                
               
            </asp:Panel>
             </div>
        
        <div class ="gridview">

            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

         &nbsp;&nbsp;&nbsp;

         </div>

    </form>
</body>
</html>