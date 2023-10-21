<% 


Str = Request.QueryString("x")

 if Str<>session("name")or Str="" then
 Response.Redirect("index.asp")
end if


%>


<html>
<head><title>Inventory System</title>
</head>




<body>



<center><img src=up_sreedurgastoreinventorysys.jpg>
</center>

<br><br>



<center>

 
<form name=frmCreate method=POST action="searchitem.asp?x=<%Response.write(Str)%>"


<b><h3>Enter Item Name</h3><input type=text name=txtItemname size="13"
maxsize="3"></b>
<input type=submit name=cmdSubmit>

</form>








<form name=frmCreate method=POST action="searchcustomer.asp?x=<%Response.write(Str)%>"

<b><h3>Enter Customer ID</h3></b><input type=text name=txtCustomerID size="3" maxsize="3">

<input type=submit name=cmdSubmit>

<form>

</center>
<center>
<dl>
<img src="Balls10.gif">
<a href="javascript:"onClick="m=open('itemordered.asp?x=<%Response.write(Str)%>',
'OpenWindow','width=450,height=400,scrollbars=yes,location=1'); return true;">
See Your Inventory List</a>







<img src="Balls10.gif">
<a href="javascript:"onClick="m=open('itemcancelled.asp?x=<%Response.write(Str)%>',
'OpenWindow','width=450,height=400,scrollbars=yes,location=1',resizable=0); return true;">
See Your Cancelled Item</a>

</dl>
</center>
</head>
</body>
</html>













