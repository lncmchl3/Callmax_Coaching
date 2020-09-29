<html>
<head>
</head>
<body>
<?php
    include '../connection.php';
?>
<?php
  $count = 0;
  
  $query = "SELECT * FROM agents WHERE account = '".@$_GET['account']."'";
  $result = mysqli_query($connection, $query);
  if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $count+=1;
      }
      echo "<i>Total Items for all category in the account:</i> <b>".$count."</b>";
    }
?>
<form action="proccessaddagent.php" method="post">
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
Agent name:</td><td> <input type="text" id="agent" name="agent" placeholder="Agent"></td>
</tr>
<tr>
<td>Account Manager:</td> <td><input type="text" id="am" name="am" placeholder="Account Manager"></td>
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
    document.getElementById('amSel').value = "<?php echo $_GET['am'];?>";
</script>

<!-- database connection  -->

</body>
</html>