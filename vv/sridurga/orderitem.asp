

<% 


Str = Request.QueryString("x")

 if Str<>session("name")or Str="" then
 Response.Redirect("index.asp")
end if


%>



<html>
<head><title>Send Your Item List</title>
</head>
<body link="#000066" vlink="#000066" alink="#000066">

<center><img src=sree10.jpg>
</center>












<center>

<form name="Order" method=post action="additem.asp?x=<%Response.write(Str)%>">


<center>


<TABLE BORDER="10" CELLSPACING="0" CELLPADDING="4" bordercolorlight="#00FF33" bordercolordark=#003300>

<tr>
<th>Enter Item Code:</th>
<th>Enter Quantity<th>
</tr>
<tr>
<td><input type="text" name="txtitemId1" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty1" value="" size=10 maxlength=10></td>
</tr>

<tr>

<td><input type="text" name="txtitemId2" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty2" value="" size=10 maxlength=10></td>
</tr>

<tr>
<td><input type="text" name="txtitemId3" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty3" value="" size=10 maxlength=10></td>
</tr>

<tr>
<td><input type="text" name="txtitemId4" value="" size=10 maxlength=10></td>

<td><input type="text" name="txtQty4" value="" size=10 maxlength=10></td>
</tr>

<tr>
<td><input type="text" name="txtitemId5" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty5" value="" size=10 maxlength=10></td>
</tr>


<tr>
<td><input type="text" name="txtitemId6" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty6" value="" size=10 maxlength=10></td>
</tr>

<tr>
<td><input type="text" name="txtitemId7" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty7" value="" size=10 maxlength=10></td>
</tr>

<tr>
<td><input type="text" name="txtitemId8" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty8" value="" size=10 maxlength=10></td>
</tr>

<tr>
<td><input type="text" name="txtitemId9" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty9" value="" size=10 maxlength=10></td>
</tr>

<tr>
<td><input type="text" name="txtitemId10" value="" size=10 maxlength=10></td>
<td><input type="text" name="txtQty10" value="" size=10 maxlength=10></td>
</tr>



<tr>
<td></td>
<td><input type="image" name="itemorder" src="add.jpg"></td>
</tr>

</table>
<br><br><br>
<center>

</form>
</center>
</center>
</body>
</html>
