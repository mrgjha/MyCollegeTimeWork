


<%
dim Str

Str = Request.QueryString("x")

 if Str<>session("name")or Str="" then
 Response.Redirect("index.asp")
end if

%>

<html>
<head><title>Inventory System</title>
</head>
<body link="#000066" vlink="#000066" alink="#000066">

<center><img src=sree13.jpg>
</center>


<center>



<form name="Cancelitem" method=post action="delrcid.asp?x=<%Response.write(Str)%>"

<dl>
<img src="Balls10.gif"><b>Enter Register ID</b> <input type="text" name="txtrID" value="" size=20 maxlength=20>

<input type="image" name="rid" src="delete.gif">
</dl>

</form>




<form name="Cancelitem" method=post action="delcitem.asp?x=<%Response.write(Str)%>"

<dl>


<img src="Balls10.gif"><b>Update Cancel List<b> <input type="text" name="txtr" value="" size=10 maxlength=10>


<input type="image" name="itemorder" src="delete.gif">
</dl>
</form>

</center>


<br><br>


<center>
<TABLE BORDER="10" CELLSPACING="0" CELLPADDING="4" bordercolorlight="#00FF33" bordercolordark=#003300>

<TR bgcolor="#66FFCC">
   
<TH>Register Id</TH>
  
   <TH>Cancelled Item</TH>
  


</TR>

<%	


	dim strsql
	
		
	
	set conn = server.CreateObject ("ADODB.Connection")		
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("db1.mdb")
	'Response.Write(server.MapPath ("user.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")		
	
	strsql="SELECT * FROM Cancel where RID='" & Str & "';"

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
  <TD width=290><b><font size="4" color="#FF0000"></b>
    <%=rs("RID")%>
  </TD>
  <TD width=290><b><font size="4" color="#FF0000"></b>
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








