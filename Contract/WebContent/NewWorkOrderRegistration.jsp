<script>
function Go()
{
 Licfrm.lcno.focus();
	Licfrm.lcno.value="DCL/VSP/CL/";
	
	Licfrm.lcno.focus();
	
}


function NoCheck(obj)
{
n = event.keyCode;
len=obj.value;
if((n<=57 && n>=48) ||  n==8 || n==9 || (n<=105 && n>=96) || n==46)
{
}else
{
 obj.value="";

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

   
   if(Licfrm.lcno.value=="DCL/VSP/CL/" || Licfrm.lcno.value=="" )
	{
	Licfrm.lcno.focus();
	
	alert("Please Enter License Number");
	Licfrm.lcno.focus();
	Licfrm.lcno.value="DCL/VSP/CL/"
	Licfrm.lcno.focus();
	
		return false;
	}else if(Licfrm.wano.value=="")
	{
	alert("Please Enter Work Order/Agreement No");
	Licfrm.wano.focus();
	
	return false;
	}else if(Licfrm.wodated.value=="")
	{
	alert("Please Enter Work Order Date");
	Licfrm.wodated.focus();
	
	return false;
	}else if(Licfrm.fp.value=="")
	{
	alert("Please Enter Fee Paid Amount");
	Licfrm.fp.focus();
	
	return false;
	}else if(Licfrm.islicdate.value=="")
	{
	alert("Please Enter License Issued Date");
	Licfrm.islicdate.focus();
	
	return false;
	}else if(Licfrm.cadname.value=="")
	{
	  alert("Please Enter Contractor Name And Address");
	  Licfrm.cadname.focus();
	  return false;
	}else if(Licfrm.noworkers.value=="")
	{
	alert("Please Enter No Of Workers");
	Licfrm.noworkers.focus();
	return false;
	} else if(Licfrm.nowork.value=="")
	{
	alert("Please Enter Nature Of Work");
	Licfrm.nowork.focus();
	
	return false;
	}else if(Licfrm.rendt.value=="")
	{
	alert("Please Enter Work Order Renwal Date");
	Licfrm.rendt.focus();
	
	return false;
	}  else if(Licfrm.schno.value=="")
	{
	alert("Please Enter  Security Challan No");
	Licfrm.schno.focus();
	
	return false;
	}else if(Licfrm.sdate.value=="")
	{
	  alert("Please Enter Challan Date");
	  Licfrm.sdate.focus();
	  return false;
	}else if(Licfrm.samt.value=="")
	{
	  alert("Please Enter Security Amount");
	  Licfrm.samt.focus();
	  return false;
	}   else if(Licfrm.wbank.value=="")
	{
	alert("Please Enter  Welfare Fund Paid Bank Name");
	Licfrm.wbank.focus();
	
	return false;
	}else if(Licfrm.wchno.value=="")
	{
	  alert("Please Enter Code No");
	  Licfrm.wchno.focus();
	  return false;
	}else if(Licfrm.wdate.value=="")
	{
	  alert("Please Enter Welfare Fund Paid Date ");
	  Licfrm.wdate.focus();
	  return false;
	} else if(Licfrm.wamt.value=="")
	{
	  alert("Please Enter Welfare Fund Paid Amount ");
	  Licfrm.wamt.focus();
	  return false;
	}else if(sel==1)
	{
   
   
   var Date1=new Date();
   var Date2=new Date();
   var Date3=new Date();
   
   var Date4=new Date();
   
   var Date5=new Date();
   
    var Date6=new Date();
       var Date7=new Date();
    
    
    
     dt1=Licfrm.wodated.value;
    
   dt4=Licfrm.dtofwork.value;
    
   dt2=Licfrm.sysdate.value;
   
   dt3=Licfrm.islicdate.value;
   
   dt5=Licfrm.rendt.value;
      
   
  dt6=Licfrm.sdate.value;
  dt7=Licfrm.wdate.value;
  
    
   
   
   
   
	
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
   
   var day7=dt7.substring(0,2);
    var mon7=dt7.substring(3,6);
    var year7=dt7.substring(7,11);
   
   

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
      
      
      if(mon7=="Jan")
            {
               mon7=01;
            }else if(mon7=="Feb")
            {
            mon7=02;
            
            }else if(mon7=="Mar")
            {
            mon7=03;
            
            }else if(mon7=="Apr")
            {
            mon7=04;
            
            }else if(mon7=="May")
            {
            mon7=05;
            
            }else if(mon7=="Jun")
            {
            mon7=06;
            
            }else if(mon7=='Jul')
            {
            mon7=07;
            
            }else if(mon7=="Aug")
            {
            mon7=08;
            
            }else if(mon7=="Sep")
            {
            mon7=09;
            
            }else if(mon7=="Oct")
            {
            mon7=10;
            
            }else if(mon7=="Nov")
            {
            mon7=11;
            
            }else if(mon7=="Dec")
            {
               mon7=12;
            
      }
      
   
   
   
   
  
   Date1.setFullYear(year1,mon1,day1);
   Date2.setFullYear(year2,mon2,day2);
   Date3.setFullYear(year3,mon3,day3);   
   
     Date4.setFullYear(year4,mon4,day4);   
     
     Date5.setFullYear(year5,mon5,day5);   
     
     
     
     Date6.setFullYear(year6,mon6,day6);  
     
     
     Date7.setFullYear(year7,mon7,day7);  
     
   if(Date1>Date2)
   {
     alert("Work Order Agreement Date Should Not be Greater than the Current Date");
     return false;
   }else if(Date3>Date2)
  {  
	 alert("License Issued Date Should Not be Greater than the Current Date");
     return false;
  }else if(Date4>Date2)
  {
     alert("Date Of Work Should Not be Greater than the Current Date");
     return false;
     
  
  }else if(Date5<=Date4)
  {
     alert("Renewal Date Should Not be less than or equal to the Work Order Issued Date ");
     return false;
  
  }else if(Date5<=Date2)
  {
     
     alert("Renewal Date Should Not be less than or equal to the current date ");
          return false;
     
  
  }else if(Date6>Date2)
  {
     
     alert("Security Deposite Paid Date Should Not be Greater than the current date ");
          return false;
     
  
  }else if(Date7>Date2)
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
         Licfrm.lcno.value="DCL/VSP/CL/";
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



	
   Licfrm.lcno.focus();
	Licfrm.lcno.value="DCL/VSP/CL/";
	
	Licfrm.lcno.focus();

}


</script>
<html>
<head>
</head>
<body onload="setfocus()" >
<form name="Licfrm" method="get" action="WorkOrderRegister">

<jsp:include page="MemberHeader.html" />
  <%@page import="java.sql.*,java.util.Date,gld.*" %>
  <%
  
  
   Connection con=null;
   ResultSet rs=null;
    String  padname="";
   String dt="";
    String rcno=request.getParameter("rcno").toUpperCase();
    
  try
  {
   
  
   
   ConnectionBean CBean=new ConnectionBean();
   rs= CBean.executeQuery("select to_char(sysdate,'dd-Mon-yyyy') from dual");
                 
         rs.next();
	 dt=rs.getString(1);
	 rs.close();
	 
	 
   con=CBean.getConnection();
   rs=CBean.executeQuery("select company from company_master where rcno='" + rcno + "' ");
   rs.next();
   
    
  
   
   
   
   
   padname =rs.getString(1);
   
   rs.close();
   
   }catch(Exception ex)
   {
   
    out.println("Error"+ex);
	
   }
   
   %>
  <div align="center">
    <center>
      <input type=hidden name=sysdate value=<%=dt%>>
      
      <TABLE style="LEFT: 10px; ; TOP: 15px; HEIGHT: 61px" 
cellPadding=0 border=0 bordercolorlight="#668CA2" bordercolordark="#668CA2" bgcolor="#FFFFFF" width="100%" height="50" align="center">
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="19"> 
            <div align="left"><font color="#FFFFFF" face="Verdana" size="2"><b>New 
              Work Order Details Entry Form</b></font></div>
          </td>
        </tr>
        <tr> 
          <td colspan="2" height="19"><font face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#3366CC">Registration 
            Number:</font></b> <b><%=rcno%></b><input type=hidden value="<%=rcno%>" name=rcno > </font></td>

			
		   
        </tr>

        <tr> 
          <td colspan="2" height="19">
            <p><font face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#3366CC">Name 
              Of The principal Employer:</font></b><b> <%=padname%></b> </font></p>
            <p>&nbsp;</p>
          </td>
		   
        </tr>

              	<tr>
		</tr>
		 
        <tr> 
          <td height="20" width="185"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">License 
            No </font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="lcno"  value="DCL/VSP/CL/"size="30" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" onblur="validateLno(this.value)" >
            </font></td>
        </tr>
		
		 <tr> 
          <td height="20" width="185"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Work 
            Order /Agreement No</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="wano"  onkeyup="AlphaNumeric(wano)" size="30" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8"  >
            </font></td>
        </tr>
		
		<tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8"> 
            Dated </font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="wodated"   readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
		 
		 <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.wodated);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
			
			
			
			
			

            </font> </b></td>
        </tr>  
		
		 <tr> 
          <td height="20" width="185"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Fee 
            Paid </font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="fp"  onkeyup="AlphaNumeric(fp)" size="30" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8"  >
            </font></td>
        </tr>
		
		
		<tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8"> 
            License Issue Date</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="islicdate"   readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
            <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.islicdate);
			 return false;" HIDEFOCUS tabIndex=5> <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt=""> 
            </a> </font> </b></td>
        </tr>  
		
		
		
			<tr>
		</tr>
        <tr> 
          <td height="20" width="185"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Name 
            and Address of Contractor</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <textarea name="cadname"  maxlength=100 cols=30 rows=4 style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" ></textarea>
            </font></b></td>
        </tr>
		
		<tr> 
          <td height="20" width="185"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Phone 
            No/Mobile No</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="phno" onkeyup="NoCheck(this)" maxlength=12 size="30" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" onblur="validateLno(this.value)" >
            </font></td>
        </tr>
		
		
		
		
		<tr>
		</tr>
		
        <tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Engaging 
            No of Workers</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="noworkers"  onkeyup="AlphaNumeric(noworkers)" size="60" maxlength=250 style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr>      
		
		<tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Nature 
            of Work</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <textarea name="nowork"  onkeyup="AlphaNumeric(nowork)"  maxlength=250 cols=50 rows=4 style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" ></textarea>
			
			

            </font> </b></td>
        </tr>     
		
		
		<tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8"> 
            Date Of Work</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="dtofwork" value=<%=dt%>  readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
		 
		 <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.dtofwork);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
			
			
			
			
			

            </font> </b></td>
        </tr>    
		
		
				<tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8"> 
            Work Renwal Date</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="rendt"  readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
		 
		 <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.rendt);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
			
			
			
			
			

            </font> </b></td>
        </tr>
		
		<br>
		
		   <tr> 
          <td height="20" width="185" bgcolor="#FFFFBB"> 
            <div align="center"><b></b></div>
          </td>
          <td height="20" width="795" bgcolor="#FFFFBB"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">SECURITY 
            DEPOSITE</font></b></td>
        </tr> 
		
		
		   <tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Challan 
            No </font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="schno" onkeyup="AlphaNumeric(schno)"  size="25" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		   <tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Date</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="sdate"  readonly  size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
