<script>
function GetConReport()
{

workfrm.action="ContractorDetails.jsp";


}


function GetExcelReport()
{

workfrm.action="ContractorExcelDetails.jsp";


}



function Back()
	{
		
	workfrm.action="Reports.jsp"
	   
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
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b>Contractor 
              Details</b></font></div>
          </td>
        </tr>
        <tr> 
          <td colspan="2" height="19"><font face="Verdana, Arial, Helvetica, sans-serif"></font></td>
        </tr>
               
        
        
        
       
		<tr bgcolor="#227CA8" align="left"> 
          <td colspan="2" height="25"><font color="#CCFFCC"><b> 
            <input type="submit" align="left" value="  Back  " 
		   onClick="return Back()" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
          
            </b></font>
       
          
            <input type="submit" align="left" value="  Show  " 
		   onClick="return GetConReport()" name="submit" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
          
		  
		   <input type="submit" align="left" value="  Save As Excel   " 
		   onClick="return GetExcelReport()" name="submit1" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
          
		  
		  
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