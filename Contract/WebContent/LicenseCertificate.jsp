<script>
function CheckInput()
{
var lcno=workfrm.lcno.value;


   if(workfrm.lcno.value=="" || workfrm.lcno.value==" " )
	{
	alert("Please Enter Registration Number");
	workfrm.lcno.focus();
	workfrm.lcno.value="";
	workfrm.lcno.focus();
		return false;
	}
	
  	var oXMLHTTP = new ActiveXObject( "Microsoft.XMLHTTP" );
	var sURL = "./CheckLno?lcno=" + lcno
	oXMLHTTP.open( "POST", sURL, false );
	oXMLHTTP.send();
	var  status=oXMLHTTP.responseText;
	var s=status;
	var str="I";
	var str1="e";
	
	 if(s.charAt(0)==str1)
        {
		 alert("Invalid License Number");
         workfrm.lcno.value="DCL/VSP/CL/";
         workfrm.lcno.focus();
		 return false;
		 }
    
	
	 if(s.charAt(0)==str)
        {
		 alert(oXMLHTTP.responseText);
         workfrm.lcno.value="DCL/VSP/CL/";
         workfrm.lcno.focus();
		 return false;
		 
        }else
        
        
        {
		
		  workfrm.action="LicCertificate.jsp?lcno=" + lcno;
		  
	}
	
		
        
        	

	
	
}

function setfocus()
{
workfrm.lcno.focus();
workfrm.lcno.value="DCL/VSP/CL/";
workfrm.lcno.focus();


}


</script>
<html>
<head>
</head>
<body onload="setfocus()">

<form name="workfrm" method="POST">

<jsp:include page="MemberHeader.html" />
  <div align="center">
    <center>
      <TABLE style="LEFT: 10px; ; TOP: 15px; HEIGHT: 61px" 
cellPadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b>Renwal 
              License</b></font></div>
          </td>
        </tr>
        <tr> 
          <td colspan="2" height="19"><font face="Verdana, Arial, Helvetica, sans-serif"></font></td>
        </tr>
               
        
        
        <tr> 
          <td height="20" width="288"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Enter 
            License Number</font></b></td>
          <td height="20" width="692" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="lcno" value="DCL/VSP/CL/"  size="35" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr>      
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="left"><b><font color="#CCFFCC"><b></b></font></b></div>
          </td>
        </tr>
        <tr bgcolor="#227CA8" align="left"> 
          <td colspan="2" height="25"><font color="#CCFFCC"><b> 
            <input type="submit" align="left" value="  Show  " 
		   onClick="return CheckInput()" name="submit" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
          
            </b></font></td>
        </tr>
      </table>
      <p>&nbsp;</p>
    </center>
  </div>
</form>


<jsp:include page="Footer.html" />
</body>

</html>