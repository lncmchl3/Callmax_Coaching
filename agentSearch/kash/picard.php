<?php
	//Knowledge
	$concatenate['Knowledge'] = ' and also for ';
	$picard['first_knowledge'] = 'I am aware.';
	$picard['second_knowledge'] = 'I understand.';
	$picard['third_knowledge'] = 'I can.';
	$picard['fourth_knowledge'] = 'I can justify.';
	$picard['fifth_knowledge'] = 'I can propose.';
	$row;

	//composed sentence
	$picard['k_level_one'] = 'Agent is only aware of '.$row['Questions'].'. TL should facilitate coaching and mentoring session to help the agent transition from only being aware to being able to '.$row['equivalent_word'].' the '.$row['Questions'].'.'; //1
	$picard['k_level_two'] = 'Agent is aware of '.$row['Questions'].' but is only able to understand. TL should facilitate coaching and mentoring sessions to help the agent be able to '.$row['equivalent_word'].' the '.$row['Questions'].'.'; //2
	$picard['k_level_three'] = 'Agent is able to do The '.$row['Questions'].'. TL should facilitate coaching and mentoring session to help agent to be able to '.$row['equivalent_word'].' the '.$row['Questions'].'.'; //3
	$picard['k_level_four'] = 'Agent is able to analyze and justify '.$row['Questions'].'. TL should facilitate coaching and mentoring session to help agent to be able to evaluate '.$row['Questions'].'. '; //4
	$picard['k_level_five'] = 'Good job! The agent is aware, able to understand, can execute,  analyze, and evaluate '.$row['Questions'].'.'; //5

	//Attitude
	$picard['first_attitude'] = 'What\'s important to you.';
	$picard['second_attitude'] = 'What\'s important to me.';
	$picard['third_attitude'] = 'What\'s important to you is important to me.';

	//composed sentence
	// if ($row['scores'] < $row['standard_score']) {
	// 	$array = array();
	// 	array_push($array, $row['Questions'])
	// 	for ($i=0; $i < ; $i++) { 
	// 		# code...
	// 	}
	// }
	$picard['a_level_one'] = 'Agent recognizes the importance of being '.$row['Questions'].'. However, TL should be able to impart the importance of being '.$row['Questions'].' to both the agent and the TL, through coaching and mentoring sessions.';

// for ($i=0; $i < count($questions_arr); $i++) { echo $questions_arr[$i] ", "; }

	//skill
	$picard['first_skill'] = 'I saw.';
	$picard['second_skill'] = 'I tried.';
	$picard['third_skill'] = 'I did.';

	//composed sentence

	//habit
	$picard['first_habit'] = 'Thinking before doing.';
	$picard['second_habit'] = 'Thinking while doing.';
	$picard['third_habit'] = 'Doing.';

	//composed sentence
	$picard['h_level_one'] = 'Agent is thinking before being '.$row['Questions'].'. TL should provide coaching and mentoring sessions to help the agent transition from thinking before doing to thinking while doing.';
	$picard['h_level_two'] = 'Agent is thinking while doing while being '.$row['Questions'].'. TL should provide coaching and mentoring sessions to help the agent transition from thinking while doing, to only doing.';
	
?>