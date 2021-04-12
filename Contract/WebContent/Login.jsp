 <script>
function CheckInput()
{

if(f1.userid.value=="")
 {
 
   alert("Please Enter Login Id");
   f1.userid.focus();
   
   
   return false;
 }else if(f1.pwd.value=="")
 {
 
   alert("Please Enter Password");
      f1.pwd.focus();
   return false;
 }
 
 
  




   
}

function setfocus()
{
  
f1.userid.focus();


}

function Clear()
{
  
f1.userid.value="";
f1.pwd.value="";


f1.userid.focus();


}






</script>
<STYLE type=text/css>
{
	FONT-SIZE: x-small
}
</STYLE>
<html>
<head>
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<LINK href="css/simple.css" type=text/css type=text/css rel=stylesheet>
</head>
<body bgcolor="#CCCCCC" text="#000000" onload="setfocus()">
<p>
<jsp:include page="Header.html" />

<form name=f1 action="Login" method=post>
  <table width="100%" border="0" bordercolor="#FFFFCC" bgcolor="#FFFFCC" align="center" height="22">
    <tr> 
      <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="3"><b>LOGIN</b></font></td>
    </tr>
  </table>
  <p>&nbsp;</p><table id=Table_01 height=100 cellspacing=0 cellpadding=0 width=317 border=0 align=center>
    <tbody> 
    <tr> 
    <td align=center width="107"> 
        <div align="left"><b><font color="#3399FF">Login Name</font></b></div>
    </td>
    <td width="210"> 
      <input type=text name=userid style="font-family: Verdana; focus font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
    </td>
  </tr>
  <tr> 
    <td align=center width="107"> 
        <div align="left"><b><font color="#3399FF">Password</font></b></div>
    </td>
    <td width="210"> 
      <input type=password name=pwd style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
    </td>
  </tr>
  <tr> 
      <td colspan="2" align="center" height="25"><b> 
        <input type="submit" value="Login" style="font-weight: bold; border-style: outset; border-width:1; color:#227CA8" onClick="return CheckInput()" name="submit">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp 
        <input type="reset" value="Clear" style="font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" name="reset" onclick="Clear()" >
        </b></td>
  </tr>
  </tbody> 
</table>
</form>
<p>&nbsp; </p>
<jsp:include page="Footer.html" />
</BODY>

</HTML>
 