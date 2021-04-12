<script>
function Back()
{
  Licfrm.action="DeleteLicense.jsp";
  

}


</script>


<html>
<head>
</head>
<body>
<jsp:include page="MemberHeader.html" />
<form name="Licfrm" method="get" action="DeleteLicense">
  <%@page import="java.sql.*,java.util.Date,gld.*" %>
  <%
   Connection con=null;
   ResultSet rs=null;
  
  try
  {
  
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
       

	 
	 
	 
   
   String lcno=request.getParameter("lcno").toUpperCase();
  

	
   rs=CBean.executeQuery("select licno,addrs, noworkers,to_char(dtofexp,'dd-Mon-yyyy'),nwork,phno from workorder  where  licno='" + lcno + "' and dtofexp < sysdate  ");
   rs.next();
   
 
   
   %>

 
  <div align="center">
<center>
    
		
		
		
      <table style="LEFT: 10px; ; TOP: 15px; HEIGHT: 10px" 
cellpadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19" bgcolor="#FFFFDF"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b> 
              <font color="#000000">License Expired Details</font></b></font></div>
			  <input type=hidden name="lcno"  value="<%=lcno%>" >
			  
          </td>
        </tr>
      </table>
	  
	  
		
      <table bgcolor="#FFFFFF" border="0" width="100%">
          <th width="117" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">License 
              No</font><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              </font> </div>
          <th width="199" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Name 
              Of The Contractor</font> </div>
          <th width="83" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">No 
              Of Workers</font> </div>
          <th width="174" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">License 
              Renwal Date</font><font color="#000000"> </font> </div>
          <th width="148" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Nature 
              Of Work</font> </div>
			  
			   
          <th width="239" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Phone Number</font> </div>
			  
			  
          <tr >
			           
          <td bgcolor="#FFFFDF" width="117" height="19"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(1)%></font></b> 
            </div>
          </td>
           
          <td bgcolor="#FFFFDF" width="199" height="19"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(2)%></font></b> 
            </div>
          </td>
		   
          <td bgcolor="#FFFFDF" width="83" height="19"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(3)%></font></b> 
            </div>
          </td>
		   
          <td bgcolor="#FF0033" width="174" height="19"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(4)%></font></b> 
            </div>
          </td>
		  
		  <td bgcolor="#FFFFDF" width="148" height="19"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(5)%></font></b> 
            </div>
          </td>
		  
		  <td bgcolor="#FFFFDF" width="239" height="19"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(6)%></font></b> 
            </div>
          </td>
		  
		
		
		 
		   
        </tr>
			  <%
			 
			 
			  
			  }catch(SQLException ex)
			  {
			  
			  
			  %>
			  
			  <jsp:forward page="Information.jsp" />;
			  
			  <%
			  
			  
			  
 }
			 rs.close();
			 
			 %>
			 
			 
			 
	
      </table>
	  <br>
	  <table width="100%">
	  
	  		    <tr bgcolor="#227CA8" width="100%"> 
          <td colspan="2" align="center" height="10"><font color="#CCFFCC"><b> <input type="submit"  value="  Back  " onClick="Back()"  style="font-weight: bold; cursor:hand;border-style: outset; border-width:0; color:#229CA8"  > 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <input type="submit" value="   Delete  "   name="reset" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8" > 
            </b></font></td>
        </tr>
		</table>
        <p>
      </p>
      </center>
  </div>
  
</form>
<jsp:include page="Footer.html" />
</body>

</html>