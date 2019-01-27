<html>
<body background=assa.jpg>
<a href=main.asp><img src=back.jpg height=50 width=50></a>
<%
vote=request.querystring("choice")
if vote="india" then
mycount.increment("incounter")
elseif vote="canada" then
mycount.increment("cacounter")
elseif vote="U.A.E" then
mycount.increment("uecounter")
elseif vote="australia" then
mycount.increment("aucounter")
elseif vote="U.S.A" then
mycount.increment("uscounter")
end if
%>
<center>
<form name="frm" method="get" action="counters.asp">
<h3>Vote for your favourite place</h3>
<input type="radio" name="choice" checked value="india">India<br>
<input type="radio" name="choice" value="canada">Canada<br>
<input type="radio" name="choice" value="U.A.E">U.A.E<br>
<input type="radio" name="choice" value="australia">Australia<br>
<input type="radio" name="choice" value="U.S.A">U.S.A<br>
<input type="submit" name="submit choice" >
</form>
<h3>Current vote tally</h3>
<table border =1>
<tr> <td width=100>India</td>
<td width=30> <%=mycount.get("incounter")%></td></tr>
<tr> <td >Canada</td>
<td > <%=mycount.get("cacounter")%></td></tr>
<tr> <td >U.A.E</td>
<td > <%=mycount.get("uecounter")%></td></tr>
<tr> <td >Australia</td>
<td > <%=mycount.get("aucounter")%></td></tr>
<tr> <td >U.S.A</td>
<td > <%=mycount.get("uscounter")%></td></tr>
</table></center></body>
</html>