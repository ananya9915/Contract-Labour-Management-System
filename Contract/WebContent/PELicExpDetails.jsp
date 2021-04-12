<script>











</script>
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
   
   String rcno=request.getParameter("rcno").toUpperCase();
   
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
   rs= CBean.executeQuery("select to_char(sysdate,'dd-Mon-yyyy') from dual");
                 
         rs.next();
	 dt=rs.getString(1);
	 rs.close();
   
   rs=CBean.executeQuery("select * from company_master where rcno='" + rcno + "' ");
   rs.next();
   String dcode=rs.getString(1);
   String rcno1=rs.getString(2);
   String cmp=rs.getString(3);
   String nowrk=rs.getString(4);
   String phno=rs.getString(11);
   
   rs.close();
   
   
   rs=CBean.executeQuery("select licno,addrs, noworkers,to_char(dtofexp,'dd-Mon-yyyy'),nwork,phno from workorder where rcno='" + rcno + "' and dtofexp < '" + dt + "' order by dtofexp");
  
   
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
    
		
		<TABLE style="LEFT: 10px; ; TOP: 15px; HEIGHT: 10px" 
cellPadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19" bgcolor="#FFFFDF"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b> 
              <font color="#000000">Principal Employer Details</font></b></font></div>
          </td>
        </tr>
		</table>
		
      <table bgcolor="#FFFFFF" border="0" width="1000">
	  <th width="166"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">SL.No</font> </div>
			
          <th width="166"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">District 
            Code</font> </div>
          <th width="175"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">RC 
            No</font> </div>
          <th width="238"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">Name 
            Of The Principal Employer</font> </div>
          <th width="170"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Obtained 
            No Of Workers</font><font color="#000000"> </font> </div>
			
          <th width="229"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Phone Number</font><font color="#000000"> </font> </div>
        <tr > 
		 <td bgcolor="#FFFFDF" width="166"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=1%></font></b> </div>
          </td>
  
          <td bgcolor="#FFFFDF" width="166"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=dcode%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="175"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rcno1%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="238"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=cmp%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="170"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=nowrk%></font></b> </div>
          </td>
		  
		   
          <td bgcolor="#FFFFDF" width="229"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=phno%></font></b> </div>
          </td>
        </tr>
      </table>
		
		
		<br>
		
      <table style="LEFT: 10px; ; TOP: 15px; HEIGHT: 10px" 
cellpadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19" bgcolor="#FFFFDF"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b> 
              <font color="#000000">Principal Employer Wise License Expired Details</font></b></font></div>
          </td>
        </tr>
      </table>
	  
	  
		
      <table bgcolor="#FFFFFF" border="0" width="100%">
	  
	   <th width="122" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">SL.No</font><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
            </font> </div>
			
          <th width="122" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">License 
            No</font><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
            </font> </div>
          <th width="186" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Name 
            Of The Contractor</font> </div>
          <th width="118" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">No 
            Of Workers</font> </div>
          <th width="143" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">License 
            Renwal Date</font><font color="#000000"> </font> </div>
          <th width="151" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Nature 
              Of Work</font> </div>
          
          <th width="240" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Phone Number</font> 
            <%
			int slno=1;
			
		while(rs.next())
		{
		
		%>
          </div>
        <tr > 
		<td bgcolor="#FFFFDF" width="122"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=slno%></font></b> </div>
          </td>
		  
          <td bgcolor="#FFFFDF" width="122"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(1)%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="186"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(2)%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="118"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(3)%></font></b> </div>
          </td>
          <td bgcolor="#FF0033" width="143"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(4)%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="151"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(5)%></font></b> </div>
          </td>
		   
          <td bgcolor="#FFFFDF" width="240"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(6)%></font></b> </div>
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