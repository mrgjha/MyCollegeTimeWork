



<%
dim Str

Str = Request.QueryString("x")

 if Str<>session("name")or Str="" then
 Response.Redirect("index.asp")
end if
'Response.write(Str)
%>
<html>
<head><title>Inventory System</title>
</head>
<body link="#000066" vlink="#000066" alink="#000066">

<center><img src=up_sreedurgastoreinventorysys7.jpg>
</center>






<center>


<img src="Balls10.gif">
<a href="javascript:"onClick="m=open('orderitem.asp?x=<%Response.write(Str)%>',
'OpenWindow','width=500,height=450,scrollbars=yes,location=1,resizable=0'); return true;">Send Your List</a>



<img src="Balls10.gif">
<a href="javascript:"onClick="m=open('proccesscancelleddata.asp',
'OpenWindow','width=450,height=400,scrollbars=yes,menubar=1,location=1',resizable=0); return true;">See Item Cancel Details</a>





<img src="Balls10.gif">
<a href="javascript:"onClick="m=open('proccessordereddata.asp',
'OpenWindow','width=450,height=400,scrollbars=yes,menubar=1,location=1',resizable=0); return true;">See Item Ordered Details</a>

</center>

<br>
<center><A href=Javascript:history.go(-1)><img src=previous.gif></A></center>	




<br><br>





<TABLE width=800 BORDER="10" CELLSPACING="0" CELLPADDING="4"  bordercolorlight="#00FF33" bordercolordark=#003300>

<TR bgcolor="#66FFCC">
   <TH>Item Id</TH>
   <TH>Item Name</TH>
   <TH>Unit</TH>
   <TH>Rate</TH>
   <TH>Quantity</TH>
   <TH>Remaining Quantity</TH>
   
   <TH>Value</TH>
   <TH>Tax Paid</TH>
<TH>Discount</TH>


</TR>

<%	

dim strsql
	
	ItemName = Request.Form("txtItemname")	
	
		
	
	set conn = server.CreateObject ("ADODB.Connection")		
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("db1.mdb")
	'Response.Write(server.MapPath ("user.mdb"))
	set rs = server.CreateObject ("ADODB.Recordset")		
	
		
	
strsql="SELECT * FROM Itemdetails where Items like '" & ItemName & "%" & "';"
rs.Open strsql,conn, 1  



	If rs.recordcount = 0 then

		rs.close
		conn.close
		set rs=nothing
		set conn=nothing
		


	end if
	
Do While Not rs.EOF 


    



%>



<TR>
  <TD width=20><b><font size="4" color="#FF0000"></b>
    <%=rs("item id")%>
  </TD>
  <TD width=590><b><font size="4" color="#FF0000"></b>
    <%=rs("ITEMS")%>
  </TD>
  <TD width=60><b><font size="4" color="#FF0000"></b>
     <%=rs("UNIT")%> 
  </TD>
  <TD width=50><b><font size="4" color="#FF0000"></b> 
     <%=rs("RATE")%> 

  </TD>
  <TD width=30><b><font size="4" color="#FF0000"></b>
      <%=rs("QTY")%>
  </TD>

<TD width=220><b><font size="4" color="#FF0000"></b>
      <%=rs("RQTY")%>

</TD>

<TD width=60><b><font size="4" color="#FF0000"></b>
      <%=rs("VALUE")%>
  </TD>


<TD width=50><b><font size="4" color="#FF0000"></b>
      <%=rs("TOT")%>
  </TD>

<TD width=10><b><font size="4" color="#FF0000"></b>
      <%=rs("DISCOUNT")%>
  </TD>






</TR> 

<!--  Move to next record and continue loop -->

<% 
rs.MoveNext
Loop



 

%>

</table>


		
</head>
</body>
</html>








