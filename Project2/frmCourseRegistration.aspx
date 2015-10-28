<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCourseRegistration.aspx.cs" Inherits="Project2.frmCourseRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  
    <style type="text/css">
        .register {
            width: 808px;
        }
        #form1 {
            height: 564px;
            width: 1143px;
        }
    </style>
     <link href="PrettyCourseRegistration.css" rel="stylesheet" />
</head>
   
<body>
    <form id="form1" runat="server">
        <div class ="header">
            <h1>Course Registration System</h1>

        
         <div class ="sidePanel">
                <asp:Button ID="btnStudent" runat="server" Text="Student" OnClick="btnStudent_Click" Width="97px" /><br /><br />
                <asp:Button ID="btnCreateCourse" runat="server" Text="Add Course" OnClick="Button7_Click" /> <br /><br />
                <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" Width="96px" /> 
                <br />
                <br />
                <asp:Button ID="btnTutition" runat="server" Text="Tutition" OnClick="Button3_Click" Width="96px" />   
                <br /><br />
                  
             </div>

            </div>

    <div class ="top">
    
        <br />
    
        <asp:Label ID="lblStudentName" runat="server" Text="Student Name:" position="absolute"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;<asp:DropDownList ID="ddlStudentName" runat="server" Height="16px" Width="150px" OnSelectedIndexChanged="ddlStudentName_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" Width="149px" position ="absolute" OnClick="btnSearch_Click" Height="23px"/>
        &nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAddNewStudent" runat="server" Text="Add New Student" position="absolute" OnClick="btnAddNewStudent_Click" style="margin-left: 11px" />
        <br /><br /><br />

        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <br />
        <asp:Label ID="lblSearchErrorOutput" runat="server"></asp:Label>
        <br />
    </div>

        
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
                
               
         
        
    </form>
</body>
</html>
