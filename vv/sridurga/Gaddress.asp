<% 



Rid = Request.QueryString("x")

 if Rid="" then
 Response.Redirect("index.asp")
end if


%>

<head>  
<title>Login Madhu Web Page</title>
</head>

<body>	

<center><img src=sree9.jpg>
</center>

<%


	
	name= Request.Form("txtcustomername")
	address1= Request.Form("txtaddress1")
	address2= Request.Form("txtaddress2")
        address3= Request.Form("txtaddress3")
        address4= Request.Form("txtaddress4")
        
        phone= Request.Form("txtphone")
        mobile= Request.Form("txtmobile")
		
	
	
	
	set conn = server.CreateObject ("ADODB.Connection")
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("db1.mdb")
	'Response.Write(server.MapPath ("db1.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")
	
	rs.Open "SELECT * FROM GCustomer",conn,3,3
	
	
	rs.AddNew 
	
	rs("Name")=name
	rs("Address1")=address1
	rs("Address2")=address2
        rs("Address3")=address3
        rs("Address4")=address4
        rs("Phone")=phone
        rs("Mobile")=mobile

	  

	
	rs.Update 
	
	
        set rs=nothing
	set conn=nothing

	Response.Write("<br><br><br><h3 align=center>" & "Your address received successfuly" & "</h3>")

 

 
		



%>




<br><br><br>
<center><A href=Javascript:history.go(-1)><img src=previous.gif></A></center>	



		
		
</body>

</html>
 
	
	