<script>




function Back()
{
  Licfrm.action="RCDetails.jsp";
 }







</script>
<html>
<head>
</head>
<body>



<form name="Licfrm" method="get" action="WorkOrderRegister">
  <%@page import="java.sql.*,java.util.Date,gld.*" contentType="application/vnd.ms-excel"%>
  <%
   Connection con=null;
   ResultSet rs=null;
   
   
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
   String d=new Date().toString();
   System.out.println(d);
    
      
     
        rs= CBean.executeQuery("select to_char(sysdate,'dd-Mon-yyyy') from dual");
                      
              rs.next();
    String dt=rs.getString(1);
  	 rs.close();
  	 
	 
	 
	 
   

   rs=CBean.executeQuery("select licno,addrs, noworkers,to_char(dtofexp,'dd-Mon-yyyy'),nwork,phno from workorder order by workdt ");
  
   
   %>
 
  <table width="100%%" border="0">
    <tr>
      <td bgcolor="#FFFFCC"><font face="Verdana, Arial, Helvetica, sans-serif" size="3"><b>Date 
        : &nbsp;&nbsp;&nbsp; <%=dt%></b></font> </td>
    </tr>
  </table>
 
  
  <div align="center">
<center>
      <TABLE style="LEFT: 10px; ; TOP: 15px; HEIGHT: 10px" 
cellPadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19" bgcolor="#FFFFDF"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b> 
              <font color="#000000">Contractor Details</font> </b></font></div>
          </td>
        </tr>
		</table>
		
      <table bgcolor="#FFFFFF" border="0" width="100%">
	  <th width="120" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">SL.No</font><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
            </font> </div>
			
          <th width="120" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">License 
            No</font><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
            </font> </div>
          <th width="191" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Name 
            Of The Contractor</font> </div>
          <th width="79" height="29"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">No 
            Of Workers</font> </div>
          <th width="152" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">License 
            Renwal Date</font><font color="#000000"> </font> </div>
          <th width="216" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Nature 
              Of Work</font> </div>
          
          <th width="202" height="29"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Phone Number</font> 
            <%
			int slno=1;
			
		while(rs.next())
		{
		
		
		
		%>
          </div>
        <tr > 
		<td bgcolor="#FFFFDF" width="120"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=slno%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="120"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(1)%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="191"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(2)%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="79"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(3)%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="152"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(4)%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="216"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(5)%></font></b> </div>
          </td>
		  
		    
          <td bgcolor="#FFFFDF" width="202"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(6)%></font></b> </div>
          </td>
        </tr>
        <%
			 slno=slno+1;
			 
			 }
			 
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

</body>

</html>