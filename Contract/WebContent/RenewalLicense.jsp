<script>
function ok()
{


Licfrm.wano.focus();
	Licfrm.wano.value=Licfrm.wano.value;
	
	Licfrm.wano.focus();


}

function AlphaNumeric(obj)
{

    len=obj.value;
   

n = event.keyCode;
if(n==220 || n==180 || n==192 || n==188)
{
  obj.value="";
  return false;
}

len=obj.value;


var char=len.substring(len.length,len.length-1);

var colors=new Array("!","@","#","$","%","^","&","*","+","<",">","?","}","{","[","]","'",";","=","_","|");

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


function CheckInput()
{

var sel=1;

     
   if(Licfrm.wano.value=="")
	{
	alert("Please Enter Work Order/Agreement No");
	Licfrm.wano.focus();
	
	return false;
	}else if(Licfrm.wodated.value=="")
	{
	alert("Please Enter Work Order Date");
	Licfrm.wodated.focus();
	
	return false;
	}else if(Licfrm.rendate.value=="")
	{
    	alert("Please Enter Work Order Renwal Date");
	    Licfrm.rendate.focus();
	    return false;
	}else if(Licfrm.rnchno.value=="")
	{
	   alert("Please Enter Challan No");
	   Licfrm.rnchno.focus();
	   return false;
	   
	   renchdate
	}else if(Licfrm.renchdate.value=="")
	{
	   alert("Please Enter Challan Date");
	   Licfrm.renchdate.focus();
	   return false;
	   
	   
	}else if(Licfrm.renamt.value=="")
	{
	  alert("Please Enter Renewal Amount");
	  Licfrm.renamt.focus();
	  return false;
	} else if(Licfrm.dateofexp.value=="")
	{
	  alert("Please Enter License Date Of Expiry");
	  Licfrm.dateofexp.focus();
	  return false;
	}else if(Licfrm.rwbank.value=="")
	{
	alert("Please Enter  Welfare Fund Paid Bank Name");
	Licfrm.rwbank.focus();
	
	return false;
	}else if(Licfrm.rwdate.value=="")
	{
	  alert("Please Enter Welfare Fund Paid Date ");
	  Licfrm.rwdate.focus();
	  return false;
	} else if(Licfrm.rwamt.value=="")
	{
	  alert("Please Enter Welfare Fund Paid Amount ");
	  Licfrm.rwamt.focus();
	  return false;
	}else if(sel==1)
	{
   
   
   var Date1=new Date();
   var Date2=new Date();
   var Date3=new Date();
   
   var Date4=new Date();
   
   var Date5=new Date();
   
    var Date6=new Date();
    
  
    
    
     dt1=Licfrm.wodated.value;
 
    
   dt2=Licfrm.sysdate.value;
   
   dt3=Licfrm.rendate.value;
      
   dt4=Licfrm.renchdate.value;
   
   
   
   dt5=Licfrm.dateofexp.value;
      
   
  dt6=Licfrm.rwdate.value;
  
  
    
   
   
   
   
	
   var day1=dt1.substring(0,2);
   var mon1=dt1.substring(3,6);
   var year1=dt1.substring(7,11);
   
   var day2=dt2.substring(0,2);
   var mon2=dt2.substring(3,6);
   var year2=dt2.substring(7,11);
   
   
   var day3=dt3.substring(0,2);
   var mon3=dt3.substring(3,6);
   var year3=dt3.substring(7,11);
   
   var day4=dt4.substring(0,2);
   var mon4=dt4.substring(3,6);
   var year4=dt4.substring(7,11);
   
   var day5=dt5.substring(0,2);
   var mon5=dt5.substring(3,6);
   var year5=dt5.substring(7,11);
   
   var day6=dt6.substring(0,2);
   var mon6=dt6.substring(3,6);
   var year6=dt6.substring(7,11);
   
  
   
   

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
   
   if(mon4=="Jan")
      {
         mon4=01;
      }else if(mon4=="Feb")
      {
      mon4=02;
      
      }else if(mon4=="Mar")
      {
      mon4=03;
      
      }else if(mon4=="Apr")
      {
      mon4=04;
      
      }else if(mon4=="May")
      {
      mon4=05;
      
      }else if(mon4=="Jun")
      {
      mon4=06;
      
      }else if(mon4=='Jul')
      {
      mon4=07;
      
      }else if(mon4=="Aug")
      {
      mon4=08;
      
      }else if(mon4=="Sep")
      {
      mon4=09;
      
      }else if(mon4=="Oct")
      {
      mon4=10;
      
      }else if(mon4=="Nov")
      {
      mon4=11;
      
      }else if(mon4=="Dec")
      {
         mon4=12;
      
      }
   
   
   if(mon5=="Jan")
      {
         mon5=01;
      }else if(mon5=="Feb")
      {
      mon5=02;
      
      }else if(mon5=="Mar")
      {
      mon5=03;
      
      }else if(mon5=="Apr")
      {
      mon5=04;
      
      }else if(mon5=="May")
      {
      mon5=05;
      
      }else if(mon5=="Jun")
      {
      mon5=06;
      
      }else if(mon5=='Jul')
      {
      mon5=07;
      
      }else if(mon5=="Aug")
      {
      mon5=08;
      
      }else if(mon5=="Sep")
      {
      mon5=09;
      
      }else if(mon5=="Oct")
      {
      mon5=10;
      
      }else if(mon5=="Nov")
      {
      mon5=11;
      
      }else if(mon5=="Dec")
      {
         mon5=12;
      
      }
   
   
      if(mon6=="Jan")
      {
         mon6=01;
      }else if(mon6=="Feb")
      {
      mon6=02;
      
      }else if(mon6=="Mar")
      {
      mon6=03;
      
      }else if(mon6=="Apr")
      {
      mon6=04;
      
      }else if(mon6=="May")
      {
      mon6=05;
      
      }else if(mon6=="Jun")
      {
      mon6=06;
      
      }else if(mon6=='Jul')
      {
      mon6=07;
      
      }else if(mon6=="Aug")
      {
      mon6=08;
      
      }else if(mon6=="Sep")
      {
      mon6=09;
      
      }else if(mon6=="Oct")
      {
      mon6=10;
      
      }else if(mon6=="Nov")
      {
      mon6=11;
      
      }else if(mon6=="Dec")
      {
         mon6=12;
      
      }
      
      
     
   
   
   
   
  
   Date1.setFullYear(year1,mon1,day1);
   Date2.setFullYear(year2,mon2,day2);
   Date3.setFullYear(year3,mon3,day3);   
   
     Date4.setFullYear(year4,mon4,day4);   
     
     Date5.setFullYear(year5,mon5,day5);   
     
     
     
     Date6.setFullYear(year6,mon6,day6);  
     
     
    
     
   if(Date1>Date2)
   {
     alert("Renewal Work Order Agreement Date Should Not be Greater than the Current Date");
     return false;
   }else if(Date3>Date2)
  {  
	 alert("License Renewal Date Should Not be Greater than the Current Date");
     return false;
  }else if(Date4>Date2)
  {
     alert("Renewal Challan Paid Date Should Not be Greater than the Current Date");
     return false;
     
  
  }else if(Date5<=Date3)
  {
     alert("License Expiry Date Should Not be less than or equal to the Date of Renewal ");
     return false;
  
  }else if(Date5<Date2)
  {
     
     alert("Renewal Date Should Not be Greater than the current date ");
          return false;
     
  
  }else if(Date6>Date2)
  {
     
          alert("WelFare Fund Paid Date Should Not be Greater than the current date ");
          return false;
     
  
  }
  
  
  
  }
	
	
	
	             
              
            

}





function validateLno(Lno)
{

	var oXMLHTTP = new ActiveXObject( "Microsoft.XMLHTTP" );
	var sURL = "./CheckLcno?Lno=" + Lno
	oXMLHTTP.open( "POST", sURL, false );
	oXMLHTTP.send();
	var  status=oXMLHTTP.responseText;
	var s=status;
	var str="a";
	
	 if(s.charAt(0)==str)
        {
		 alert(oXMLHTTP.responseText);
         Licfrm.lcno.value="";
	       Licfrm.lcno.focus();
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

Licfrm.wano.focus();
	Licfrm.wano.value=Licfrm.wano.value;
	
	Licfrm.wano.focus();

}







</script>
<html>
<head>
</head>
<body onload="setfocus()">

<form name="Licfrm" method="get" action="UpdateLicenseRenewal">

<jsp:include page="MemberHeader.html" />
  <%@page import="java.sql.*,java.util.Date,gld.*" %>
  
  <%
  
   Connection con=null;
   ResultSet rs=null;
    String agrno="";
     ConnectionBean CBean=new ConnectionBean();
   
   con=CBean.getConnection();
    String d=new Date().toString();
      System.out.println(d);
       rs= CBean.executeQuery("select to_char(sysdate,'dd-Mon-yyyy') from dual");
                       
               rs.next();
     String dt=rs.getString(1);
   	 rs.close();
   	 
   	 
	 
	 
	 
   
   
   
   String lcno=request.getParameter("lcno").toUpperCase();
   System.out.println(lcno);
   

   
   rs=CBean.executeQuery("select renwagrno from licrenewal where licno='" + lcno + "' ");
   if(rs.next())
   {
   agrno=rs.getString(1);
   }
   
   rs.close();
   

   %>
  <div align="center">
    <center>
    
    <input type=hidden name=sysdate value=<%=dt%>>
    
      <TABLE style="LEFT: 10px; ; TOP: 15px; HEIGHT: 61px" 
cellPadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b>Renewal 
              Of Work Order</b></font></div>
          </td>
        </tr>
       

              	<tr>
		</tr>
		 
        
		 <tr> 
          <td height="20" width="217"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Work 
            Order /Agreement No</font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="wano" onkeyup="AlphaNumeric(wano)"   value="<%=agrno%>" size="30" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8"  >
            </font><input type=hidden value="<%=lcno%>" name=lcno></td>
        </tr>
		
		<tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8"> 
            Dated </font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="wodated"   readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
		 
		 <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.wodated);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
			
			
			
			
			

            </font> </b></td>
        </tr>  
		
		
		
		<tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8"> 
            Date of Renewal</font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="rendate"   readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
		 
		 <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.rendate);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
			
			
			
			
			

            </font> </b></td>
        </tr>  
		
		
		
			<tr>
		</tr>
        
		<tr>
		</tr>
		
       
		
		
		<br>
		
		  
		
		
		   <tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Challan 
            No </font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="rnchno"  onkeyup="AlphaNumeric(rnchno)"  size="25" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		   <tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Date</font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="renchdate"  readonly  size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
