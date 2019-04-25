<?php
$plural = 's';
foreach (range(99, 1) as $i) {
    echo "$i bottle$plural of beer on the wall, <br >";
    echo "$i bottle$plural of beer!<br >";
    echo "Take one down, pass it around!<br >";
    if ($i - 1 == 1)
        $plural = '';
 
    if ($i > 1)
        echo ($i - 1) . " bottle$plural of beer on the wall!<br ><br >";
    else
        echo "No more bottles of beer on the wall!<br >";
}

echo "<br >";
echo "No more bottles of beer on the wall, no more bottles of beer. <br /> ";
echo "Go to the store and buy some more, 99 bottles of beer on the wall.";