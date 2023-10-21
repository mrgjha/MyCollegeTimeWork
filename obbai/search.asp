<!---#INCLUDE FILE="adovbs.inc"--->
<% response.buffer = "true" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Obbai &gt; Search Results</title>
</head>

<body bgcolor="#FFFFFF">

<div align="center">
  <center> 
       
<p><font face="Verdana"><font size="6">Obbai</font>
<font size="4" color="#FF0000">search engine</font></font></p>

    </center>
</div>

<%
if request("keyword") = "" then
%>
<h3><font face="Verdana">Please Enter Keywords</font></h3>
<%
else
%>
<table border="0" width="100%" height="27">
  <tr>
<td height="23">
<form action="search.asp" method="get">
<p align="center"> 
        <font face="Verdana"> 
        <INPUT TYPE="text" NAME="keyword" SIZE="25" style="font-size: 8pt; font-family: Verdana; border: 1px solid #CCCCFF; color:#6699CC"> 
        <INPUT TYPE="submit" VALUE="Search" style="font-size: 8pt; font-family: Verdana; border: 1px solid #6699CC; background-color: #E7EFFA" name="submit">
        <font size="1"><a href="submit.asp">Submit a site</a></font></font></p>
<p align="left"><strong>
    <font color="#000080" face="Verdana" size="4"><a href="default.asp">Obbai</a></font><font face="Verdana" size="4" color="#6699CC"> &gt; Search Results</font></strong></p>
</form>
</td></tr></table>
<table border="0" width="100%">
  <tr>
<%
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("obbai.mdb")

Dim mypage, mypagesize
mypage=request.querystring("whichpage")
mypagesize=request("pagesize")
If  mypage="" then
   mypage=1
end if
If  mypagesize="" then
  mypagesize=10
end if
 
Dim RS, sql 
set RS = Server.CreateObject("ADODB.Recordset")
keyword = request("keyword")
sql = "select * from search where name like '%" & keyword & "%' or link like '%" & keyword & "%' or description like '%" & keyword & "%' or keywords like '%" & keyword & "%';"
RS.Open sql, conn, adOpenStatic, adLockReadOnly, adCmdText
if NOT RS.EOF then
RS.movefirst
    
RS.pagesize=mypagesize
 Dim maxpages, maxpage, maxrecs, howmanyrecs, howmanyfields
 Dim close, open, iResultCount, ok
 Dim whichpage, all
 
 RS.Movefirst
 maxpages=cint(RS.pagecount)
 maxpage = maxpages
 maxrecs=cint(RS.pagesize)
 RS.absolutepage=mypage
 howmanyrecs=0
 howmanyfields=RS.fields.count -1
 close = "]"
 open = "["
else
 close = ""
 open = ""
end if

if NOT RS.Eof Then
 iResultCount = (mypagesize * (mypage - 1)) + 1
 else
 iResultCount = "0"
 end if

 if iResultCount + 9 > RS.recordcount then
    ok = RS.recordcount
    else
    ok = iResultCount + 9
  end if
 all = RS.recordcount

do UNTIL RS.eof OR howmanyrecs>=maxrecs
if NOT RS.eof then
link = RS("link")
name = RS("name")
description = RS("description")

%><font face="Verdana"> </font>
        <td width="100%"><font face="Arial" size="2" color="#000080"><%= iResultCount %></font><font face="Verdana" size="2" color="#000080">. </font>
        <b><font face="Verdana" size="2" color="#000080"><a href="<%= link %>"><%= name %></a></font></b><font face="Verdana">
          <br>
          </font>
          <font face="Verdana" size="2" color="navy"><%= description %></font><font face="Verdana">
         <br><br>
         </td>
      </tr>
      
  <% 

iResultCount = iResultCount + 1
end if
RS.Movenext
response.flush
howmanyrecs=howmanyrecs+1
loop
maxrecs = RS.recordcount
%> </font>
    
    </table>
<%
if Not iResultCount = 0 then

Dim w2, pad, k2, ref, scriptname, isPrev, isNext, isEnd, counter
Dim nextpage, prevpage, intPageDisp, counterstart, counterend, pagesize2, again

pad=""
scriptname=request.servervariables("script_name")
if iResultCount <> "0" Then
  response.write "<font size='2' color='black' face='Verdana, Arial,Helvetica, sans-serif'>&nbsp;Result Page: "
else
end if
      if (mypage mod 10) = 0 then
       counterstart = mypage - 9
      else
       counterstart = mypage - (mypage mod 10) + 1
      end if
      counterend = counterstart + 9
      if counterend > maxpages then counterend = maxpages
       Response.Write open
       for counter=counterstart to counterend
       If counter>=10 then
       pad=""
       end if
       if cstr(counter) <> mypage then
       ref="<a href='" & scriptname
       ref=ref & "?whichpage=" & counter & "&pagesize=" & mypagesize
       ref=ref & "&keyword=" & keyword & "'>" & pad & counter & "</a>"
       else
       ref="<b>" & pad & counter & "</b>"
       end if
       response.write ref
       if counter <> counterend then response.write " "
      next
      Response.Write close
' Find out if there should be Backward or Forward Buttons on the table.
intPageDisp = False
if mypage = 1 AND RS.recordcount = 9 then
   isPrev = False
   isNext = False
   isEnd = True
elseif mypage = 1 then
   isPrev = False
   isNext = True
   isEnd = False
elseif mypage > 1 AND ok = RS.recordcount then
   isPrev = True
   isNext = False
   isEnd = True
else
   isPrev = True
   isNext = True
   isEnd = False
End If
if RS.recordcount <= 10 then
isNext = False
else
nextpage = mypage + 1
prevpage = mypage - 1
end if
If isPrev = False AND isNext = True AND isEnd = False then
w2 = " &nbsp;<strong><a HREF=" & scriptname & "?whichpage=" & nextpage & "&pagesize=" & mypagesize & "&keyword=" & keyword & "><font face=Arial size=2>[Next&nbsp;&gt;]</font></a></strong>"
k2 = ""
End If
if isPrev = True AND isNext = True AND isEnd = False then
w2 = " &nbsp;<strong><a HREF=" & scriptname & "?whichpage=" & prevpage & "&pagesize=" & mypagesize & "&keyword=" & keyword & "><font face=Arial size=2>[<&nbsp;previous]</font></a></strong>"
k2 = " &nbsp;<strong><a HREF=" & scriptname & "?whichpage=" & nextpage & "&pagesize=" & mypagesize & "&keyword=" & keyword & "><font face=Arial size=2>[Next&nbsp;&gt;]</font></a></strong>"
end if
if isPrev = True AND isNext = False AND isEnd = True then
w2 = " &nbsp;<strong><a HREF=" & scriptname & "?whichpage=" & prevpage & "&pagesize=" & mypagesize & "&keyword=" & keyword & "><font face=Arial size=2>[<&nbsp;previous]</font></a></strong>"
k2 = ""
end if
if isPrev = False AND isNext = False AND isEnd = true then
w2 = ""
k2 = ""
end if
response.write w2 & k2
response.write "" & again

else

response.write "<center><br><br><br><br>No Results Found</center>"

end if

RS.close
set RS=nothing
end if
%>        

<p align="center"><font face="Verdana" size="2">
<a href="http://www.zainoo.com/obbai">Powered by Obbai search engine</a></font></p>
</body>

</html>