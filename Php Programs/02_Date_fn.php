<?php 
/* l, L, F, t, N, Z, h:i:sa d-m-y */
echo "Today's Date is : " . date("d-m-y") . "<br>";
echo "Today's Date is : " . date("d.m.y") . "<br>";
echo "Today's Date is : " . date("d/m/y") . "<br>";

echo "Today's Day : " . date("l") . "<br>";
echo "Is This Leap Year : " . date("L") . "<br>";

echo "Number of days in : " . date("F") . " is " .date("t") . "<br>";
echo "Numeric day of the week is : " . date("N") ."<br>";

echo "Day of the year : " . date("Z") . "<br>";
echo "Time is : " . date("h:i:sa") ."<br>";

$d = mktime(19,14,54,8,12,14) ;
echo "Created date is : " . date("y-m-d h:i:sa", $d ) . "<br>";

$d = strtotime("10:30 PM April 18 2014");
echo "Created Date is : " . date("y-m-d h:i:sa",$d) . "<br>";

$d = strtotime("Tomorrow");
echo "Created date is : " . date("y-m-d h:i:sa",$d) . "<br>";

$d = strtotime("Next Saturday");
echo "Create Date is : " . date("y-m-d h:i:sa",$d)  . "<br>";

$d = strtotime("+3 Months");
echo "Create Date is : " . date("y-m-d h:i:sa",$d) . "<br>";

?>