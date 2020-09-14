<link rel="stylesheet" type="text/css" href="../css/html-style.css">

<div class="subcontainer">
    <div class="qaDiv">
        <div class="qa-gridbox1">
            <?php if ($row['error']=="Minor") {?>
                <p style="background-color: #a6f6ff;"><?php echo $row['error']; ?></p>
            <?php } ?>
            <?php if ($row['error']=="Major") {?>
                <p style="background-color: #ffcd8f;"><?php echo $row['error']; ?></p>
            <?php } ?>
        </div>
      <div class="qa-gridbox2">
        <p><?php echo $row['item']; ?></p>
      </div>
        
      <div class="qa-gridbox2">
        <input type="hidden" name="wrongAnswer[]" value="<?php echo $row['answer']; ?>">
        <input type="hidden" name="error[]" value="<?php echo $row['error']; ?>">
          <select name="answer[]">
          <option value="N/A">N/A</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
          </select>
      </div>
    </div>
</div>
