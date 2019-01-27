<%
u=request.form("t1")
u=trim(u)

c=request.form("t2")
c=trim(c)

f=request.form("t3")
f=trim(f)



set con=server.createobject("ADODB.connection")
str="provider=microsoft.JET.OLEDB.4.0 ; data source=C:\Inetpub\wwwroot\feedback.mdb"
con.open str
set rs=server.createobject("ADODB.recordset")
rs.open "select * from table1", con,2,2

rs.addnew


rs("username")=u
rs("city")=c
rs("feedback")=f


rs.update

rs.close
response.redirect("main.asp")
%>
