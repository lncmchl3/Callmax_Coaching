<link rel="stylesheet" type="text/css" href="../css/html-style.css">

<div class="subcontainer">

  <div class="kashphp">

    <div class="kash-top-box">
        <?php echo $row['item']; ?>
</div>
<!-- end of rateDiv -->

</div>
<!-- end of kashphp -->

</div>
<!-- end of subcontainer -->


<input type="hidden" name="wrongAnswer[]" value="<?php echo $row['answer']; ?>">
<div class="kashphp">
        <select name="answer[]">
        <option value="N/A">N/A</option>
            <option value="Yes">Yes</option>
            <option value="No">No</option>
        </select>
</div>