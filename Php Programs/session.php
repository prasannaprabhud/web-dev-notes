<?php 

session_start();

$ses = $_SESSION['views'];

$x = 1;

if( isset( $_SESSION['views'] )){
    $_SESSION['views'] = $_SESSION['views'] + 1;
    echo "This Page has been viewed " . $_SESSION['views'] . " times";
    // $x = $x + 1;
} else {
    $_SESSION['views'] = 1;
    echo "This Page has been viewed " . $_SESSION['views'] . "times";
    // $x = 1;
    // echo "This Page has been viewed " . $x . "times";
}

// if( isset( $_SESSION['views'] )){
//     $x = $x + 1;
//     echo "This Page has been viewed " . $x . " times" . '<br>';
//     echo '<a href="07_sessions.php">'. "click" . "</a>";
// } else {
//     $x = 1;
//     echo "This Page has been viewed " . $x . "time";
// }

?>