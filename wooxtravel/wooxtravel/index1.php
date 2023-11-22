<?php require "includes/header.php"; ?>
<?php require "config/config.php"; ?>
<?php 

    if(!isset($_SERVER['HTTP_REFERER'])){
        // redirect them to your desired location
        header('location: http://localhost:8080/wooxtravel/index.php');
        exit;
    }

?>
           echo "<script>alert('Thanks for Booking This Trip');
                                         window.location.href='index.php';
</script>";
<?