<a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.sdate);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
            </font> </b></td>
        </tr> 
		   <tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Amount</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="samt"  onkeyup="AlphaNumeric(samt)"   size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		
			   <tr> 
          <td height="20" width="185" bgcolor="#FFFFBB"> 
            <div align="center"><b></b></div>
          </td>
          <td height="20" width="795" bgcolor="#FFFFBB"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">WELFARE 
            FUND PAID</font></b></td>
        </tr> 
		   <tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Bank</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="wbank" value="Andhra Bank" size="45" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		   <tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Code 
            No </font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="wchno"  onkeyup="AlphaNumeric(wchno)"  size="25" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		   <tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Date</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="wdate" readonly size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >
<a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.Licfrm.wdate);
			 return false;" HIDEFOCUS tabIndex=5> 
			 <img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
			</a>
            </font> </b></td>
        </tr> 
		
		     <tr> 
          <td height="20" width="185"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#227CA8">Amount</font></b></td>
          <td height="20" width="795" bgcolor="#FFFFFF"><b> <font face="Verdana, Arial, Helvetica, sans-serif"> 
            <input type="text" name="wamt"   onkeyup="AlphaNumeric(wamt)"  size="15" style="font-family: Verdana; font-weight: bold; border-style: outset; border-width: 1; color:#227CA8" >

            </font> </b></td>
        </tr> 
		
		 
        <tr bgcolor="#FFFFFF"> 
          <td colspan="2" align="center" height="25"> 
            <div align="left"><b><font color="#CCFFCC"><b></b></font></b></div>
          </td>
        </tr>
        <tr bgcolor="#227CA8"> 
          <td colspan="2" align="center" height="25"><font color="#CCFFCC"><b> <input type="submit"  value="  Save  " onClick="return CheckInput()" name="submit" style="font-weight: bold; cursor:hand;border-style: outset; border-width:0; color:#229CA8"  > 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <input type="reset" value="   Clear  "   name="reset" style="font-weight: bold;cursor:hand; border-style: outset; border-width:0; color:#229CA8" onclick="Go()" > 
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