<?php
	include 'picard.php';
	if ($row['kash_requirement'] == 'Knowledge') {
		if ($row['scores'] < $row['standard_score']) {
		if ($row['scores'] == '1' && $row['standard_score'] == '2') { ?>
			<td style=" height: 100px; text-align: center;">
                <?php echo $picard['standard_comprehension']." ".$picard['actual_knowledge']." ".$picard['comprehension_con'];  ?>
            </td>
        <?php }
        if ($row['scores'] == '1' && $row['standard_score'] == '3') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_application']." ".$picard['actual_knowledge']." ".$picard['application_con']; ?>
                </td>
            <?php }
        if ($row['scores'] == '1' && $row['standard_score'] == '4') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_analysis']." ".$picard['actual_knowledge']." ".$picard['analysis_con']; ?>
                </td>
            <?php }  
        if ($row['scores'] == '1' && $row['standard_score'] == '5') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_evaluate']." ".$picard['actual_knowledge']." ".$picard['evaluate_con']; ?>
                </td>
            <?php }  
        if ($row['scores'] == '2' && $row['standard_score'] == '3') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_application']." ".$picard['actual_comprehension']." ".$picard['application_con']; ?>
                </td>  
            <?php }  
        if ($row['scores'] == '2' && $row['standard_score'] == '4') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_analysis']." ".$picard['actual_comprehension']." ".$picard['analysis_con']; ?>
                </td> 
            <?php }  
        if ($row['scores'] == '2' && $row['standard_score'] == '5') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_evaluate']." ".$picard['actual_comprehension']." ".$picard['evaluate_con']; ?>
                </td>  
            <?php }  
        if ($row['scores'] == '3' && $row['standard_score'] == '4') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_analysis']." ".$picard['actual_application']." ".$picard['analysis_con']; ?>
                </td> 
            <?php }  
        if ($row['scores'] == '3' && $row['standard_score'] == '5') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_evaluate']." ".$picard['actual_application']." ".$picard['evaluate_con']; ?>
                </td>  
            <?php }  
        if ($row['scores'] == '4' && $row['standard_score'] == '5') { 
            ?>
                <td style=" height: 100px; text-align: center;">
                    <?php echo $picard['standard_evaluate']." ".$picard['actual_analysis']." ".$picard['evaluate_con']; ?>
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