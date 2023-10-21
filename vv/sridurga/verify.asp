

<%
	
	dim z
	
	
    
	
	
	
	
	
	
	Username = Request.Form("txtUsername")	
	Password = Request.Form("txtPassword")
	RID=Request.Form("txtRID")
	if RID= "" then Response.Redirect("index.asp?login=createregisterIDfailed")
	if Username= "" then Response.Redirect("index.asp?login=createusernamefailed")
	if Password= "" then Response.Redirect("index.asp?login=createpassfailed")
	
	
	
	
	set conn = server.CreateObject ("ADODB.Connection")		
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("user.mdb")
	'Response.Write(server.MapPath ("user.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")		
	
	rs.Open "SELECT * FROM userlist where username='"& Username &"'", conn, 1 
	
	
	If rs.recordcount = 0 then
		rs.close
		conn.close
		set rs=nothing
		set conn=nothing
		Response.Redirect("index.asp?login=createusernamefailed")
	end if
	
	if rs("password") = Password and rs("registerID")=RID then
		Session("name") =rs("registerID") & rs("password") & rs("username")
		
		rs.Close
		conn.Close
		set rs=nothing
		set conn=nothing
	
		z=RID & Password & Username 
		
		Response.Redirect("itemsearch.asp?x=" & z)
	
	else
		rs.Close
		conn.Close
		set rs=nothing
		set conn=nothing
		Response.Redirect("index.asp?login=passfailed")
	
end if
%>
