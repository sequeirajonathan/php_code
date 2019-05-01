<?php

$rows = 7;
$cols = 7;

echo "<table border =\"1\" style='border-collapse: collapse'>"; 

for ($row = 0; $row <= $rows; $row++) { // first loop
    echo "<tr> \n";
    for ($col = 0; $col <= $cols; $col++) { //2nd loop
        if($row == 0 && $col == 0)
            echo '<td> x </td>';
        else if ($row == 0 && $col != 0)
            echo "<td>$col</td>";
        else if ($row != 0 && $col == 0)
            echo "<td>$row</td>";
        else {
            $p = $col * $row; 
            echo "<td>$p</td> \n";
        }

    }
    echo "</tr>";
}
echo "</table>"; 