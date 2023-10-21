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

<center><img src=up_sreedurgastoreinventorysys3.jpg>
</center>

<%


	
	RID = Request.Form("txtrId")
	
	
set conn = server.CreateObject ("ADODB.Connection")		
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("db1.mdb")
	'Response.Write(server.MapPath ("user.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")		
	
	

strsql = "delete FROM Itemorder where Rid like '" & RID & "%" & "';"

  
conn.execute strsql
	
	
	
	
	
	Response.Write("<br><br><br><h3 align=center>" & "Item deleted successfuly" & "</h3>")
%>
<br><br><br>
<center><A href=Javascript:history.go(-1)><img src=previous.gif></A></center>	
<center><a href="itemsearch.asp?x=<%Response.write(Str)%>
"><img src=HOME_OFF.gif></a></center>
		
		
		
</body>

</html>
 
	
	