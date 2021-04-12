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
   String lcno=request.getParameter("lcno").toUpperCase();
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
   
   rs=CBean.executeQuery("select wo.addrs,wo.nwork,cm.company,to_char(wo.workdt,'Mon-yyyy'),to_char(wo.rendt,'Mon-yyyy'),wo.noworkers from company_master cm,workorder wo where wo.licno='" + lcno + "' and cm.rcno=(select rcno from company_master where rcno=(select rcno from workorder where licno='" + lcno + "')) ");
   rs.next();
   
   String  cname=rs.getString(1);
   System.out.println(cname);
   
   String  nawork=rs.getString(2);
   System.out.println(nawork);
   
   String pname=rs.getString(3);
   System.out.println(pname);
   
   String wrksdate=rs.getString(4);
   System.out.println(wrksdate);
   String wrkedate=rs.getString(5);
   String nowrks=rs.getString(6);
   System.out.println(nowrks);
   
   rs.close();
   %>
<script language="JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
// -->
</script>
</head>

<body lang=EN-US style='tab-interval:.5in' bgcolor="#FFFFFF">
<p class=MsoNormal align=center style='text-align:center;background:white'><span
style='font-family:Verdana'> </span></p>

<form name=cfrm method=post>

<table width="78%" border="0" height="157" bgcolor="#FFFFCC" align="center">
  <tr> 
    <td align="center" bgcolor="#FFFFCC"><font face="Verdana, Arial, Helvetica, sans-serif"></font> 
     
        <input type="image" border="0" name="imageField" src="IMAGES/Logo.jpg" width="120" height="133">
     
    </td>
  </tr>
  <tr> 
    <td align="center" bgcolor="#FFFFCC"><b><span
style='font-family:Verdana;color:black'><font face="Verdana, Arial, Helvetica, sans-serif"><b>GOVERNMENT 
      OF ANDHRA PRADESH LABOUR DEPARTMENT</b></font></span></b></td>
  </tr>
  <tr> 
    <td align="center" bgcolor="#FFFFCC" height="27" bordercolor="#FFFFCC"> 
      <p><font face="Verdana, Arial, Helvetica, sans-serif"><b><span
style='font-family:Verdana;color:black'><o:p></o:p><font face="Verdana, Arial, Helvetica, sans-serif">OFFICE 
        OF LICENSING OFFICER &amp; DY.COMMISSIONER OF LABOUR </font></span></b></font></p>
      <p class=MsoNormal align=center style='text-align:center;background:#FFFFCC'><font face="Verdana, Arial, Helvetica, sans-serif"><span
style='font-family:Verdana'><o:p></o:p></span><span
style='font-family:Verdana;color:black'><b>VISAKHAPATNAM</b></span><b><span
style='font-family:Verdana;color:black'><o:p></o:p></span></b></font></p>
      </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFCC">
      <p class=MsoNormal align=center style='text-align:center;background:white'><font face="Verdana, Arial, Helvetica, sans-serif"><b><span
style='font-family:Verdana;color:black'><font color="#FF0000">FORM-VI </font></span></b></font></p>
      <p class=MsoNormal align=center style='text-align:center;background:white'><font face="Verdana, Arial, Helvetica, sans-serif"><b><span
style='font-family:Verdana;color:black'><font color="#FF0000">[Rule 25 (1)]</font></span></b><font color="#FF0000"><span
style='font-family:Verdana'><o:p></o:p><o:p></o:p></span></font><span
style='font-family:Verdana'><o:p></o:p></span></font></p>
    </td>
  </tr>
</table>
    <p class=MsoNormal align=center style='text-align:center;background:white'><span
style='font-family:Verdana'>&nbsp;<o:p></o:p></span></p>

    
  <p class=MsoNormal align=center style='text-align:center;background:white'><span
style='font-family:Verdana'><o:p></o:p></span><b><u><span style='font-family:
Verdana;color:black'><o:p></o:p></span></u></b></p>
  
