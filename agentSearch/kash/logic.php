<?php
	include 'picard.php';
	if ($row['kash_requirement'] == 'Knowledge') {
		if ($row['scores'] < $row['standard_score']) {
		if ($row['scores'] == '1') { ?>
			<td style=" height: 100px; text-align: center;">
                <?php echo $picard['k_level_one']; ?>
            </td>
        <?php }
        if ($row['scores'] == '2') { 
        ?>
        	<td style=" height: 100px; text-align: center;">
                <?php echo $picard['k_level_two']; ?>
            </td>
        <?php }
        if ($row['scores'] == '3') { 
        ?>
        	<td style=" height: 100px; text-align: center;">
                <?php echo $picard['k_level_three']; ?>
            </td>
        <?php }
        if ($row['scores'] == '4') { 
        ?>
        	<td style=" height: 100px; text-align: center;">
                <?php echo $picard['k_level_four']; ?>
            </td>
        <?php }
        if ($row['scores'] == '5') { 
        ?>
        	<td style=" height: 100px; text-align: center;">
                <?php echo $picard['k_level_five']; ?>
            </td>
	<?php 	}
		}
	}
?>
<?php
	if ($row['kash_requirement'] == 'Attitude') {
		if ($row['scores'] < 3) { ?>
			<td style=" height: 100px; text-align: center;">
                <?php echo $picard['a_level_one']; ?>
            </td>
	<?php }
	}
?>
<?php
	if ($row['kash_requirement'] == 'Habit') {
		if ($row['scores'] == '1') { ?>
			<td style=" height: 100px; text-align: center;">
                <?php echo $picard['h_level_one']; ?>
            </td>
        <?php }
        if ($row['scores'] == '2') { 
        ?>
        	<td style=" height: 100px; text-align: center;">
                <?php echo $picard['h_level_two']; ?>
            </td>
	<?php }
	}
?>