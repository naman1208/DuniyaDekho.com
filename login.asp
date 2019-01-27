<%
nm=request.form("t1")
p=request.form("t2")
set con=server.createobject("ADODB.connection")
str="provider=microsoft.JET.OLEDB.4.0;data source=C:\Inetpub\wwwroot\travel.mdb"
con.open str
set rs=server.createobject("ADODB.recordset")
rs.open "T1",con,2,2
do while not rs.eof
if nm=rs("NAME") and p=rs("PASSWORD") then
response.write("<script>")
response.write("window.open('main.asp','_top')")
response.write("</script>")
exit do
end if
rs.movenext
loop
rs.close
%>
