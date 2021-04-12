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


function Back()
{
  cfrm.action="WorkOrder.jsp";
  

}


function PrintForm()
{

window.print();


}

</script>
<%@page import="java.sql.*,java.util.Date,gld.*" %>
<%@page import="java.sql.*,java.util.Date,gld.*" %>
<%

   String lcno="";
   String  cname="";
   String  nawork="";
   String pname="";
   String wrksdate="";
   String wrkedate="";
   String nowrks="";
   String schno="";
   String sdate="";
   String samt="";
   String wbank="";
   String wchno="";
   String wdate="";
   String wamt="";
   String wano="";
   String wisdate="";
   String wfamt="";
   String lisdate="";
   
    String rsdate="";
	String redate="";
	String renwagrno="";
	String renwodated="";
	String rendate="";
	String renamt="";
	String renchno="";
  	String renchdate="";
	String dtofexp="";
	String rwbank="";
	String rwdate="";
	String rwamt="";
	
	
	Connection con=null;
   ResultSet rs=null;
   
   try
   {
   
   lcno=request.getParameter("lcno").toUpperCase();
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
   rs=CBean.executeQuery("select wo.addrs,wo.nwork,cm.company,to_char(wo.workdt,'dd-Mon-yyyy'),to_char(wo.rendt,'dd-Mon-yyyy'),wo.noworkers,wo.schno,to_char(sdate,'dd-Mon-yyyy'),wo.samt,wo.wbank,wo.wchno,to_char(wo.wdate,'dd-Mon-yyyy'),wo.wamt,wo.worderagno,to_char(wo.wisdate,'dd-Mon-yyyy'),wo.wfamt,to_char(wo.lisdate,'dd-Mon-yyyy') from company_master cm,workorder wo where wo.licno='" + lcno + "' and cm.rcno=(select rcno from company_master where rcno=(select rcno from workorder where licno='" + lcno + "')) ");
   if(rs.next())
   {
   cname=rs.getString(1);
   nawork=rs.getString(2);

   
   pname=rs.getString(3);
   
   
   wrksdate=rs.getString(4);
   wrkedate=rs.getString(5);
   nowrks=rs.getString(6);
   
   schno=rs.getString(7);
   sdate=rs.getString(8);
   samt=rs.getString(9);
   wbank=rs.getString(10);
   wchno=rs.getString(11);
    wdate=rs.getString(12);
    wamt=rs.getString(13);
    wano=rs.getString(14);
    wisdate=rs.getString(15);
    wfamt=rs.getString(16);
       lisdate=rs.getString(17);
   
   }
   
   
   rs.close();
   
    rs=CBean.executeQuery("select to_char(stdate,'dd-Mon-yyyy'),to_char(enddate,'dd-Mon-yyyy'),renwagrno,to_char(renwodated,'dd-Mon-yyyy'),to_char(rendate,'dd-Mon-yyyy'),renamt,renchno,to_char(renchdate,'dd-Mon-yyyy'),to_char(dtofexp,'dd-Mon-yyyy'),rwbank,to_char(rwdate,'dd-Mon-yyyy'),rwamt from licrenewal where licno='" + lcno + "' ");
	
	if(rs.next())
{

	
	
	 rsdate=rs.getString(1);
	 redate=rs.getString(2); 
	 renwagrno=rs.getString(3); 
	 renwodated=rs.getString(4); 
	 rendate=rs.getString(5); 
	 renamt=rs.getString(6); 
	 renchno=rs.getString(7); 
  	 renchdate=rs.getString(8); 
	 dtofexp=rs.getString(9); 
	 rwbank=rs.getString(10); 
	 rwdate=rs.getString(11); 
	 rwamt=rs.getString(12); 
	
}

	
	
	rs.close();
	
  }catch(Exception ex)
  {
    out.println("Error"+ ex);
	
  
  }
  
   
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
<p class=MsoNormal align=center style='text-align:center;background:white'>&nbsp;</p>
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
        OF LICENSING OFFICER &amp; DY.COMMISSIONER OF LABOUR VISAKHAPATNAM</font></span></b></font></p>
      
      </td>
  </tr>
  <tr>
  
  <td>
  </td>
  
  </tr>
  
  <tr>
    
    <td>
    </td>
    
    </tr>
  
  
  <tr>
    <td align="center" bgcolor="#FFFFCC">
      <p class=MsoNormal align=center style='text-align:center;background:white'><font face="Verdana, Arial, Helvetica, sans-serif"><b><span
style='font-family:Verdana;color:black'><font color="#000000">FORM-VI </font></span></b></font></p>
      <p class=MsoNormal align=center style='text-align:center;background:white'><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><b><span
style='font-family:Verdana;color:black'>[Rule 25 (1)]</span></b><span
style='font-family:Verdana'><o:p></o:p><o:p></o:p><o:p></o:p></span></font><font face="Verdana, Arial, Helvetica, sans-serif"><span
style='font-family:Verdana'><o:p></o:p></span></font></p>
    </td>
  </tr>
</table>
    
