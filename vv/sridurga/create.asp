
<head>  
<title>Login Madhu Web Page</title>
</head>

<body>	


<%

dim y

	
	Username = Request.Form("txtUsername")
	Password = Request.Form("txtPassword")
	RID = "SD" & "G" & day(Date) & month(Date) & year(Date) & hour(time) & minute(time) & second(time)
	
	y=RID & Username & Password
	Session("name")=RID & Username & Password
	if Username = "" then Response.redirect("index.asp?login=createusernamefailed")
	if Password = "" then Response.Redirect("index.asp?login=createpassfailed")
	
	set conn = server.CreateObject ("ADODB.Connection")
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("user.mdb")
	'Response.Write(server.MapPath ("user.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")
	
	rs.Open "SELECT * FROM userlist", conn, 3, 3 
	
	
	do while not rs.EOF
		if rs("username")=Username then
			set rs=nothing
			set conn=nothing
			Response.Redirect("index.asp?login=createnamefailed")
		end if
		rs.MoveNext
	loop
		
	rs.AddNew 
	
	rs("username")=Username
	rs("password")=Password
	rs("registerID")=RID
	  

	
	rs.Update 
	
	set rs=nothing
	set conn=nothing

	'Response.Redirect("index.asp?login=creatednew")
%>


<center><img src=sree7.jpg>
</center>


		
	<%
	'Response.Write("<h3 align=center><u>" & Title & "</u></h3><br><br>")
	Response.Write("<br><br><br><h3 align=center>" & "Your Register ID=" & RID & "</h3>")	 

	%>


<br>


<center><a href="index.asp?login=<%Response.write(RID)%>
"><img src=btn-Login.gif></a></center>
		
	
	
<form name=frmaddress method=POST action="Gaddress.asp?x=<%Response.write(y)%>">

<center>



<TABLE BORDER="10" CELLSPACING="0" CELLPADDING="4" bordercolorlight="#00FF33" bordercolordark=#003300>

<TR bgcolor="#66FFCC">
   <TH>Customer Name</TH>
   <TH>Address 1</TH>
   <TH>Address 2</TH>


</TR>


<TR>
<TD><input type=text name=txtcustomername size="20"
maxsize="20"></TD>

<TD><input type=text name=txtaddress1 size="20"
maxsize="20"></TD>

<TD><input type=text name=txtaddress2 size="35"
maxsize="35"></TD>





</tr>


<TR>
<TH>Address 3</TH>
<TH>Address 4</TH>

<TH>Phone/Mobile</TH>

</tr>
<tr>
<TD><input type=text name=txtaddress3 size="20"
maxsize="20"></TD>
<TD><input type=text name=txtaddress4 size="20"
maxsize="20"></TD>


<TD>

<input type=text name=txtphone size="15"  maxsize="15">
<input type=text name=txtmobile size="16" maxsize="16">


</td>

</tr>


</TABLE>
</center>
<br>
<br>
<center><input type=submit name=cmdSubmit></center>

</form>

			
		
</body>

</html>
 
	
	