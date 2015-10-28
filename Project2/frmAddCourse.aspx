<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAddCourse.aspx.cs" Inherits="Project2.frmAddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .floating-box {
            width: 291px;
        }
        #form1 {
            height: 752px;
        }
    </style>
    <link href="PrettyCourseRegistration.css" rel="stylesheet" />
</head>

<body style="height: 994px">
    <form id="form1" runat="server">
    <h1>Add A New Course
    </h1>

         <div class ="sidePanel">
                <asp:Button ID="btnStudent" runat="server" Text="Student" OnClick="btnStudent_Click" style="margin-right: 4px" Width="97px" /><br /><br />
                <asp:Button ID="btnCreateCourse" runat="server" Text="Add Course" OnClick="Button7_Click" /> <br /><br />
                <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" Width="99px" /> 
                <br />
                <br />
                <asp:Button ID="btnTutition" runat="server" Text="Tutition" OnClick="Button3_Click" Width="98px" />   
                <br /><br />
                 
             </div>

        <div class ="inputArea">
             <br />
            <div class ="floating-box">
            <asp:Label ID="lblCRN" runat="server" Text="CRN"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCRN" runat="server"></asp:TextBox>
            </div>
            
            <div class="floating-box">
            <asp:Label ID="lblCourseTitle" runat="server" Text="Course Title"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCourseTitle" runat="server"></asp:TextBox>
            </div>
            <div class ="floating-box">
            <asp:Label ID="lblDepartmentID" runat="server" Text="DepartmentID"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtDepartmentID" runat="server"></asp:TextBox>
            <br />
                </div>
             <div class ="floating-box">
            <asp:Label ID="lblSemester" runat="server" Text="Semester"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSemester" runat="server"></asp:TextBox>
            </div>
           

             <div class ="floating-box">
            <asp:Label ID="lblSection" runat="server" Text="Section"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSection" runat="server"></asp:TextBox>
            <br />
                 </div>
             <div class ="floating-box">
            <asp:Label ID="lblProfessor" runat="server" Text="Professor"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtProfessor" runat="server"></asp:TextBox>
            <br />
                 </div>

             <div class ="floating-box">
            <asp:Label ID="Label5" runat="server" Text="Day Code"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDayCode" runat="server"></asp:TextBox>
            <br />
             </div>
             <div class ="floating-box">
            <asp:Label ID="Label6" runat="server" Text="Time Code"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTimeCode" runat="server"></asp:TextBox>
            <br />
                 </div>
             <div class ="floating-box">
            <asp:Label ID="Label7" runat="server" Text="Credit Hours"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCreditHours" runat="server"></asp:TextBox>
            <br />
            </div>

            
             <div class ="floating-box">
            <asp:Label ID="Label3" runat="server" Text="Maximum Seats"></asp:Label>
            <asp:TextBox ID="txtMaximumSeats" runat="server"></asp:TextBox>
            <br />
            </div>
            <div class ="floating-box">
            <asp:Label ID="Label8" runat="server" Text="# Seats Available"></asp:Label>
            <asp:TextBox ID="txtNumberOfSeatsAvailable" runat="server"></asp:TextBox>
            <br />
            </div>
            <div class="floating-box">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAddCourse" runat="server" position ="absolute" Text="Add Course" Width="169px" Height="36px" OnClick="btnAddCourse_Click" OnDataBinding="Page_Load"  />
             </div>
        </div>
       
            <div class="gridview" style="height: 344px; width: 1001px; left: 93px;">
               <h2 style="width: 1021px; height: 38px;">View All Courses</h2>
                <br />
            <asp:GridView ID="gvCourses" runat="server" Height="192px" Width="935px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnRowDeleting="gvCourses_RowDeleting" OnSelectedIndexChanged="gvCourses_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
            </form>
</body>
</html>
