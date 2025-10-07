<?php 

// $i = 60*60*24*60 + time();
// echo $i . "<br>";
// echo 60*60*24*60 . "<br>";
// echo time() . "<br>";
// echo setcookie( 'lastVisit', date("h:i d/m/y"), $i ) . "<br>"; 
// echo $_COOKIE['lastVisit'] . "<br>";
// echo date("h:i d/m/y") . "<br>";

    // setcookie( 'lastVisit', date("G:i_d/m/y"), $i ); 

    setcookie( 'lastVisit', date("G:i_d/m/y")); 

    if( isset( $_COOKIE['lastVisit'] ) ) {

        $visit = $_COOKIE['lastVisit'];
        echo "Your last visit was " . $visit ; 

    } else {
        echo "You've get some state cookies";
    }

?>