<%@ page session="false"%>
<!DOCTYPE html>
<html>
<body>
<div>
<form name="personalInfoForm" action="PersonalInfoServlet" method="post">
<table>
<tr>
<td>Enter firstName :-</td>
<td><input type="text" name="firstName">
</tr>
<tr>
<td>Enter LastName :-</td>
<td><input type="text" name="lastName"></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form>
</div>
</body>
</html>