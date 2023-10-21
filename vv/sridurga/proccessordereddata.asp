



<html>
<head><title>Inventory System</title>
</head>
<body link="#000066" vlink="#000066" alink="#000066">

<center><img src=sree11.jpg>
</center>
<br><br>

<TABLE border=1>

<TR>
   
<TH>Register Id</TH>
  
   <TH>ItemId/Qty-ItemId/Qty</TH>
  


</TR>

<%	


	dim strsql
	
		
	
	set conn = server.CreateObject ("ADODB.Connection")		
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("db1.mdb")
	'Response.Write(server.MapPath ("user.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")		
	
	strsql="SELECT * FROM Itemorder;"

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
  <TD width=290><b><font size="4"></b>
    <%=rs("Rid")%>
  </TD>
  <TD width=290><b><font size="4"></b>
    <%=rs("ItemID")%>
  </TD>
  
 

</TR> 

<!--  Move to next record and continue loop -->

<% 
rs.MoveNext
Loop



 

%>

</table>
<br><br><br>


<br><br><br>
<center>
	
</head>
</html>








