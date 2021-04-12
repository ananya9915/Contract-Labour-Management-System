<html>
<head>
</head>
<body>



<form name="Licfrm" method="get" action="WorkOrderRegister">
  <%@page import="java.sql.*,java.util.Date,gld.*" %>
  <%
   Connection con=null;
   ResultSet rs=null;
   String dt="";
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
   rs= CBean.executeQuery("select to_char(sysdate,'dd-Mon-yyyy') from dual");
                 
         rs.next();
	 dt=rs.getString(1);
	 rs.close();
    
	
	String sdate=request.getParameter("sdate");
	String edate=request.getParameter("edate");
	
   rs=CBean.executeQuery("select licno,addrs, noworkers,to_char(dtofexp,'dd-Mon-yyyy'),nwork,phno from workorder  where dtofexp between  '" + sdate + "' and '" + edate + "' order by  dtofexp ");
  
   
   %>

  <table width="100%" border="0" height="14" bgcolor="#FFFFCC">
    <tr>
      <td>
        <div align="center"> 
        
        
          <p> 
            <input type="image" border="0" name="imageField" src="IMAGES/Logo.jpg" width="80" height="80">
          </p>
          <p><font face="Verdana, Arial, Helvetica, sans-serif"><b><font size="5">GOVERNMENT 
            OF ANDHRA PRADESH LABOUR DEPARTMENT</font></b></font></p>
        </div>
		
      </td>
    </tr>
  </table>
  <table width="100%%" border="0">
    <tr>
      <td bgcolor="#FFFFCC"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="3">Date 
        : &nbsp;&nbsp;&nbsp; <%=dt%></font></b> </td>
    </tr>
  </table>
 
  
  <div align="center">
<center>
    
		
		
		
      <table style="LEFT: 10px; ; TOP: 15px; HEIGHT: 10px" 
cellpadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19" bgcolor="#FFFFDF"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b> 
              <font color="#000000">All License Expired Details</font></b></font></div>
          </td>
        </tr>
      </table>
	  
	  
		
      <table bgcolor="#FFFFFF" border="0" width="100%">
	  <th width="161" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">SL.No</font><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              </font> </div>
			  
          <th width="161" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">License 
              No</font><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              </font> </div>
          <th width="185" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Name 
              Of The Contractor</font> </div>
          <th width="83" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">No 
              Of Workers</font> </div>
          <th width="141" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">License 
              Renwal Date</font><font color="#000000"> </font> </div>
          <th width="202" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Nature 
              Of Work</font> </div>
          
          <th width="188" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Phone Number</font> 
          
		  
              <%
			  int slno=1;
			  
		while(rs.next())
		{
		
		%>
            </div>
          <tr >
			 
			<td bgcolor="#FFFFDF" width="161"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=slno%></font></b> 
            </div>
          </td>
		  
          <td bgcolor="#FFFFDF" width="161"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(1)%></font></b> 
            </div>
          </td>
           
          <td bgcolor="#FFFFDF" width="185"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(2)%></font></b> 
            </div>
          </td>
		   
          <td bgcolor="#FFFFDF" width="83"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(3)%></font></b> 
            </div>
          </td>
		   
          <td bgcolor="#FF0033" width="141"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(4)%></font></b> 
            </div>
          </td>
		  
		  <td bgcolor="#FFFFDF" width="202"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(5)%></font></b> 
            </div>
          </td>
		  
		  <td bgcolor="#FFFFDF" width="188"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(6)%></font></b> 
            </div>
          </td>
		   
        </tr>
			  <%
			  slno=slno+1;
			  
			 }
			 rs.close();
			 
			 %>
			 
        </table>
		
		
		
      <p><br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
      <br>
        <br>
      </p>
      </center>
  </div>
  
</form>
<jsp:include page="Footer.html" />
</body>

</html>