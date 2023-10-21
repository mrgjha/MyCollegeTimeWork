<% 


Str = Request.QueryString("x")

 if Str<>session("name")or Str="" then
 Response.Redirect("index.asp")
end if


%>

<head>  
<title>Login Madhu Web Page</title>
</head>

<body>	

<center><img src=sree12.jpg>
</center>

<%


	
	rID = Request.Form("txtr")
	
	
set conn = server.CreateObject ("ADODB.Connection")
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("db1.mdb")
	'Response.Write(server.MapPath ("db1.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")
	
	rs.Open "SELECT * FROM Cancel",conn,3,3
	
	
	rs.AddNew 
	
	rs("RID")=Str
	rs("ItemID")=rID
	
	  

	
	rs.Update 
	
	
	
	Response.Write("<br><br><br><h3 align=center>" & "Database Updated successfuly" & "</h3>")
%>
<br><br><br>

<center><A href=Javascript:history.go(-1)><img src=previous.gif></A></center>	
		

		
		
		
</body>

</html>
 
	
	