
<?php
include 'picard.php';
echo "<label>• <b>1</b><a style='color: gray'>(".$picard['first_knowledge'].")</a><br/></label>";
echo "<label>• <b>2</b><a style='color: gray'>(".$picard['second_knowledge'].")</a><br/></label>";
echo "<label>• <b>3</b><a style='color: gray'>(".$picard['third_knowledge'].")</a><br/></label>";
echo "<label>• <b>4</b><a style='color: gray'>(".$picard['fourth_knowledge'].")</a><br/></label>";
echo "<label>• <b>5</b><a style='color: gray'>(".$picard['fifth_knowledge'].")</a><br/></label>";
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
<input type="hidden"  name="KnowledgeQuestions[]" value="<?php echo $row['kash_requirement']; ?>">
<input type="hidden"  name="kash_standard_score[]" value="<?php echo $row['kash_standard_score']; ?>">
<label for="KnowledgeAnswer">Rate from 1 - <?php echo $row['kash_standard_score']; ?> : </label><input type="number" min="1" max="<?php echo $row['kash_standard_score']; ?>" name="KnowledgeAnswer[]"  maxlength="1" required> 
<!-- <?php
 for ($i=1; $i <= $row['kash_standard_score'] ; $i++) { 
	if ($i == 1) {
		echo '<input type="radio" name="KnowledgeAnswer[]">'.$picard['first_knowledge'];
	}
	if ($i == 2) {
		echo '<input type="radio" name="KnowledgeAnswer[]">'.$picard['second_knowledge'];
	}
	if ($i == 3) {
		echo '<input type="radio" name="KnowledgeAnswer[]">'.$picard['third_knowledge'];
	}
	if ($i == 4) {
		echo '<input type="radio" name="KnowledgeAnswer[]">'.$picard['fourth_knowledge'];
	}
	if ($i == 5) {
		echo '<input type="radio" name="KnowledgeAnswer[]">'.$picard['fifth_knowledge'];
	}
} ?> -->

<?php
	}
}
?>