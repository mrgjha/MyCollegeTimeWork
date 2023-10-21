<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Obbai &gt; Search &gt; Submit a Site</title>
<%@ LANGUAGE="VBSCRIPT"%>
<%Response.Buffer = True%>
<% StrConn="DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("obbai.mdb") %>
<%
Function ChkString(string)
	 if string = "" then string = " "
	 ChkString = Replace(string, "'", "''")
End Function
	%>



<%
select case Request.querystring("mode")
	case "add"
		Call add
	case "Form"
		Call Form
	Case Else
		Call Form
	End Select
%>
<%
sub add


Set objConn = Server.CreateObject ("ADODB.Connection")
objConn.Open StrConn
Set objRec2 = Server.CreateObject ("ADODB.Recordset")

%>
<%

url = Request.Form("link")
set rscheck = objConn.Execute ("Select link from search where link='" & URL & "'")
		if rscheck.eof then

been_here_before="No"
end if
RScheck.close

if been_here_before="No" then 
	
	strSql = "insert into  search   (name, link, keywords, description) values ('"
	strSql = StrSql & Request.Form("name") & "', '"
	strSql = StrSql & Request.Form("link") & "', '"
	strSql = StrSql & Request.Form("keywords") & "', '"
	strSql = StrSql & Request.Form("description") & "')"
	objConn.Execute (StrSql)
Response.Write "Thank You for submitting your site...your site was successfully added to Obbai's search engine"
		else		
		Response.Write "The url you submitted is already in our database - if you want to make any changes please contact: webmaster@Obbai.com"
		objConn.Close 
set objConn = nothing
		end if
	%>

<%

Set objRec2 = Nothing

end sub
%>



<% sub form %>
<body bgcolor="#FFFFFF">

<div align="center">
  <center> 
       
<p><font face="Verdana"><font size="6">Obbai</font>
<font size="4" color="#FF0000">search engine</font></font></p>

    </center>
</div>
<p align="left"><font face="Verdana">Term &amp; Conditions:</font><br>
<font face="Verdana" size="2">1- Make sure that the URL is valid<br>
2- Your site will be added to the search engine after less than 10 seconds<br>
3- You cannot resubmit a link using this page - if you want to update a 
submission please contact
<a href="mailto:support@yoursite.com?subject=Update Listing">support</a></font><br>
<font face="Verdana" size="2">4- Write ONLY the site's title in the name field<br>
5- Please don't use any promotional or words in your description (e.g. The best 
site - get free car!)</font><br>


</p>

</p>
<form method="POST" action="submit.asp?mode=add" onsubmit="return FrontPage_Form1_Validator(this)" language="JavaScript" name="FrontPage_Form1">
  <div align="center">
    <center>
  <table border="0" width="60%" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111">
    <tr>
      <td width="100%" colspan="2" bgcolor="#CCFF99" bordercolor="#003366">
      <p align="center"><b><font face="Arial" color="#003366">Submit a Site</font></b></td>
    </tr>
    <tr>
      <td width="30%" bgcolor="#FFFFCC" style="border-top: 2px solid #E7EFFA; "><font face="Arial" color="#000080"><b>
      &nbsp;Name </b></font></td>
      <td width="70%" bgcolor="#FFFFCC" style="border-top: 2px solid #E7EFFA; ">
        <p style="margin-top: 3; margin-bottom: 3">
        <input type="text" name="name" size="48" style="background-color: #FFFFFF; font-family: Arial; color: #000000; border: 1px solid #000080"></p>
      </td>
    </tr>
    <tr>
      <td width="30%" bgcolor="#FFFFCC" style="border-top: 2px solid #E7EFFA; "><font face="Arial" color="#000080"><b>
      &nbsp;Keywords </b></font></td>
      <td width="70%" bgcolor="#FFFFCC" style="border-top: 2px solid #E7EFFA; ">
        <p style="margin-top: 3; margin-bottom: 3">
        <input type="text" name="keywords" size="48" style="background-color: #FFFFFF; font-family: Arial; color: #000000; border: 1px solid #000080"></td>
    </tr>
    <tr>
      <td width="30%" bgcolor="#FFFFCC" style="border-top: 2px solid #E7EFFA; "><font face="Arial" color="#000080"><b>&nbsp;U</b></font><b><font face="Arial" color="#000080">RL </font></b></td>
      <td width="70%" bgcolor="#FFFFCC" style="border-top: 2px solid #E7EFFA; ">
        <p style="margin-top: 3; margin-bottom: 3">
        <input type="text" name="link" size="48" style="background-color: #FFFFFF; font-family: Arial; color: #000000; border: 1px solid #000000; " value="http://"></p>
      </td>
    </tr>
    <tr>
      <td width="30%" bgcolor="#FFFFCC" style="border-top: 2px solid #E7EFFA; "><font face="Arial" color="#000080"><b>
      &nbsp;Description </b></font></td>
      <td width="70%" bgcolor="#FFFFCC" style="border-top: 2px solid #E7EFFA; ">
        <p style="margin-top: 3; margin-bottom: 3">
        <input type="text" name="description" size="48" style="background-color: #FFFFFF; font-family: Arial; color: #000000; border: 1px solid #000080"></p>
      </td>
    </tr>
  </table>
    </center>
  </div>
  <p align="center">
  <input type="submit" value="Add to Obbai" name="B1" style="background-color: #FFFFFF; font-family: Arial; color: #000080; font-weight: bold; border: 1px solid #003366; "></p>
</form>

<p align="center"><font face="Verdana" size="2">
<a href="http://www.zainoo.com/obbai">Powered by Obbai search engine</a></font></p>


<% end sub %>