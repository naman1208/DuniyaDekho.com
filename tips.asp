<html>
<head><title>tip of the day</title></head>
<body background="back5.jpg">
<a href=main.asp><img src=back.jpg height=50 width=50></a>
<center><font size= 8 color="7CFC00"> TIP OF THE DAY:</font></center><br>
<font size= 8 color="blue"> <a href="Home.asp">HOME</a></font>
<% 
set mycontrot=server.createobject("MSWC.contentrotator")
%>
<%=mycontrot.choosecontent("TIPS.txt")
%>
</body>
</html>
