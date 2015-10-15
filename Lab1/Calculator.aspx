<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Lab1.CalculatorWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 278px;
            width: 131px;
        }
        .calcButton {
            width: 21px;
        }
    </style>
</head>
<body style="height: 413px; width: 355px">
    <form id="form1" runat="server">


        <p style="width: 103px">  
            <input class="button-4 calcButton" type="button" value="7" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '7'"/>
            <input class="button-4 calcButton" type="button" value="8" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '8'"/>
            <input class="button-4 calcButton" type="button" value="9" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '9'"/>
            <input class="button-4 calcButton" type="button" value=" / " onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '/'"/>
            </p>   
               <input class="button-4 calcButton" type="button" value="4" onclick="document.getElementById().value = this.form.disp.value; this.form.disp.value += '4'"/>
               <input class="button-4 calcButton" type="button" value="5" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '5'"/>
               <input class="button-4 calcButton" type="button" value="6" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '6'"/>
                 <input class="button-4 calcButton" type="button" value=" * " onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '*'"/>
        <p style="height: 31px; width: 117px">
            <input class="button-4 calcButton" type="button" value="1" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '1'"/>
           <input class="button-4 calcButton" type="button" value="2" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '2'"/>
           <input class="button-4 calcButton" type="button" value="3" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '3'"/>
           <input class="button-4 calcButton" type="button" value=" - " onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '-'"/>
        </p>
         &nbsp;<input class="button-4 calcButton" type="button" value="0" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '0'"/>
            <input class="button-4 calcButton" type="button" value=" . " onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '.'"/>
            <input class="button-4 calcButton" type="button" value=" = " onclick="this.form.hdisp.value = this.form.disp.value; calc(this.form)"/>
           <input class="button-4 calcButton" type="button" value="+" onclick="this.form.hdisp.value = this.form.disp.value; this.form.disp.value += '+'"/>

    </form>



</body>
</html>
