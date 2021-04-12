<script>
function CheckInput()
{
var rcno=workfrm.rcno.value;


   if(workfrm.rcno.value=="" || workfrm.rcno.value=="DCL/VSP/CL-PE/" )
	{
	alert("Please Enter Registration Number");
	workfrm.rcno.focus();
	workfrm.rcno.value="DCL/VSP/CL-PE/";
	workfrm.rcno.focus();
		return false;
	}else if(workfrm.sdate.value=="")
	{
	alert("Please Enter Starting Date");
	workfrm.sdate.value="";
	workfrm.sdate.focus();
	return false;
	}else if(workfrm.edate.value=="")
	{
	alert("Please Enter End Date");
	workfrm.edate.value="";
	workfrm.edate.focus();
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
		          workfrm.rcno.focus();
		          
         workfrm.rcno.value="DCL/VSP/CL-PE/";
         workfrm.rcno.focus();
		 return false;
		 
        }
	
	 if(s.charAt(0)==str)
        {
		 alert(oXMLHTTP.responseText);
		          workfrm.rcno.focus();
         workfrm.rcno.value="DCL/VSP/CL-PE/";
         workfrm.rcno.focus();
		 return false;
		 
        }else
        {
		  workfrm.action="PELicTobeExpDetails.jsp?rcno=" + rcno;
		  
	   }
	
		
        
        	

	
	
}
function Back()
{

   workfrm.action="Reports.jsp";
   

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
              Certificate</b></font></div>
          </td>
        </tr>
        <tr> 
          <td colspan="2" height="19"><font face="Verdana, Arial, Helvetica, sans-serif"></font></td>
        </tr>
               
        
        
        <tr> 
          <td height="20" width="295"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Enter 
            Registration Certificate Number</font></b></td>
          <td height="20" width="685" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="rcno" value="DCL/VSP/CL-PE/"  size="35" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr>      
        <tr> 
          <td height="20" width="295"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8"> 
            StartDate</font></b></td>
          <td height="20" width="685" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="sdate"   readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
		 
		 <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.workfrm.sdate);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
			
			
			
			
			

            </font> </b></td>
        </tr>  
		
		
		  <tr> 
          <td height="20" width="295"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8"> 
            EndDate</font></b></td>
          <td height="20" width="685" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="edate"   readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
		 
		 <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.workfrm.edate);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
			
			
			
			
			

            </font> </b></td>
        </tr> 
		
        <tr bgcolor="#227CA8" align="left"> 
          <td colspan="2" height="25"><font color="#CCFFCC"><b> 
            <input type="submit" align="left" value="  Back  " 
	   		   onClick="return Back()" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
	             
            </b></font>
            
           
           <input type="submit" align="left" value="  Show  " 
		   onClick="return CheckInput()" name="submit" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8"  > 
          
            </b></font></td>
        </tr>
      </table>
      <p>&nbsp;</p>
    </center>
  </div>
</form>
<iframe width=174 height=189 name="gToday:normal:agenda.js" id="gToday:normal:agenda.js" src="Calendar\ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; left:-500px; top:0px;">
</iframe> 

<jsp:include page="Footer.html" />
</body>

</html>