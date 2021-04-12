<script>
function CheckInput()
{
var rcno=workfrm.rcno.value;


   if(workfrm.rcno.value=="" || workfrm.rcno.value==" " )
	{
	alert("Please Enter Registration Number");
	workfrm.rcno.value="";
	workfrm.rcno.focus();
		return false;
	}
	
  	var oXMLHTTP = new ActiveXObject( "Microsoft.XMLHTTP" );
	var sURL = "./CheckRno?rcno=" + rcno
	oXMLHTTP.open( "POST", sURL, false );
	oXMLHTTP.send();
	var  status=oXMLHTTP.responseText;
	var s=status;
	var str="I";
	var str1="e";
	if(s.charAt(0)==str1)
        {
		 alert("Invalid Registration Number");
         workfrm.rcno.value="DCL/VSP/CL-PE/";
         workfrm.rcno.focus();
		 return false;
		 
        }
	
	
	 if(s.charAt(0)==str)
        {
		 alert(oXMLHTTP.responseText);
         workfrm.rcno.value="DCL/VSP/CL-PE/";
         workfrm.rcno.focus();
		 return false;
		 
        }else
        {
		  workfrm.action="RCWODetails.jsp?rcno=" + rcno;
     	}
}



function CheckInput1()
{



var rcno=workfrm.rcno.value;


   if(workfrm.rcno.value=="" || workfrm.rcno.value==" " )
	{
	alert("Please Enter Registration Number");
	workfrm.rcno.value="";
	workfrm.rcno.focus();
		return false;
	}
	
  	var oXMLHTTP = new ActiveXObject( "Microsoft.XMLHTTP" );
	var sURL = "./CheckRno?rcno=" + rcno
	oXMLHTTP.open( "POST", sURL, false );
	oXMLHTTP.send();
	var  status=oXMLHTTP.responseText;
	var s=status;
	var str="I";
	var str1="e";
	if(s.charAt(0)==str1)
        {
		 alert("Invalid Registration Number");
         workfrm.rcno.value="DCL/VSP/CL-PE/";
         workfrm.rcno.focus();
		 return false;
		 
        }
	
	
	 if(s.charAt(0)==str)
        {
		 alert(oXMLHTTP.responseText);
         workfrm.rcno.value="DCL/VSP/CL-PE/";
         workfrm.rcno.focus();
		 return false;
		 
        }else
        {
	
		  workfrm.action="RCWOExcelDetails.jsp?rcno=" + rcno;
		  workfrm.submit();
		  
     	}
}



function Back()
	{
		
	workfrm.action="Reports.jsp"
	   
	}
	
	
	function setfocus()
	{
	
	
	workfrm.rcno.focus();
	    workfrm.rcno.value="DCL/VSP/CL-PE/";
	 workfrm.rcno.focus();
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
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b>Registration 
              Certificate Details</b></font></div>
          </td>
        </tr>
        <tr> 
          <td colspan="2" height="19"><font face="Verdana, Arial, Helvetica, sans-serif"></font></td>
        </tr>
               
        
        
        <tr> 
          <td height="20" width="288"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Enter 
            Registration Certificate Number</font></b></td>
          <td height="20" width="692" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="rcno" value="DCL/VSP/CL-PE/"  size="35" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr>      
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="left"><b><font color="#CCFFCC"><b></b></font></b></div>
          </td>
        </tr>
		<tr bgcolor="#227CA8" align="left"> 
          <td colspan="2" height="25"><font color="#CCFFCC"><b> 
            <input type="submit" align="left" value="  Back  " 
		   onClick="return Back()" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
          
            </b></font>
       
          
            <input type="submit" align="left" value="  Show  " 
		   onClick="return CheckInput()" name="submit" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
          
		  
		   <input type="submit" align="left" value="  Save As Excel   " 
		   onClick="return CheckInput1()" name="submit1" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
          
		  
		  
            </td>
        </tr>
      </table>
      <p>&nbsp;</p>
    </center>
  </div>
</form>


<jsp:include page="Footer.html" />
</body>

</html>