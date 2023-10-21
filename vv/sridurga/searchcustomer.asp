

<% 



Str = Request.QueryString("x")

 if Str<>session("name")or Str="" then
 Response.Redirect("index.asp")
end if


%>



<html>
<head><title>Inventory System</title>
</head>
<body>
<center><img src=sree2.jpg>
</center>

<br>



<TABLE BORDER="5" CELLSPACING="0" CELLPADDING="4" bordercolorlight="#00FF33" bordercolordark=#003300>

<TR bgcolor="#66FFCC">
  
   <TH>Customer Id</TH>
   <TH>Customer Name</TH>
   <TH>Address</TH>
   <TH>Phone No</TH>
   <TH>Mobile</TH>
   <TH>Description</TH>
   <TH>Payment</TH>
   <TH>Balance</TH>
   

</TR>


<%	



dim strsql

	
	CustomerID = Request.Form("txtCustomerID")	
	
		
	
	set conn = server.CreateObject ("ADODB.Connection")		
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("db1.mdb")
	'Response.Write(server.MapPath ("user.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")		
	
		
	
strsql="SELECT * FROM customer where [Customer Id]='" & CustomerID & "';"
rs.Open strsql,conn, 1 
	
	
	If rs.recordcount = 0 then
		rs.close
		conn.close
		set rs=nothing
		set conn=nothing
		
	end if
	
Do While Not rs.EOF 
%>





<TR>
  
<TD width=20><b><font size="4" color="#FF0000"></b>
    <%=rs("Customer Id")%>
  

</TD>
  
<TD width=190><b><font size="4" color="#FF0000"></b>
    <%=rs("CustomerName")%>
  </TD>
  
<TD width=260><b><font size="4" color="#FF0000"></b>
     <%=rs("Address")%>
  </TD>
  
<TD width=50><b><font size="4" color="#FF0000"></b>
     <%=rs("PhoneNo")%>

  </TD>
  
<TD width=30><b><font size="4" color="#FF0000"></b>
      <%=rs("Mobile")%>
  </TD>


<TD width=20><b><font size="4" color="#FF0000"></b>
      <%=rs("Description")%>

</TD>


<TD width=30><b><font size="4" color="#FF0000"></b>
      <%=rs("Payment")%>
  </TD>



<TD width=30><b><font size="4" color="#FF0000"></b>
      <%=rs("Balance")%>
  </TD>






</TR> 

<% 
rs.MoveNext
Loop
%>



</TABLE>





 <br><br>
<center>
<TABLE BORDER="10" CELLSPACING="0" CELLPADDING="4" bordercolorlight="#00FF33" bordercolordark=#003300>

<tr>

<td><center>
<a href="<%Response.write(CustomerID)%>.asp?x=<%Response.write(Str)%>
"><img src=p2.jpg width=50 height=50></a></center></td>

</tr>
</table></center><br>
<center><A href=Javascript:history.go(-1)><img src=previous.gif></A></center>	




</BODY>
</HTML>


