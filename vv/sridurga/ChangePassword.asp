<html>
<head>  
<title>Login Madhu Web Page</title>
</head>

<body>	



<%


Dim ChangePass
Set ChangePass = Server.CreateObject("ADODB.Connection")

ConnStr = "DRIVER={Microsoft Access Driver (*.mdb)}; "
ConnStr = ConnStr & "DBQ=" & Server.MapPath("User.mdb")
ChangePass.Open(ConnStr)

SQLtemp = "SELECT * FROM userlist WHERE registerID = '" & Request.form("txtregister") & "'"

Set rs = ChangePass.Execute(SQLtemp)

while not rs.eof

If Request.Form("txtOp") = rs("password") then
   

SQL="UPDATE userlist SET password='" & Request.Form("txtNp") & "' WHERE registerID='" & Request.Form("txtregister") & "'"
   
ChangePass.Execute(SQL)

   

   
End If
   rs.MoveNext
Wend

   

rs.Close
ChangePass.Close
set ConnStr = Nothing

%>

<br><br><br>
<center><A href=Javascript:history.go(-1)><img src=previous.gif></A></center>	
		
		
</body>

</html>