<a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.renchdate);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
            </font> </b></td>
        </tr> 
		   <tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Amount</font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="renamt"  onkeyup="AlphaNumeric(renamt)"   size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		
		
		 <tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Date 
            Of Expiry</font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="dateofexp"  readonly  size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
<a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.dateofexp);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
            </font> </b></td>
        </tr> 
		<tr>
		
		
		
		  <td width="217"><font face="Geneva, Arial, Helvetica, san-serif"><b><font color="#000066" face="Verdana, Arial, Helvetica, sans-serif">WELFARE 
            FUND PAID DETAILS</font></b></font></TD>
					
		
		
		</tr>
		
		   
		   <tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Bank</font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="rwbank" value="Andhra Bank" size="45" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		
		   
		   <tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Date</font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="rwdate" readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
<a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.rwdate);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
            </font> </b></td>
        </tr> 
		
		     <tr> 
          <td height="20" width="217"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Amount</font></b></td>
          <td height="20" width="763" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="rwamt"   onkeyup="AlphaNumeric(rwamt)"    size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		
		
		
		
		
      
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="25"><font color="#CCFFCC"><b> <input type="submit"  value="  Renewal  " onClick="return CheckInput()" name="submit" style="font-weight: bold; cursor:hand;border-style: outset; border-width:0; color:#229CA8"  > 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <input type="reset" value="   Clear  "  onclick="ok()" name="reset" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8" > 
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