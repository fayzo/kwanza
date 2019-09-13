<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Document</title>
</head>
<body>
            <?php
                //Columns must be a factor of 12 (1,2,3,4,6,12)
                $numOfCols = 4;
                $rowCount = 0;
                $bootstrapColWidth = 12 / $numOfCols;
                ?>
                <div class="row">
                <?php
                for ($i=0; $i < 10; $i++) { 
                ?>  
                        <div class="col-md-<?php echo $bootstrapColWidth; ?>">
                            <div class="thumbnail">
                                <img src="user_file/s; ?>">
                            </div>
                        </div>
                <?php
                    $rowCount++;
                    if($rowCount % $numOfCols == 0) echo '</div><div class="row">';
                }
        ?>
        </div>
</body>
</html>
<!-- 
*******************************
*******************************
*******************************
******************************* -->
<!-- < ?php

    $numberOfColumns = 3;
    $bootstrapColWidth = 12 / $numberOfColumns ;

    $arrayChunks = array_chunk($items, $numberOfColumns);
    foreach($arrayChunks as $items) {
        echo '<div class="row">';
        foreach($items as $item) {
            echo '<div class="col-md-'.$bootstrapColWidth.'">';
            // your item
            echo '</div>';
        }
        echo '</div>';
    }  
?> -->