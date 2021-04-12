<script>
function Go()
{
Licfrm.distname.focus();
}


function CharCheck(obj)
{
len=obj.value;

len=obj.value;
if(len.charAt(0)==" ")
{
  var oldvalue=len.substring(1,len.length);
  obj.value=oldvalue;
}

n = event.keyCode;


len=obj.value;
if((n>=65 && n<=90) || (n==32) || (n==8) || (n==110) || (n==190) || (n==20) || (n==9))
{
}else
{
  obj.value="";
  return false;
}



}

function AlphaNumeric(obj)
{

    len=obj.value;
   

n = event.keyCode;


if(n==220 || n==180 || n==192 )
{
  obj.value="";
  return false;
}

len=obj.value;


var char=len.substring(len.length,len.length-1);

var colors=new Array("!","@","#","$","%","^","&","*","+","<",">","/","?","}","{","[","]","'",";","=","-","|");

for(i=0;i<=colors.length-1;i++)
{
 var sNumber=colors[i];
 if(sNumber==char)
 {
  obj.value="";
  return false;
 }
}
}


function NoCheck(obj)
{
n = event.keyCode;
len=obj.value;


if((n<=57 && n>=48) ||  n==8  || n==9 || (n<=105 && n>=96) || n==46)
{
}else
{
 obj.value="";

}

}



function CheckInput()
{
   

   var sel=1;
   
        if(Licfrm.distname.selectedIndex==0)
	{
	alert("Please Select  District Name");
	Licfrm.distname.focus();
		return false;
	}else if(Licfrm.rcno.value=="DCL/VSP/CL-PE/" ||  Licfrm.rcno.value=="")
	{
	alert("Please Enter Registration Certificate Number");
	
	Licfrm.rcno.focus();
	Licfrm.rcno.value="DCL/VSP/CL-PE/";
	Licfrm.rcno.focus();
	
	return false;
	}else if(Licfrm.padname.value=="")
	{
	alert("Please Enter Principal Employee Name and Address");
	Licfrm.padname.focus();
	return false;
	}else if(Licfrm.nwork.value=="")
	{
	
	alert("Please Enter Nature Of Work");
	Licfrm.nwork.focus();
	return false;
	}else if(Licfrm.noworkers.value=="")
	{
	alert("Please Enter No Of Workers");
	Licfrm.noworkers.focus();
	return false;
	}else if(Licfrm.fpaid.value=="")
	{
	alert("Please Enter Fee Amount");
	Licfrm.fpaid.focus();
	return false;
	}else if(Licfrm.vchno.value=="")
	{
	alert("Please Enter Challan No");
	Licfrm.vchno.focus();
	return false;
	}else if(Licfrm.pdate.value=="")
	{
	alert("Please Enter Paid Date");
	Licfrm.pdate.focus();
	return false;
	}else if(Licfrm.bname.value=="")
	{
	alert("Please Enter Bank Name");
	
	
	Licfrm.bname.focus();
	return false;
	}else if(sel==1)
	{
   
   
   var Date1=new Date();
   var Date2=new Date();
   var Date3=new Date();
   dt1=Licfrm.wdate.value;
   dt2=Licfrm.sysdate.value;
   dt3=Licfrm.pdate.value;
   
   
   
   
   
   
	
   var day1=dt1.substring(0,2);
   var mon1=dt1.substring(3,6);
   var year1=dt1.substring(7,11);
   
   var day2=dt2.substring(0,2);
   var mon2=dt2.substring(3,6);
   var year2=dt2.substring(7,11);
   
   
   var day3=dt3.substring(0,2);
   var mon3=dt3.substring(3,6);
   var year3=dt3.substring(7,11);
   
   
   
   
   
   
 

   if(mon1=="Jan")
   {
      mon1=01;
   }else if(mon1=="Feb")
   {
   mon1=02;
   
   }else if(mon1=="Mar")
   {
   mon1=03;
   
   }else if(mon1=="Apr")
   {
   mon1=04;
   
   }else if(mon1=="May")
   {
   mon1=05;
   
   }else if(mon1=="Jun")
   {
   mon1=06;
   
   }else if(mon1=='Jul')
   {
   mon1=07;
   
   }else if(mon1=="Aug")
   {
   mon1=08;
   
   }else if(mon1=="Sep")
   {
   mon1=09;
   
   }else if(mon1=="Oct")
   {
   mon1=10;
   
   }else if(mon1=="Nov")
   {
   mon1=11;
   
   }else if(mon1=="Dec")
   {
      mon1=12;
   
   }
   
   
   
   
   
   if(mon2=="Jan")
   {
   
   
   
    mon2=01;
   
   }else if(mon2=="Feb")
   {
   mon2=02;
   
   }else if(mon2=="Mar")
   {
   mon2=03;
   
   }else if(mon2=="Apr")
   {
   mon2=04;
   
   }else if(mon2=="May")
   {
   mon2=05;
   
   }else if(mon2=="Jun")
   {
   mon2=06;
   
   }else if(mon2=="Jul")
   {
     
   mon2=07;
   
   }else if(mon2=="Aug")
   {
   mon2=08;
   
   }else if(mon2=="Sep")
   {
   mon2=09;
   
   }else if(mon2=="Oct")
   {
   mon2=10;
   
   }else if(mon2=="Nov")
   {
   mon2=11;
   
   }else if(mon2=="Dec")
   {
      mon2=12;
   }
   
   
   mon3
   
   
   if(mon3=="Jan")
   {
      mon3=01;
   }else if(mon3=="Feb")
   {
   mon3=02;
   
   }else if(mon3=="Mar")
   {
   mon3=03;
   
   }else if(mon3=="Apr")
   {
   mon3=04;
   
   }else if(mon3=="May")
   {
   mon3=05;
   
   }else if(mon3=="Jun")
   {
   mon3=06;
   
   }else if(mon3=='Jul')
   {
   mon3=07;
   
   }else if(mon3=="Aug")
   {
   mon3=08;
   
   }else if(mon3=="Sep")
   {
   mon3=09;
   
   }else if(mon3=="Oct")
   {
   mon3=10;
   
   }else if(mon3=="Nov")
   {
   mon3=11;
   
   }else if(mon3=="Dec")
   {
      mon3=12;
   
   }
   
  
   Date1.setFullYear(year1,mon1,day1);
   Date2.setFullYear(year2,mon2,day2);
   Date3.setFullYear(year3,mon3,day3);   
   
   
   
   if(Date1>Date2)
   {
     alert("Work Order Issued Date Should Not be Greater than the Current Date");
     return false;
   }else if(Date3>Date2)
  {  
	 alert("Challan Paid Date Should Not be Greater than the Current Date");
     return false;
  }
  
  
  }
	
	
	
	

}