<p class=MsoNormal align=center style='text-align:center;background:white'><span
style='font-family:Verdana'><o:p></o:p></span><b><u><span style='font-family:
Verdana;color:black'><o:p></o:p></span></u></b></p>

    
  <table width="79%" border="0" align="center">
  <tr> 
    <td> <b><font face="Verdana, Arial, Helvetica, sans-serif" size="4"><u>License 
      No.</u></font><u><font face="Verdana, Arial, Helvetica, sans-serif" size="4"><u><%=lcno%></u></font></u></b> 
      <table width="37%" border="0" align="right">
        <tr> 
          <td> 
            <div align="left"><font face="Verdana, Arial, Helvetica, sans-serif" size="4">Date</font><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;:</font> 
              <font face="Verdana, Arial, Helvetica, sans-serif" size="4">&nbsp;<%=lisdate%></font></b></div>
          </td>
        </tr>
        <tr> 
          <td><font size="4" face="Verdana, Arial, Helvetica, sans-serif">Fee 
            Paid<b> </b></font><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Verdana, Arial, Helvetica, sans-serif">:Rs. &nbsp;&nbsp;<%=wfamt%></font></b></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      
      <p align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><u><font size="4"><b>LICENSE</b></font></u></font></p>
      <p align="center">&nbsp;</p>
      </td>
  </tr>
  <tr> 
    <td> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></b><font face="Verdana, Arial, Helvetica, sans-serif"><font size="4">Licence 
        is hereby granted to <b>Sri <%=cname%></b> under Section 12(1) 
        of the Contract Labour (Regulation and Abolition) 
		Act, 1970, subject to 
        the conditions specified in Annexure.</font></font></p>
      <br>
    </td>
  </tr>
  <tr> 
    <td> 
      <p><font face="Verdana, Arial, Helvetica, sans-serif" size="4">This license 
        is for doing the work of</font><b><font face="Verdana, Arial, Helvetica, sans-serif"> 
        &nbsp;&nbsp;&nbsp</font></b><font face="Verdana, Arial, Helvetica, sans-serif"><b><font size="4"><%=nawork%> 
        &nbsp;&nbsp;&nbsp</font></b><font size="4">in the establishment of</font><b><font size="4"> 
        &nbsp;&nbsp;&nbsp <%=pname%></font></b></font></p>
    
      </td>
  </tr>
  <tr> 
    <td> 
      <p><font face="Verdana, Arial, Helvetica, sans-serif" size="4">The licence 
        shall remain in force from</font><b><font face="Verdana, Arial, Helvetica, sans-serif"> 
        &nbsp;&nbsp;&nbsp <%=rsdate%> &nbsp;&nbsp;&nbsp;</font></b><font face="Verdana, Arial, Helvetica, sans-serif" size="4">to</font><b><font face="Verdana, Arial, Helvetica, sans-serif"> 
        &nbsp;&nbsp;&nbsp;<%=redate%></font></b></p>
      
    </td>
  </tr>
  <tr> 
    <td> 
      <p><font face="Verdana, Arial, Helvetica, sans-serif" size="4">The No. of 
        workmen employed as contract labour in the Establishment shall not on 
        any day exceed</font><b><font face="Verdana, Arial, Helvetica, sans-serif"> 
        <%=nowrks%></font></b></p>
    <br>
	
    </td>
  </tr>
  <tr> 
    <td> 
      <p><font face="Verdana, Arial, Helvetica, sans-serif" size="4">Security 
        Deposit : Challan No:</font><b><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp; 
        <%=schno%> &nbsp;&nbsp;&nbsp;</font></b><font face="Verdana, Arial, Helvetica, sans-serif" size="4">Date:</font><b><font face="Verdana, Arial, Helvetica, sans-serif"> 
        &nbsp; <%=sdate%> &nbsp;&nbsp;&nbsp;</font></b><font face="Verdana, Arial, Helvetica, sans-serif" size="4">Rs:</font><b><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp; 
        <%=samt%></font></b></p>
     
      <br>
    </td>
  </tr>
  
  <tr> 
    <td> 
      <p align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif">Renewal 
        (Rule 29)</font></b></p>
      <p><font face="Verdana, Arial, Helvetica, sans-serif">Work Agreement No:<b>&nbsp;&nbsp;&nbsp;<%=renwagrno%>&nbsp;&nbsp;&nbsp;</b>Work 
        order Date:<b>&nbsp;&nbsp; <%=renwodated%></b></font></p>
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
          <td><font face="Verdana, Arial, Helvetica, sans-serif"><b><%=rendate%>
            </b></font></td>
          <td> 
            
			
	
            <p><font face="Verdana, Arial, Helvetica, sans-serif">Rs:&nbsp;<b><%=renamt%> 
              </b></font></p>
            <p><font face="Verdana, Arial, Helvetica, sans-serif">vide Challan 
              No.&nbsp;&nbsp;<b><%=renchno%></b></font><font face="Verdana, Arial, Helvetica, sans-serif"></font></p>
            <p><b> <font face="Verdana, Arial, Helvetica, sans-serif">
              </font></b><font face="Verdana, Arial, Helvetica, sans-serif">Date:&nbsp;<b><%=renchdate%></b></font><b><font face="Verdana, Arial, Helvetica, sans-serif"> 
              </font></b><font face="Verdana, Arial, Helvetica, sans-serif"> </font><br>
            </p>
          </td>
          <td><font face="Verdana, Arial, Helvetica, sans-serif"><b><%=dtofexp%> 
            </b></font></td>
        </tr>
      </table>
  
  <tr> 
    <td> 
          
      <p> <font face="Verdana, Arial, Helvetica, sans-serif" size="4">Welfare 
        Fund paid : Bank:</font><font face="Verdana, Arial, Helvetica, sans-serif"><b> 
        &nbsp;<%=rwbank%> &nbsp;&nbsp;</b><b>&nbsp;</b><font size="4">Dated</font><b>: 
        &nbsp; <%=rwdate%> &nbsp;&nbsp;</b><font size="4">for Rs:</font><b> &nbsp;<%=rwamt%> 
        </b></font></p>
      
      
      <br>
      <br>
      <br>
      
      <p align="right"><font face="Verdana, Arial, Helvetica, sans-serif"><b>Signature 
        and Seal of the Licensing Officer</b></font></p>
      <p></p>
    </td>
  </tr>
</table>
    
 
</body>

</form>

</html>
