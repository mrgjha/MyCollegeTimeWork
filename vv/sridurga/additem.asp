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


<%


	
	ItemID = Request.Form("txtitemId1") & "/" & Request.Form("txtQty1") & "-" & Request.Form("txtitemId2") & "/" & Request.Form("txtQty2") & "-" & Request.Form("txtitemId3") & "/" & Request.Form("txtQty3") & "-" & Request.Form("txtitemId4") & "/" & Request.Form("txtQty4") & "-" & Request.Form("txtitemId5") & "/" & Request.Form("txtQty5") & "-" & Request.Form("txtitemId6") & "/" & Request.Form("txtQty6") & "-" & Request.Form("txtitemId7") & "/" & Request.Form("txtQty7") & "-" & Request.Form("txtitemId8") & "/" & Request.Form("txtQty8") & "-" & Request.Form("txtitemId9") & "/" & Request.Form("txtQty9") & "-" &  Request.Form("txtitemId10") & "/" & Request.Form("txtQty10")
	
		
	
	
	
	set conn = server.CreateObject ("ADODB.Connection")
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("db1.mdb")
	'Response.Write(server.MapPath ("db1.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")
	
	rs.Open "SELECT * FROM Itemorder",conn,3,3
	
	
	rs.AddNew 
	
	rs("Rid")=Str
	rs("ItemID")=ItemID
	
	  

	
	rs.Update 
	
	

	Response.Write("<br><br><br><h3 align=center>" & "Database Updated successfuly" & "</h3>")

 

 
		



%>






<center><img src=sree8.jpg>
</center>
<br><br><Br>
	
<center><A href=Javascript:history.go(-1)><img src=previous.gif></A></center>	
		
		
</body>

</html>
 
	
	