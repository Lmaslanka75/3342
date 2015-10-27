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
</head>
<link href="PrettyCourseRegistration.css" rel="stylesheet" />
<body style="height: 782px">
    <form id="form1" runat="server">
    <h1>Add A New Course
    </h1>
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
            <asp:Label ID="Label8" runat="server" Text="Number Of Seats Available"></asp:Label>
            <asp:TextBox ID="txtNumberOfSeatsAvailable" runat="server"></asp:TextBox>
            <br />
            </div>
            <div class="floating-box">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAddCourse" runat="server" position ="absolute" Text="Add Course" Width="169px" Height="36px"  />
             </div>
        </div>
       
            <div style="height: 212px; width: 1156px">
            <asp:GridView ID="GridView1" runat="server" Height="136px" Width="248px"></asp:GridView>
            </div>
            </form>
</body>
</html>
