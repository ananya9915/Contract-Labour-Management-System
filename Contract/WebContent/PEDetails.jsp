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



<form name="Licfrm" method="post" >

  <%@page import="java.sql.*,java.util.Date,gld.*" %>
  <%
   Connection con=null;
   ResultSet rs=null;
   
  
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
     
         rs= CBean.executeQuery("select to_char(sysdate,'dd-Mon-yyyy') from dual");
          rs.next();
          String dt=rs.getString(1);
   	 rs.close();
   	 
	 
	 
	 
   
   
   
   rs=CBean.executeQuery("select * from company_master ");
  
  
   
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
      <td bgcolor="#FFFFCC"><b><font size="3" face="Verdana, Arial, Helvetica, sans-serif">Date 
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
          <th width="246"> 
            <div align="left"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="2">Name 
              Of The Principal Employer</font> </div>
          <th width="162"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Obtained 
              No Of Workers</font><font color="#000000"> </font> </div>
          <th width="229"> 
            <div align="left"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Phone Number 
              </font><font color="#000000"> </font> 
			  
              <%
		int slno=1;
		
		while(rs.next())
		{
		%>
            </div>
          <tr >
			 
			  <td bgcolor="#FFFFDF" width="166"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=slno%></font></b> </div>
          </td>
          <td bgcolor="#FFFFDF" width="166"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(1)%></font></b> </div>
          </td>
           
          <td bgcolor="#FFFFDF" width="175"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(2)%></font></b> </div>
          </td>
		   
          <td bgcolor="#FFFFDF" width="246"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(3)%></font></b> </div>
          </td>
		   
          <td bgcolor="#FFFFDF" width="162"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(4)%></font></b> </div>
          </td>
		   
		    
          <td bgcolor="#FFFFDF" width="229"> 
            <div align="left"><b><font color="#" size="2" face="Verdana, Arial, Helvetica, sans-serif"><%=rs.getString(11)%></font></b> </div>
          </td>
        </tr>
			<%
			slno=slno+1;
			
			}
			rs.close();
			
			%>
			 
			
			 
        </table>
		
		<br>
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