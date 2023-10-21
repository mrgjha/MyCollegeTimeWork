




<%
	
	
	Content = ""							
	QStr = Request.QueryString("login")		
    
			
    
		
	if QStr="passfailed" then				
		Content = Content & "<P>Invalid password or Register ID</P><A href=Javascript:history.go(-1)><img src=previous.gif></A>"
	elseif QStr="createpassfailed" then		
		Content = Content & "<P>Invalid password</P><A href=Javascript:history.go(-1)><img src=previous.gif></A><BR><BR><A HREF=index.asp><img src=btn-login.gif></A>"
	elseif QStr="createregisterIDfailed" then
		Content = Content & "<P>Invalid RegisterID</P><A HREF=index.asp?login=createnew><img src=su.gif></A><BR><BR><A HREF=Javascript:history.go(-1)><img src=previous.gif></A>"
	elseif QStr="createnamefailed" then
		Content = Content & "<P>Username does already exist</P><A HREF=Javascript:history.go(-1)><img src=previous.gif></A><BR><BR><A HREF=Javascript:history.go(-1)><img src=btn-login.gif></A>"
	elseif QStr="createusernamefailed" then
		Content = Content & "<P>Invalid username</P><A HREF=Javascript:history.go(-1)><img src=previous.gif></A><BR><BR><A HREF=index.asp><img src=btn-login.gif></A>"
	elseif QStr="creatednew" then
		Content = Content & "Your account has been created<br><br><A HREF=index.asp><br><img src=btn-Login.gif></A>"
	
	    
	elseif QStr="createnew" then
		Content = Content & "<form name=frmCreate method=POST action=create.asp>"
		
		Content = Content & "Username<br><input type=text name=txtUsername><br><br>"
		Content = Content & "Password<br><input type=password name=txtPassword><br>"
		Content = Content & "<br><input type=image name=cmdSubmit src=su.gif>"
		Content = Content & "</form>"
	
	Content = Content & "<A HREF=Javascript:history.go(-1)><img src=previous.gif></A>"
	else
		Content = Content & "<form name=frmMain method=POST action=verify.asp>"
		

                Content = Content & "<b>Register Id</b><br><input type=text name=txtRID value=" & Qstr & ">"  
                


		Content = Content & "<b><br><br>Username</b><br><input type=text name=txtUsername><br>"
		Content = Content & "<b><br>Password</b><br><input type=password name=txtPassword><br>"
		Content = Content & "<br><input type=image name=cmdSubmit src=btn-login.gif>"
		Content = Content & "</form>"
		
		
		Content = Content & "<br><A HREF=index.asp?login=createnew><img src=su.gif></A><br>"
	    









	end if

%>

<!-- Build the page with the table -->
 <html>
<head>  
<title>Login Madhuri Web Page</title>
</head>

<body background="coolbg12.gif">


<%
	

	Response.Write("<br><br><br><center>" & Content & "</center>")	
	

	

%>


			



<center><img src="Balls10.gif">
<a href="javascript:"onClick="m=open('cp.asp',
'OpenWindow','width=220,height=350,resizable=0'); return true;"><b>Change Password</b></a></center>



		
</body>

</html>