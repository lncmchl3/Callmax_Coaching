<html>
<head>
</head>
<body>
<?php
    include '../connection.php';
?>
<?php
  $count = 0;
  
  $query = "SELECT * FROM qa_form WHERE account = '".@$_GET['account']."'";
  $result = mysqli_query($connection, $query);
  if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $count+=1;
      }
      echo "<i>Total Items for all category in the account:</i> <b>".$count."</b>";
    }
?>
<form action="processqaform.php" method="post">
<table border="1">
<tr>
<td>
Select Account:
</td>
<td>
<select id="accountSel" name="account" required>
                          <?php if ($account == "" || $account == null) { ?>
                        <option value="" disabled selected hidden>SELECT ACCOUNT</option>
                          <?php } else { ?>
                        <option value=""><?php echo strtoupper($account); ?></option>
                          <?php } ?>
                          <?php
                          $query = "SELECT * FROM accounts ORDER BY name ASC";
                  $result = mysqli_query($connection, $query);
                  if (mysqli_num_rows($result) > 0) {
                      while ($row = mysqli_fetch_assoc($result)) {
                          ?>
                        <option value='<?php echo $row['name']; ?>'><?php echo strtoupper($row['name']); ?></option>
                          <?php
                      }
                  } ?>
</select>
</td>
</tr>
<tr>
<td>
Input Category:</td><td> <input type="text" id="categorySel" name="category" placeholder="Category"></td>
</tr>
<tr>
<td>Input Item:</td> <td><textarea name="item" id="item" cols="30" rows="10" placeholder="Item"></textarea></td>
</tr>
<tr>
<td>Input Answer to trigger error:</td> <td><select name="answer" id="answer">
<option value="Yes">Yes</option>
<option value="No">No</option>
</select></td>
</tr>
<tr>
<td>Choose if Major/Minor:</td> <td><select name="error" id="error">
<option value="Minor">Minor</option>
<option value="Major">Major</option>
</select></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="Insert to DB">
</td>
</tr>
</table>
</form>
<script type="text/javascript">
    document.getElementById('accountSel').value = "<?php echo $_GET['account'];?>";
    document.getElementById('categorySel').value = "<?php echo $_GET['category'];?>";
</script>

<!-- database connection  -->

</body>
</html>