<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCourseRegistration.aspx.cs" Inherits="Project2.frmCourseRegistration" %>

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
    
        <br />
    
        <asp:Label ID="lblStudentID" runat="server" Text="Student ID:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtstudentID" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="lblStudentName" runat="server" Text="Student Name:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtstudentName" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFieldOfStudy" runat="server" Text="Field of Study"></asp:Label>: <asp:TextBox ID="txtFieldOfStudy" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br/>
        <br />
        <br />
        <asp:Button ID="btnAddNewStudent" runat="server" Text="New Student" position="absolute" OnClick="btnAddNewStudent_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSearch" runat="server" Text="Search" Width="107px" position ="absolute" OnClick="btnSearch_Click"/>
        <br />
        <asp:Label ID="lblSearchErrorOutput" runat="server"></asp:Label>
        <br />
        <br />
    </div>

        
         <div class ="sidePanel">
            <asp:Panel ID="Panel1" runat="server" Height="215px" Width="75px">
                <asp:Button ID="btnStudent" runat="server" Text="Student" OnClick="btnStudent_Click" /><br /><br />
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
                    <asp:DropDownList ID="ddlCourseTitle" runat="server" OnSelectedIndexChanged="ddlCourseTitle_SelectedIndexChanged" AutoPostBack="True">
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
