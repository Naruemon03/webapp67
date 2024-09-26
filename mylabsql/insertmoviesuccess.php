<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"  href="stylemovie.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>this webpage show insert data</title>
</head>
<body>
<?php
    require 'conn.php';
    $sql_update="INSERT INTO movie(movid,movname,movinformation,mtime,mdate) VALUES ('$_POST[movid]','$_POST[movname]','$_POST[movinformation]' ,'$_POST[mtime]' ,'$_POST[mdate]')";
    $result= $conn->query($sql_update);
    if(!$result) {
        die("Error God Damn it : ". $conn->error);
    } else {

    echo "Insert Success <br>";
    header("refresh: 1; url=moviemainmenu.php");
    }
?>
</body>
</html>