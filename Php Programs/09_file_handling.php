<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h3><center>FILE HANDLING FUNCTIONS</center></h3>

    <?php 

        // $file = './demo.txt';
        
        // if( file_exists($file)){
        //     // echo readfile($file);
        //     $handle = fopen($file, 'r');
        //     $content = fread($handle, filesize($file));
        //     fclose($handle);
        //     echo $content;
        // } else {
        //     $handle = fopen($file, 'w');
        //     $content = 'hello world ' . PHP_EOL . ' and my dear friend <br> ';
        //     fwrite($handle, $content);
        //     fclose($handle);
        // }

        $f = fopen("demo.txt","r");
        $s = fgets($f); 

        while(!feof($f)){ 
            echo $s . "<br>";
            $s=  fgets($f);
        } fclose($f);


        $f = fopen("demo.txt","a+");
        fputs($f," Hello "); 
        fputs($f," Welcome ");
        print_r(file("demo.txt"));


        echo "<br>The File Pointer is in " . ftell($f) . " Position <br> "; 
        
        fseek($f,0);

        echo " <br> The File Pointer is in ". ftell($f) . " Position <br>";

        fclose($f);
    
    ?>
</body>
</html>