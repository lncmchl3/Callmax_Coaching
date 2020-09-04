
<link rel="stylesheet" type="text/css" href="../css/html-style.css">

  <div class="subcontainer">

    <div class="kashphp">

      <div class="kash-top-box">
        <?php
        include 'picard.php';
        echo "<label><span>1</span> (".$picard['first_attitude'].")</label>";
        echo "<label><span>2</span> (".$picard['second_attitude'].")</label>";
        echo "<label><span>3</span> (".$picard['third_attitude'].")</label>";
        $query = "SELECT * FROM picard_table WHERE department_account = '".$account."' AND kash_name = 'Attitude' ";
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

    <div class="rateDiv">

      <h3><?php echo $row['kash_requirement']; ?></h3>

      <input type="hidden" name="AttitudeQuestions[]" value="<?php echo $row['kash_requirement']; ?>">
      <input type="hidden" name="kash_standard_score[]" value="<?php echo $row['kash_standard_score']; ?>">

      <label for="AttitudeAnswer">Rate from 1 - <?php echo $row['kash_standard_score'] ?>:</label>
      <input type="number" min="1" max="<?php echo $row['kash_standard_score'] ?>" name="AttitudeAnswer[]" oninput="maxLengthCheck(this)" maxlength="1" required>
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
