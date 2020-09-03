<!DOCTYPE html>
<style>


    /*        input[type=text]:focus {
              width: 50%;
            }*/

    button {
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
        font-size: 16px; 
        margin: 10px;
        padding: 12px 20px 12px 20px;
        /*-webkit-transition: width 0.4s ease-in-out;*/
        /*transition: width 0.4s ease-in-out;*/

    }
    select {
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        /*        background: url('searchicon.png');
                background-position: 10px 10px; 
                background-image: url('searchicon.png');*/
        /*background-repeat: no-repeat;*/
        margin-bottom: 10px;
        margin-top: 10px;

        padding: 12px 10px 12px 10px;
        /*-webkit-transition: width 0.4s ease-in-out;*/
        /*transition: width 0.4s ease-in-out;*/

    }
    .topnav {
        position: relative;
        overflow: hidden;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .topnav-centered {
        float: none;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        position: relative;
        top: 0;
        left: 0;
        transform: none;
    }
    a{
        text-decoration: none;
        color: black; 
    }
    .ab{
        text-decoration: none;
        color: cornflowerblue; 
    }

    .topnav {
        position: relative;
        overflow: hidden;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .topnav-centered {
        float: none;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        position: relative;
        top: 0;
        left: 0;
        transform: none;
    }
    a{
        text-decoration: none;
        color: black; 
    }
    .ab{
        text-decoration: none;
        color: cornflowerblue; 
    }
    td{
        padding: 10px;
        /*vertical-align: top;*/

    }
    th{
        padding: 10px;
    }

    table {
        empty-cells: hide;
        border-collapse: collapse;
    }
    .table_div{
        overflow-y: auto;
        height: 30em;
        width: 90%;
    }
    .table_div tbody tr:hover {
        background-color: #ddd;
        cursor: pointer;
    }

    .table_div input[type=text] {
        width: 30%;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        background-size: 25px;
        background-position: 10px; 
        background-repeat: no-repeat;
        margin: 10px;
        padding: 12px 20px 12px 20px;
        /*-webkit-transition: width 0.4s ease-in-out;*/
        /*transition: width 0.4s ease-in-out;*/
    }

    .header{
        height: 40px;
        padding: 20px 20px 0;
        background: #e1e1e1;
    }
    .header form button{
        float: right;

    }

    .main-content{
        height: 60vh;
        padding: 20px;
    }
    footer{
        padding: 10px 20px;
        background: #666;
        color: white;
    }
    a{
        color: #00aaff;
    }
    thead{
        background-color: #e3e3e3;
    }
    .table_div p{
        font-size: 36px;
    }

</style>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="searchicon.png">
        <title>Coaching System - Agents</title>
    </head>
    <body>

        <?php

            $sessionUser = $_GET["s"];
            $id = $_GET["n"];


        ?>

    <center>
        <div class="header"> <b>Callmax Coaching Acknowledge Report</b></div>
    </center>



    <form  method="post" action="AgentSearch.php" autocomplete="off" class="active">    
        <button type="submit">Back</button>
    </form>
    <center>
        <div class="table_div">
            <p>
                Copy the Link below:
            </p>
            <input type="text" value="localhost/Backup/Callmax_Coaching/agentSearch/acknowledgementlink.php?TeAeltAhnToeskvLoinegeeTohWgGeonwpIknsraTBdTRhilTicliehtt=<?php echo $id; ?>&s=<?php echo $sessionUser ?>" id="myInput" readonly>
            <button onclick="myFunction()">Copy text</button>
            <script>
                function myFunction() {
                    var copyText = document.getElementById("myInput");
                    copyText.select();
                    copyText.setSelectionRange(0, 99999);
                    document.execCommand("copy");
                }
            </script>
        </div>




    </center>

    <footer>
        <p>Coaching System © Callmax Solutions. All rights reserved.</p>
    </footer>
</body>
</html>
