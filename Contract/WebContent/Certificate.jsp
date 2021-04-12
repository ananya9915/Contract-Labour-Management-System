<html >
<title> </title>




<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>Raj</o:Author>
  <o:Template>Normal</o:Template>
  <o:LastAuthor>Raj</o:LastAuthor>
  <o:Revision>1</o:Revision>
  <o:TotalTime>1</o:TotalTime>
  <o:Created>2006-05-05T06:10:00Z</o:Created>
  <o:LastSaved>2006-05-05T06:11:00Z</o:LastSaved>
  <o:Pages>1</o:Pages>
  <o:Company>Mss</o:Company>
  <o:Lines>1</o:Lines>
  <o:Paragraphs>1</o:Paragraphs>
  <o:Version>9.2720</o:Version>
 </o:DocumentProperties>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:536871559 0 0 0 415 0;}
 /* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style>
<script language="JavaScript">


</script>

<%@page import="java.sql.*,java.util.Date,gld.*" %>
 
  <%@page import="java.sql.*,java.util.Date,gld.*" %>
  <%
   Connection con=null;
   ResultSet rs=null;
   String  padname="";
   String  wisdate="";
   String  nwork="";
   String  noworks="";
   String  fpaid="";
   String  vchno="";
   String  pdate="";
   String  bank="";
   String rcno=request.getParameter("rcno").toUpperCase();
   try
   {
   
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
   rs=CBean.executeQuery("select company,woisdt,nwork,noofworkers,fpaid,vchno,pdate,bank from company_master where rcno='" + rcno + "' ");
   rs.next();
     padname=rs.getString(1);
     wisdate=rs.getString(2);
     nwork=rs.getString(3);
     noworks=rs.getString(4);
     fpaid=rs.getString(5);
     vchno=rs.getString(6);
     pdate=rs.getString(7);
     bank=rs.getString(8);
   
   rs.close();
  
   
   %>
 

 


</head>

<body lang=EN-US style='tab-interval:.5in' bgcolor="#FFFFFF">
<form name="cfrm" method="post" action="">
<p class=MsoNormal align=center style='text-align:center;background:white'><span
style='font-family:Verdana'> </span></p>

<table width="78%" border="0" height="157" bgcolor="#FFFFCC" align="center">
    <tr> 
        
    <td align="center"> 
      <p><font face="Verdana, Arial, Helvetica, sans-serif"><span
style='font-family:Verdana'>
        <input type="image" border="0" name="imageField" src="IMAGES/Logo.jpg" width="120" height="133">
        </span></font></p>
      <p><font face="Verdana, Arial, Helvetica, sans-serif"><b>GOVERNMENT OF ANDHRA 
        PRADESH LABOUR DEPARTMENT</b></font></p>
      </td>
      </tr>
      <tr> 
        <td align="center"><b><span
style='font-family:Verdana;color:black'><font face="Verdana, Arial, Helvetica, sans-serif">OFFICE 
          OF THE REGISTERING OFFICER UNDER CONTRACT LABOUR (R&amp;A) ACT, 1970</font></span></b></td>
      </tr>
      <tr> 
        <td align="center" bgcolor="#FFFFCC"> 
          <p><font face="Verdana, Arial, Helvetica, sans-serif"><b><span
style='font-family:Verdana;color:black'>CERTIFICATE OF REGISTRATION<o:p></o:p></span></b></font></p>
          
      <p class=MsoNormal align=center style='text-align:center;background:white'><font face="Verdana, Arial, Helvetica, sans-serif"><b><span
style='font-family:Verdana;color:black'><font color="#000000">Form-II [Rule : 
        18 (1)]</font></span></b><font color="#000000"><span
style='font-family:Verdana'><o:p></o:p><o:p></o:p><o:p></o:p></span></font><span
style='font-family:Verdana'><o:p><br></o:p></span></font></p>
      <p class=MsoNormal align=center style='text-align:center;background:white'><font face="Verdana, Arial, Helvetica, sans-serif"><span
style='font-family:Verdana'><o:p> </o:p> </span></font></p>
          </td>
      </tr>
    </table>
    
<p class=MsoNormal align=center style='text-align:center;background:white'><span
style='font-family:Verdana'><o:p></o:p></span></p>

    
  <p class=MsoNormal align=center style='text-align:center;background:white'><span
style='font-family:Verdana'><o:p></o:p></span><b><u><span style='font-family:
Verdana;color:black'><o:p></o:p></span></u></b></p>
  <table width="79%" border="0" align="center">
    <tr> 
      
    <td> <b><u><font face="Verdana, Arial, Helvetica, sans-serif" size="3">RD.No</font></u> 
      <font face="Verdana, Arial, Helvetica, sans-serif"><u><%=rcno%></u> </font> 
      </b> 
      <table width="31%" border="0" align="right">
        <tr> 
          <td> 
            <div align="left"><b><font face="Verdana, Arial, Helvetica, sans-serif">Date:  &nbsp;&nbsp;<%=wisdate%></font></b></div>
          </td>
        </tr>
      </table>
    </td>
    </tr>
    <tr> 
      
    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Verdana, Arial, Helvetica, sans-serif"> 
      <font size="4">A Certificate of Registration containing the following particulars 
      is hereby granted under Sub-Sec (2) of Section-7 of the Contract Labour 
      (Regulation and Abolition) Act, 1970 and Rules made there under to</font></font><font size="3"><b><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></b></font><b><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;<%=padname%></font></b><br><br> </td>
    </tr>
    <tr> 
      
    <td> <font face="Verdana, Arial, Helvetica, sans-serif" size="4">1.Nature of work carried 
      on in the &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <b>:</b> &nbsp;&nbsp <b><%=nwork%></b><br>
      &nbsp;&nbsp;&nbsp;establishment<b> </b></font><br> <br>
        <br><br>
      </td>
    </tr>
    <tr> 
      
    <td> <font face="Verdana, Arial, Helvetica, sans-serif" size="4">2.Names and addresses 
      of the contractors</font><b><font face="Verdana, Arial, Helvetica, sans-serif"> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp: &nbsp;&nbsp;&nbspVide 
      Annexure</font></b> <br>
      <br><br>
      </td>
    </tr>
    <tr> 
      <td> 
        
      <p><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFFCC" size="4"><font color="#000000">3.Nature 
        of work in which contract labour is&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>:</b> 
        &nbsp;&nbsp;&nbsp<b>Vide Annexure</b><br>
        &nbsp;&nbsp;&nbsp;employed</font><b><font color="#000000"> <br>
        <br><br>
        </font></b></font></p>
        
    </td>
    </tr>
    <tr> 
      
    <td> <font face="Verdana, Arial, Helvetica, sans-serif" size="4">4.Maximum number of 
      contract labour to be </font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Verdana, Arial, Helvetica, sans-serif"><b>:</b>&nbsp;&nbsp;&nbsp<b><%=noworks%></b><br>
      &nbsp;&nbsp;&nbsp;employed on any day through all contractors</font> <br>
      <br><br>
      </td>
    </tr>
    <tr> 
      
    <td> 
      <p><font face="Verdana, Arial, Helvetica, sans-serif" size="4">5.Other particulars 
        relevant to the employment&nbsp;&nbsp;&nbsp;&nbsp;<b>:</b><br>
        &nbsp;&nbsp;&nbsp of contract labour</font><b><font face="Verdana, Arial, Helvetica, sans-serif"> 
        <br>
        <br>
        </font></b></p>

        
      <p align="left"><font face="Verdana, Arial, Helvetica, sans-serif" size="4">Fee paid 
        <span style='font-family:Verdana;color:black' size="4">: Rs:</span></font><b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'> 
        &nbsp;<b><%=fpaid%></b>&nbsp;&nbsp;&nbsp;</span></font></b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'>vide 
        challan<span style="mso-spacerun: yes"> </span>No:</span></font><b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'> 
        &nbsp;<b><%=vchno%></b>&nbsp;&nbsp;&nbsp;</span></font></b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'>Dated:</span></font><b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'>&nbsp;<b><%=pdate%> 
        &nbsp;&nbsp;&nbsp;&nbsp; </b></span></font></b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'>of</span></font><b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'><b> 
        &nbsp;<%=bank%> </b></span></font></b> </p>
        
      <p class=MsoNormal style='background:white' align="left"><font face="Verdana, Arial, Helvetica, sans-serif" size="4"><span style='font-family:Verdana;
color:black'><b><font size="3"></font></b></span><font size="3"><span
style='font-family:Verdana'><o:p></o:p></span></font><font size="3"><span
style='font-family:Verdana'><o:p></o:p></span></font><span
style='font-family:Verdana'><o:p></o:p></span></font></p>
        <p class=MsoNormal style='background:white' align="left"><font face="Verdana, Arial, Helvetica, sans-serif"><b><span style='font-family:Verdana;
color:black'> &nbsp;<o:p></o:p></span></b></font></p>
        
      <p class=MsoNormal style='text-indent:.3in;background:white' align="left"><font face="Verdana, Arial, Helvetica, sans-serif"><span
style='font-family:Verdana;color:black'><font size="4">Instructions to the Principal 
        Employer are herewith enclosed.<br><br></font></span><b><span style='font-family:Verdana'><o:p></o:p></span><span style='font-family:Verdana;
color:black'><br>
        </span></b></font></p>
        </td>
    </tr>
    <tr> 
      <td> 
        
        
      <p class=MsoNormal align=center style='margin-left:3.3in;text-align:center;
background:white'><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'><b><font size="3">Registering 
        officer &amp;<o:p></o:p></font></b></span></font></p>
      <p class=MsoNormal align=center style='margin-left:3.3in;text-align:center;
background:white'><font size="3"><b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'>Dy. 
        Commissioner of Labour,<o:p></o:p></span></font></b></font></p>
      <p class=MsoNormal align=center style='margin-left:3.3in;text-align:center;
background:white'><font size="3"><b><font face="Verdana, Arial, Helvetica, sans-serif"><span style='font-family:Verdana;color:black'>Visakhapatnam.</span><span
style='font-family:Verdana'><o:p></o:p></span></font></b><font face="Verdana, Arial, Helvetica, sans-serif"><span
style='font-family:Verdana'><o:p></o:p></span></font></font><font face="Verdana, Arial, Helvetica, sans-serif"><span
style='font-family:Verdana'><o:p></o:p></span></font></p>
        
      <p class=MsoNormal>&nbsp; 
    </td>
    </tr>
  </table>
    <%
	 }catch(Exception ex)
   {
     out.println("Error"+ex);
	 
   
   }
   
	%>
	

</body>

</form>

</html>
