<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmStudentRegistration.aspx.cs" Inherits="Project2.frmStudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
   
    <style type="text/css">
        .academicInfo {
            width: 958px;
            height: 145px;
        }
        .personalInfo {
            height: 132px;
        }

      
        #form1 {
            height: 697px;
        }

      
        #frmStudentRegistration {
            height: 667px;
        }

      
    </style>
       <link href="PrettyCourseRegistration.css" rel="stylesheet" />
</head>
<body>
    <form id="frmStudentRegistration" runat="server">
  
        <h1>Student Registration</h1>



        <div class="gridview">
        <asp:GridView ID="gvNewStudent" runat="server" Height="224px" Width="786px">
            <Columns>
                <asp:BoundField HeaderText="StudentID" />
                <asp:BoundField HeaderText="Student Name" />
                <asp:BoundField HeaderText="Field Of Study" />
            </Columns>
        </asp:GridView>
            </div>




       

        <div class ="sidePanel">
            
                <asp:Button ID="btnStudent" runat="server" Text="Student" OnClick="btnStudent_Click" Width="99px" /><br /><br />
                <asp:Button ID="btnCreateCourse" runat="server" Text="Add Course" OnClick="Button7_Click" /> <br /><br />
                <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" Width="98px" /> 
                <br />
                <br />
                <asp:Button ID="btnTutition" runat="server" Text="Tutition" OnClick="Button3_Click" Width="99px" />   
                <br /><br />
                
             </div>

         <div class="top">
                  <br />
             <h3>Create New Account:</h3>
                  <asp:Label ID="Label5" runat="server" Text="StudentID: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtstudentID" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Name: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtstudentName" runat="server" OnTextChanged="txtstudentName_TextChanged"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Field of Study"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtFieldOfStudy" runat="server" Height="16px"></asp:TextBox>
                  <br />
            <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button3" runat="server" Height="26px" OnClick="Button3_Click1" style="margin-top: 0px" Text="View Roster" Width="139px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="btnAddNewStudent" runat="server" OnClick="btnAddNewStudent_Click" Text="Add Student" Width="139px" />
              <br />
        </div>




        <br /><br /><br /><br /><br /><br />



    

       



    </form>
</body>
</html>
