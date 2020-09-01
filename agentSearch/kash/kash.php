<?php
    $query = "SELECT * FROM picard_table WHERE department_account = '".$account."' AND kash_name = 'Knowledge' ";
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
<label for="KnowledgeAnswer" name="KnowledgeQuestions">Rate from 0 - <?php echo $row['kash_standard_score'] ?> : </label><input type="number" min="1" max="<?php echo $row['kash_standard_score'] ?>" name="KnowledgeAnswer" oninput="maxLengthCheck(this)" maxlength="1"> 
<?php
	}
}
?>