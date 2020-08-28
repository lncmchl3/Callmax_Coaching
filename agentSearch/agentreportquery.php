<?php
                    include('../connection.php');
                    

                            for($i = 0; $i < count($data); $i++){
                            $query1 = "SELECT * FROM agent_reports WHERE UPPER(" .$choices. ") LIKE UPPER('%" .$search. "%') AND UPPER(account) LIKE UPPER('".$data[$i]."') AND date_issued LIKE '".$date."%' ORDER BY id DESC,date_issued ASC limit 15";
                            $result1 = mysqli_query($connection, $query1);
                            if (mysqli_num_rows($result1) > 0) {
                            while ($row1 = mysqli_fetch_assoc($result1)) {
                    ?>