function SetDistCode()
{

	
	
if(Licfrm.distname.selectedIndex==1)
  {
  
  
     Licfrm.distcode.value="3";
}else if(Licfrm.distname.selectedIndex==2)
{
     Licfrm.distcode.value="2";
}else if(Licfrm.distname.selectedIndex==3)	 
{
     Licfrm.distcode.value="1";

}
	 
	 



}


function validateRcno(rcno)
{
	
	
	var oXMLHTTP = new ActiveXObject( "Microsoft.XMLHTTP" );
	
	var sURL = "./CheckRcno?rcno=" + rcno
				
		oXMLHTTP.open( "POST", sURL, false);
			
		
		oXMLHTTP.send();
		
		
		var  status=oXMLHTTP.responseText;
	
		var str="a";
		
		
		if(status.charAt(0)==str)
        {
	        alert(oXMLHTTP.responseText);
    	                  
	         Licfrm.rcno.value="DCL/VSP/CL-PE/";
	         Licfrm.rcno.focus();
        }
        
        	
}


function onlyno(obj)
{
     phno=obj.value;
     no=phno.charAt(phno.length-1)
     if ( isNaN(no) && no!='-' ) 
          obj.value=phno.substring(0,phno.length-1)
          
          
          len=obj.value;
	  	        if(len.charAt(len.length-1)==" ")
	  	        {
	  	           alert("Spaces are not Allowed");
	  	           obj.value=len.substring(0,len.length-1);
	  	        }
	  	        
}





function setfocus()
{

 Licfrm.distname.focus();




}



</script>
<html>
<head>
</head>
<body onload="setfocus()">

<form name="Licfrm" method="POST" action="LicenseRegister">

<jsp:include page="MemberHeader.html" />

  <div align="center">
    <center>
	
  <%@page import="java.sql.*,java.util.Date,gld.*" %>
  <%
  
 
 
 ResultSet rs=null;
 ConnectionBean CBean=new ConnectionBean();
 
    
   
      rs= CBean.executeQuery("select to_char(sysdate,'dd-Mon-yyyy') from dual");
                    
            rs.next();
  String wdate=rs.getString(1);
	 rs.close();
	 
	 
	 
   
   
   
   System.out.println(wdate);
   
   
   
	%>
	<input type=hidden name=sysdate value=<%=wdate%>>
	
      <TABLE style="LEFT: 10px; ; TOP: 15px; HEIGHT: 61px" 
cellPadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b>New 
              Registration Certificate Entry Form</b></font></div>
          </td>
        </tr>
        <tr> 
          <td colspan="2" height="19"><font face="Verdana, Arial, Helvetica, sans-serif"></font></td>
        </tr>
                <tr> 
          <td height="20" width="249"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">District 
            Name </font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <select name="distname" onchange="SetDistCode()">
              <option selected>--Select District--</option>
              <option>Srikakulam</option>
              <option>Vizianagaram</option>
              <option>Visakhapatnam</option>
            </select>
            <input type= hidden name="distcode"  size="20" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
            </font></b></td>
        </tr>
        <tr> 
          <td height="20" width="249"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">R.C 
            No </font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"> <font face="Verdana, Arial, Helvetica, sans-serif">
            

            <input type="text" name="rcno" value="DCL/VSP/CL-PE/" size="35" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8"  
            onblur="validateRcno(this.value);">
            </font></td>
        </tr>
        <tr> 
          <td height="20" width="249"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Principal 
            Employer Name</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif">
            <textarea name="padname"  cols=30 rows=4 style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" ></textarea>
            </font></b></td>
        </tr>
		
			<tr> 
          <td height="20" width="249"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">
            Phone No/Mobile No</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif">
 <input type="text" name="phno" onkeyup="NoCheck(this)" maxlength=12 size="35" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8"  >
            </font></b></td>
        </tr>
		
		
		  <tr> 
          <td height="20" width="249"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Nature 
            Of Work</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif">
            <textarea name="nwork"  onkeyup="AlphaNumeric(nwork)" maxlength=200 cols=50 rows=4 style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" ></textarea>
            </font></b></td>
        </tr>
		
		
	
		
		   <tr> 
          <td height="20" width="249"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Reg.Cert.Obtained 
            For Workers</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"> <font face="Verdana, Arial, Helvetica, sans-serif">
            

            <input type="text" name="noworkers" onkeyup="AlphaNumeric(noworkers)" size=60 maxlength=250 style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8"  >
            </font></td>
        </tr>
		
		  <tr> 
          <td height="20" width="249"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Work 
            Order Issue Dated</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
          
		   <input type="text" name="wdate" readonly value="<%=wdate%>" onkeyup="onlyno(noworkers)" size="20" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
		   

<a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.wdate);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
			
			
            </font> </b></td>
        </tr> 
        <tr> 
          <td height="20" width="249"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Fee 
            Paid  Rs</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
           <input type="text" name="fpaid"  onkeyup="AlphaNumeric(fpaid)"   size="20" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr>     
		
		  <tr> 
          <td height="20" width="249"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Vide 
            Challana No.</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
           <input type="text" name="vchno"  onkeyup="AlphaNumeric(vchno)"    size="50" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		
		  <tr> 
          <td height="20" width="249"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Dated</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
           <input type="text" name="pdate"  readonly onkeyup="onlyno(noworkers)" size="20" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
            <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.pdate);
			 return false;" HIDEFOCUS tabIndex=5> <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt=""> 
            </a> </font> </b></td>
        </tr> 
		
		  <tr> 
          <td height="20" width="249"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Bank</font></b></td>
          <td height="20" width="1221" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
           <input type="text" name="bname"  onkeyup="CharCheck(this)" value="SBI"  size="50" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		 
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="left"><b><font color="#CCFFCC"><b></b></font></b></div>
          </td>
        </tr>
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="25"><font color="#CCFFCC"><b> 
		  <input type="submit"  value="  Save  " onClick="return CheckInput()" name="submit" style="font-weight: bold; cursor:hand;border-style: outset; border-width:0; color:#229CA8"  > 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <input type="reset" value="   Clear  "   name="reset" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8" onclick="Go()"> 
            </b></font></td>
        </tr>
      </table>
      </center>
  </div>
  
</form>


<iframe width=174 height=189 name="gToday:normal:agenda.js" id="gToday:normal:agenda.js" src="Calendar\ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; left:-500px; top:0px;">
</iframe> 


<jsp:include page="Footer.html" />
</body>

</html>