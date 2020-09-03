<?php
include 'picard.php';
echo "<label>• <b>1</b><a style='color: gray'>(".$picard['first_attitude'].")</a><br/></label>";
echo "<label>• <b>2</b><a style='color: gray'>(".$picard['second_attitude'].")</a><br/></label>";
echo "<label>• <b>3</b><a style='color: gray'>(".$picard['third_attitude'].")</a><br/></label>";
    $query = "SELECT * FROM picard_table WHERE department_account = '".$account."' AND kash_name = 'Attitude' ";
    $result = mysqli_query($connection, $query);
    if (mysqli_num_rows($result) > 0) {
        while ( $row = mysqli_fetch_assoc($result)) {
?>
<script>
  function maxLengthCheck(object)
  {
    if (object.value.length > object.maxLength)
      object.value = object.value.slice(0, object.maxLength)
  }
</script>
<p>
	<br/><b><?php echo $row['kash_requirement']; ?></b>
</p>
<input type="hidden" name="AttitudeQuestions[]" value="<?php echo $row['kash_requirement']; ?>">
<input type="hidden" name="kash_standard_score[]" value="<?php echo $row['kash_standard_score']; ?>">
<label for="AttitudeAnswer">Rate from 1 - <?php echo $row['kash_standard_score'] ?>:</label><input type="number" min="1" max="<?php echo $row['kash_standard_score'] ?>" name="AttitudeAnswer[]" oninput="maxLengthCheck(this)" maxlength="1" required>
<?php
	}
}
?>