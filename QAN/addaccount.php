<html>
<head>
</head>
<body>
<?php
    include '../connection.php';
?>
<form action="processaddaccount.php" method="post">
<table border="1">
<tr>
<td>
Account name:</td><td> <input type="text" id="account" name="account" placeholder="Account"></td>
</tr>
<tr>
<td>Account Status:</td> <td><input type="text" id="status" name="status" placeholder="Status"></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="Insert to DB">
</td>
</tr>
</table>
</form>

<!-- database connection  -->

</body>
</html>