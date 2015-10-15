<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCarInput.aspx.cs" Inherits="Project1.frmCarInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Project1Style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #form1 
        {
            height: 1529px;
            width: 936px;
        }

    </style>
</head>
<body style="height: 1456px; width: 1090px">
   <div class = "jumbotron">

    </div>
     <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         
    <div class =".prettyForm" style="height: 568px; width: 856px; margin-left: 40px;">
   
       <h1>Welcome to Car Builder!</h1> 
        <div class="contactInfo" style="width: 824px; height: 370px;">
        <h3>&nbsp;</h3>
            <h3>Please enter your contact information below</h3>
            :<br />
        <br />
    
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Full Name*:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFullName" runat="server" Width="242px"></asp:TextBox>
&nbsp;
        <br />
        <br />
        <asp:Label ID="lblAddressLine1" runat="server" Text="Address Line 1"></asp:Label>
&nbsp;<asp:TextBox ID="txtAddressln1" runat="server" Width="242px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblAddressline1info" runat="server" Width="242px" Font-Size="Smaller" Text="Street Address, PO Box, company name"></asp:Label>
            <br />
        <br />
        <asp:Label ID="lblAddressLine2" runat="server" Text="Address Line 2"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="242px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCity"  runat="server" Width="242px" style="margin-left: 0px"></asp:TextBox>
            &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblAddressLine2Info" runat="server" Width="242px" Font-Size="Smaller" Text="Apartment, suite, unit, building, floor, etc. " Height="16px"></asp:Label>
            <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtState"  runat="server" Width="236px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblZipCode" runat="server" Text="Zip Code"></asp:Label>
            &nbsp;
        &nbsp;<asp:TextBox ID="txtZipCode" runat="server" Height="16px" Width="124px"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCountry" runat="server" Height="16px" Width="236px" style="margin-left: 9px"></asp:TextBox>
        <asp:Label ID="lblPhoneNumber" position="absolute" runat="server" Text="Phone Number"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtphoneNumber"  runat="server" Height="16px" Width="242px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;
        <br />
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        <br />
        <br />
&nbsp;</div>
        <div class ="twoBoxes" style="width: 336px; height: 112px; margin-top: 0px; position:absolute; top: 864px; left: 70px;">
         <h4 style="height: 18px; width: 240px">Perferred Method of Contact *</h4>
         <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="43px" Width="296px" position="absolute">
            <asp:ListItem>I want the dealership to contact me</asp:ListItem>
            <asp:ListItem>I will visit the dealership</asp:ListItem>
        </asp:RadioButtonList>
        <div class ="twoBoxes" style="width: 336px; height: 112px; position:relative; margin-top: 44px; top: -133px; left: 409px;" draggable="true">
         <h4>To Narrow search, select options below</h4>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" Width="330px" RepeatDirection="Horizontal" Height="30px">
            <asp:ListItem>Financing</asp:ListItem>
            <asp:ListItem Selected="True">Leasing</asp:ListItem>
        </asp:RadioButtonList>
            </div>
     
       </div>
     
        <br />
      
    
      
        <br />
        </div>
        
         <br />
         <div class ="errorMessage">
                      <asp:Label ID="lblErrorLabel" runat="server" position="absolute"></asp:Label>

         </div>
         <br />
        <br />
        <div class="sidePanel" position="absolute">
            <p style="width: 64px">Make</p>
            
        <asp:DropDownList ID="ddlMakes" runat="server" Height="22px" Width="141px" DataTextField="Make" AutoPostBack="True" OnSelectedIndexChanged="ddlMakes_SelectedIndexChanged">
            <asp:ListItem>Audi</asp:ListItem>
            <asp:ListItem>BMW</asp:ListItem>
            <asp:ListItem>Dodge</asp:ListItem>
        </asp:DropDownList>
            <br />
            
            <p>Model  </p>
            <asp:DropDownList ID="ddlModels" runat="server" Height="22px" Width="141px" DataTextField="Model" AutoPostBack="True" OnSelectedIndexChanged="ddlModels_SelectedIndexChanged">
            </asp:DropDownList> 
              <br />
              <br />
            <br />
              <asp:Label ID="lblColor" runat="server" Text="Color"></asp:Label>
              <br />
              <asp:TextBox ID="txtColorPicker" runat="server" TextMode="Color" Height="16px" Width="141px" OnTextChanged="TextBox9_TextChanged1"></asp:TextBox>
          
    
             <asp:GridView ID="gvCarResults" runat="server" style="position:absolute; top: 1040px; left: 251px; height: 375px; width: 611px; margin-top: 0px;" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnSelectedIndexChanged="gvCarResults_SelectedIndexChanged" OnRowCommand="gvCarResults_RowCommand" ShowFooter="True" >
         <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
             <asp:BoundField HeaderText="Package Description" DataField="PackageDescription" />
             <asp:BoundField HeaderText="Price" DataField="Price" />
              <asp:ButtonField ButtonType="Button" HeaderText="" Text="Add to Cart" CommandName="AddToCart"  />
             <asp:CommandField ShowDeleteButton="True" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />

            </asp:GridView>

            <br />
            <br />
            <asp:Button ID="btnGo" runat="server" Text="Go" Width="159px" OnClick="btnGo_Click" />

            

            </div>
         <asp:Button ID="Button1" runat="server" Text="Button" Visible="False" />
    </form>
</body>
</html>