<table width="79%" border="0" align="center">
  <tr> 
    <td> <b><u>License No <%=lcno%> </u></b> 
      <table width="31%" border="0" align="right">
        <tr> 
          <td> 
            <div align="left"><b>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b></div>
          </td>
        </tr>
        <tr> 
          <td><b>Fee Paid &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:Rs.</b></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif"><u>LICENSE</u></font></b></p>
      <p align="center">&nbsp;</p>
      </td>
  </tr>
  <tr> 
    <td> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;Licence 
        is hereby granted to Sri <u><%=cname%></u>  under Section 12(1) of the Contract Labour (Regulation 
        and Abolition) Act, 1970, subject to the conditions specified in Annexure.</font></b></p>
      <p>&nbsp;</p>
    </td>
  </tr>
  <tr> 
    <td> 
      <p><b><font face="Verdana, Arial, Helvetica, sans-serif">This license is 
        for doing the work of    &nbsp;&nbsp;&nbsp<u><%=nawork%></u> </font></b></p>
      <p><b><font face="Verdana, Arial, Helvetica, sans-serif">in the establishment 
        of <u><%=pname%></u></font></b></p>
      <p>&nbsp;</p>
      </td>
  </tr>
  <tr> 
    <td> 
      <p><b><font face="Verdana, Arial, Helvetica, sans-serif">The licence shall 
        remain in force from &nbsp;&nbsp;&nbsp; <u> <%=wrksdate%></u> &nbsp;&nbsp;&nbsp;to &nbsp;&nbsp;&nbsp; <u><%=wrkedate%> </u></font></b></p>
      <p>&nbsp; </p>
    </td>
  </tr>
  <tr> 
    <td> 
      <p><b><font face="Verdana, Arial, Helvetica, sans-serif">The No. of workmen 
        employed as contract labour in the Establishment shall not on any day 
        exceed     <u> <%=nowrks%></u></font></b></p>
      <p>&nbsp; </p>
    </td>
  </tr>
  <tr> 
    <td> 
      <p><b><font face="Verdana, Arial, Helvetica, sans-serif">Security Deposit 
        : Challan No._____Date_______, Place : _____ Rs. ____</font></b></p>
      <p>&nbsp;</p>
    </td>
  </tr>
  <tr> 
    <td> 
      <p align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif">Renewal 
        (Rule 29)</font></b></p>
      <p><font face="Verdana, Arial, Helvetica, sans-serif"><b>Work order dt._________ 
        </b></font></p>
      <table width="100%" border="1" height="130">
        <tr> 
          <td><font face="Verdana, Arial, Helvetica, sans-serif"><b>Date of Renewal 
            </b> </font></td>
          <td><b><font face="Verdana, Arial, Helvetica, sans-serif">Fee paid for 
            renewal </font></b></td>
          <td><b><font face="Verdana, Arial, Helvetica, sans-serif">Date of expiry 
            </font></b></td>
        </tr>
        <tr> 
          <td><font face="Verdana, Arial, Helvetica, sans-serif"><b>_________ 
            </b></font></td>
          <td> 
            <p>&nbsp;</p>
            <p><font face="Verdana, Arial, Helvetica, sans-serif"><b>Rs._________ 
              </b></font></p>
            <p><b><font face="Verdana, Arial, Helvetica, sans-serif">vide Challan 
              No._________</font></b></p>
            <p><b> <font face="Verdana, Arial, Helvetica, sans-serif"><br>
              Dt. _________ </font></b><br>
            </p>
          </td>
          <td><font face="Verdana, Arial, Helvetica, sans-serif"><b>_________ 
            </b></font></td>
        </tr>
      </table>
      <p><font face="Verdana, Arial, Helvetica, sans-serif"><b>Welfare Fund paid 
        :</b></font></p>
      <p><font face="Verdana, Arial, Helvetica, sans-serif"><b> Andhra Bank_________ 
        </b></font></p>
      <p><font face="Verdana, Arial, Helvetica, sans-serif"><b>Challan dated_________ 
        for Rs._________ <br>
        </b></font></p>
      <p>&nbsp;</p>
      <p></p>
      <p align="right"><font face="Verdana, Arial, Helvetica, sans-serif"><b>Signature 
        and Seal of the Licensing Officer</b></font></p>
      <p></p>
    </td>
  </tr>
</table>
    
  <p class=MsoNormal style='background:white'><b><u><span style='font-family:
Verdana;color:black'><o:p></o:p></span></u></b></p>

   
  


</body>

</form>

</html>
