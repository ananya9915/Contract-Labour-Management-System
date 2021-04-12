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
	
	 if(s.charAt(0)==str)
        {
		 alert(oXMLHTTP.responseText);
         workfrm.rcno.value="";
         workfrm.rcno.focus();
		 return false;
		 
        }else
        {
		  workfrm.action="RCWODetails.jsp?rcno=" + rcno;
		  
		  
		  
		  
		  
	}
	
		
        
        	

	
	
}

</script>
<html>
<head>
</head>
<body>

<form name="workfrm" method="POST">

<jsp:include page="MemberHeader.html" />
  <div align="center">
    <center>
      <TABLE style="LEFT: 10px; ; TOP: 15px; HEIGHT: 61px" 
cellPadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b>Reports</b></font></div>
          </td>
        </tr>
        <tr> 
          <td colspan="2" height="21"> 
            <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><b><font size="3"><a href="RCDetails.jsp"> 
              Principal Employer Wise Contractor Details</a> </font></b></font></div>
          </td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="3"><b><a href="ShowPEDetails.jsp">Principal 
              Employer Details</a></b></font></div>
          </td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="3"><b><a href="ShowContractorDetails.jsp">Contractor 
              Details</a></b></font></div>
          </td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="3"><b><a href="PrincipalLicDetails.jsp">Principal 
              Employer wise License Expired Details</a></b></font></div>
          </td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="3"><b><a href="PrincipalLicexpDetails.jsp">Principal 
              Employer wise License to be Expired Details</a></b></font></div>
          </td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="3"><b><a href="AllLicExpDetails.jsp">All License Expired Details</a></b></font></div>
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