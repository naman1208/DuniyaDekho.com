<%
n=request.form("t1")
n=trim(n)
d=request.form("t2")
d=trim(d)
ps=request.form("t3")
ps=trim(ps)
c=request.form("t4")
c=trim(c)

set con=server.createobject("ADODB.connection")
str="provider=microsoft.JET.OLEDB.4.0 ; data source=C:\Inetpub\wwwroot\travel.mdb"
con.open str
set rs=server.createobject("ADODB.recordset")
rs.open "select * from T1",con,2,2

rs.addnew
rs("NAME")=n
rs("DOB")=d
rs("PASSWORD")=ps
rs("COUNTRY")=c
rs.update
response.write("<script>")
response.write("window.open('w.html','_top')")
response.write("</script>")
rs.close
%>
