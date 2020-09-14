
<link rel="stylesheet" type="text/css" href="../css/html-style.css">

<div class="subcontainer">

  <div class="kashphp">

    <div class="kash-top-box">

<?php
include 'picard.php';
echo "<label><span>1</span> (".$picard['first_knowledge'].")</label>";
echo "<label><span>2</span> (".$picard['second_knowledge'].")</label>";
echo "<label><span>3</span> (".$picard['third_knowledge'].")</label>";
echo "<label><span>4</span> (".$picard['fourth_knowledge'].")</label>";
echo "<label><span>5</span> (".$picard['fifth_knowledge'].")</label>";
    $query = "SELECT * FROM picard_table WHERE department_account = '".$account."' AND kash_name = 'Knowledge' ";
    $result = mysqli_query($connection, $query);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
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

<input type="hidden"  name="KnowledgeQuestions[]" value="<?php echo $row['kash_requirement']; ?>">
<input type="hidden"  name="kash_standard_score[]" value="<?php echo $row['kash_standard_score']; ?>">

  <div class="a-gridbox2">
    <label for="KnowledgeAnswer">Rate from 1 - <?php echo $row['kash_standard_score']; ?> : </label>

    <input type="number" min="1" max="<?php echo $row['kash_standard_score']; ?>" name="KnowledgeAnswer[]"  maxlength="1" required>
  </div>



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

</div>
<!-- end of rateDiv -->

</div>
<!-- end of kashphp -->

</div>
<!-- end of subcontainer -->
