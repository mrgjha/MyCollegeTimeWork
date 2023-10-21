<%@ LANGUAGE="VBScript" %>
<%Option Explicit%>


<%
dim Str

Str = Request.QueryString("x")

 if Str<>session("name")or Str="" then
 Response.Redirect("index.asp")
end if
'Response.write(Str)
%>

<html>

<head>  
<title>Madhuri Web Page</title>
</head>
<script>



function testfield(){

if (document.frmMain.txtFirstName.value.length==0|
document.frmMain.txtLastName.value.length==0|
document.frmMain.txtEmail.value.length==0|
document.frmMain.txtComments.value.length==0)
{
alert("Entry Missing")
return false

}

else {

alert("Entry Complete Thanks")
return true }
}
</script>





<body background=COOLBG03.gif>
<center><img src=w.jpg>
</center>



<%



Function SafeForSQL(strIn)
	SafeForSQL = Replace(strIn, "'", "''")
End Function


If Request.Form("cmdSubmit") <> "" Then


	Dim con, strCon, strSql, strDatabasePath


	strDatabasePath = ".\User.mdb"

	Set con = Server.CreateObject("ADODB.Connection")	
	strCon = "PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA SOURCE=" & Server.MapPath(strDatabasePath)	
	con.Open strCon
	
	strSql =	"INSERT INTO FormData (FirstName, LastName, Email, Comments) " + _
				"VALUES ('" + SafeForSQL(Request.Form("txtFirstName")) + "', " + _
				"'" + SafeForSQL(Request.Form("txtLastName")) + "', " + _
				"'" + SafeForSQL(Request.Form("txtEmail")) + "', " + _
				"'" + SafeForSQL(Request.Form("txtComments")) + "')"

	con.Execute(strSql)
	
	con.Close
	Set con = Nothing
%>








                               <br><br><br> <center><b>Thanks For Submitting Your Comments</center></b><br><br>
                                
                             <center><font color=#ff0000><a href="UserComment.asp?x=<%Response.write(Str)%>
                             "><img src=previous.gif></a><br><br><br>My E-mail: gyanendra_jha@rediffmail.com</center></font><br><br><br>
<%
Else
%>

	<form name="frmMain" onSubmit="return testfield()" action="UserComment.asp?x=<%Response.write(Str)%>" method="post">
	<center>	<table>
		<tr>
			<td><b>First Name:</td></b>
			<td><input type="text" name="txtFirstName" value=""></td>
                        
		</tr>
		<tr>
			<td><b>Last Name:</td></b>
			<td><input type="text" name="txtLastName" value=""></td>
		</tr>
		<tr>
			<td><b>Email:</td></b>
			<td><input type="text" name="txtEmail" value=""></td>
		</tr>
		<tr>
			<td colspan="2">
				<b>Comments:<br /></b>
				<textarea name="txtComments" cols="50" rows="5"></textarea>
			</td>


		</tr>
		<tr>
			<td align="leftt"><input type="submit" name="cmdSubmit" value="Submit"></td>
			
		
		
		
		
		</tr>
		
		
		
		
		
		</table></center>
	</form>



<%	
End If
%>

<center><a href="madhu.asp?x=<%Response.write(Str)%>
"><img src=Balls4.gif></a></center>
</body>
</html>