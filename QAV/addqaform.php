<html>
<head>
</head>
<body>
<?php
    include '../connection.php';
?>
<?php
  $count = 0;
  
  $query = "SELECT * FROM qa_form WHERE account = '".@$_GET['account']."' ";
  $result = mysqli_query($connection, $query);
  if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $count+=1;
      }
      echo $count;
    }
?>
<form action="processqaform.php" method="post">
<select id="accountSel" name="account" required>
                          <?php if ($account == "" || $account == null) { ?>
                        <option value="" disabled selected hidden>SELECT ACCOUNT</option>
                          <?php } else { ?>
                        <option value=""><?php echo strtoupper($account); ?></option>
                          <?php } ?>
                          <?php
                          $query = "SELECT * FROM accounts";
                  $result = mysqli_query($connection, $query);
                  if (mysqli_num_rows($result) > 0) {
                      while ($row = mysqli_fetch_assoc($result)) {
                          ?>
                        <option value='<?php echo $row['name']; ?>'><?php echo strtoupper($row['name']); ?></option>
                          <?php
                      }
                  } ?>
</select><br/>
<input type="text" id="categorySel" name="category" placeholder="Category"><br/>
<textarea name="item" id="item" cols="30" rows="10" placeholder="Item"></textarea><br/>
<input type="text" name="answer" placeholder="Answer"><br/>
<select name="error" id="error">
<option value="Minor">Minor</option>
<option value="Major">Major</option>
</select><br/><br/>
<input type="submit" value="Insert to DB">
</form>
<script type="text/javascript">
    document.getElementById('accountSel').value = "<?php echo $_GET['account'];?>";
    document.getElementById('categorySel').value = "<?php echo $_GET['category'];?>";
</script>

<!-- database connection  -->

</body>
</html>