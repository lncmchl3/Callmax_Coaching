<link rel="stylesheet" type="text/css" href="../css/html-style.css">


<div class="subcontainer">

  <div class="kashphp">

    <div class="kash-top-box">
<?php
include 'picard.php';
echo "<label><span>1</span> (".$picard['first_habit'].")</label>";
echo "<label><span>2</span> (".$picard['second_habit'].")</label>";
echo "<label><span>3</span> (".$picard['third_habit'].")</label>";
    $query = "SELECT * FROM picard_table WHERE department_account = '".$account."' AND kash_name = 'Habit' ";
    $result = mysqli_query($connection, $query);
    if (mysqli_num_rows($result) > 0) {
        while ( $row = mysqli_fetch_assoc($result)) {
?>

</div>
<!-- end of kash-top-box -->

<script>
  function maxLengthCheck(object)
  {
    if (object.value.length > object.maxLength)
      object.value = object.value.slice(0, object.maxLength)
  }
</script>


<div class="aDiv">
  <div class="a-gridbox1">
    <h3><?php echo $row['kash_requirement']; ?></h3>
  </div>


<input type="hidden" name="HabitQuestions[]" value="<?php echo $row['kash_requirement']; ?>">
<input type="hidden" name="kash_standard_score[]" value="<?php echo $row['kash_standard_score']; ?>">

  <div class="a-gridbox2">
    <label for="HabitAnswer">Rate from 1 - <?php echo $row['kash_standard_score'] ?>:</label><input type="number" min="1" max="<?php echo $row['kash_standard_score'] ?>" name="HabitAnswer[]" oninput="maxLengthCheck(this)" maxlength="1" required>
  </div>

<?php
	}
}
?>


</div>
<!-- end of rateDiv -->

</div>
<!-- end of kashphp -->

</div>
<!-- end of subcontainer -->
