<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

if(!isset($_SESSION["username"])){
  header("location:index.php");
}
include 'config.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>INDEX || IOT_SHOP</title>
  <title>Internet Of Things</title>
  <link rel="stylesheet" href="w3.css">
  <link rel="stylesheet" href="font.css">
</head>
<body>
  <header class="w3-container w3-teal w3-padding-16">
    <a href="index.php" style="text-decoration:none;"><h1 style="font-family:googlesans">INTERNET OF THINGS</h1></a>
  </header>

  <!-- Sidebar -->
  <div class="w3-sidebar w3-bar-block w3-card w3-animate-right" style="display:none;right:0;z-index:4;" id="rightMenu">
    <button onclick="closeRightMenu()" style="font-family:googlesans; font-size:18px; font-weight:bold;" class="w3-bar-item w3-button w3-large">Close &times;</button>
    <a href="index.php" style="font-family:googlesans; font-size:18px; font-weight:bold; "class="w3-bar-item w3-button">HOME</a>


    <?php
    if($_SESSION["type"]!="admin")
      {
        echo'<a href="products.php" style="font-family:googlesans; font-size:18px; font-weight:bold; "class="w3-bar-item w3-button">PRODUCTS</a>';
        echo'<a href="account.php" style="font-family:googlesans; font-size:18px; font-weight:bold; "class="w3-bar-item w3-button">MY ACCOUNT</a>';
        echo'<a href="orders.php" style="font-family:googlesans; font-size:18px; font-weight:bold; "class="w3-bar-item w3-button">MY ORDERS</a>';
        echo'<a href="cart.php" style="font-family:googlesans; font-size:18px; font-weight:bold; "class="w3-bar-item w3-button">VIEW CART</a>';
      }
    else if($_SESSION["type"]==="admin")
      {

        echo'<a href="admin.php" style="font-family:googlesans; font-size:18px; font-weight:bold; "class="w3-bar-item w3-button">UPDATE PRODUCTS</a>';
      }

    ?>

    <a href="contact.php" style="font-family:googlesans; font-size:18px; font-weight:bold;" class="w3-bar-item w3-button">CONTACT US</a>
  </div>

  <!-- overlay effect -->
  <div class="w3-overlay w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>

  <!-- openbutton -->
  <div class="w3-bar w3-light-grey">
    <button class="w3-button w3-light-grey w3-large w3-right" onclick="openRightMenu()"><b>&#9776;</b></button>
    <?php
    if(isset($_SESSION['username'])){
      echo '<a href="cart.php" style="font-family:googlesans; font-size:20px; font-weight:bold;" class="w3-bar-item w3-button w3-right ">Cart</a>';
      echo '<a href="#" style="font-family:googlesans; font-size:20px; font-weight:bold;" class="w3-bar-item w3-button w3-right ">Hi, ' .$_SESSION['fname'] .'</a>';
      echo '<a href="logout.php" style="font-family:googlesans; font-size:20px; font-weight:bold;" class="w3-bar-item w3-button w3-right ">Logout</a>';
    }
    else{
      echo '<a href="login.php" style="font-family:googlesans; font-size:20px; font-weight:bold;" class="w3-bar-item w3-button w3-right ">Login</a>';
      echo '<a href="register.php" style="font-family:googlesans; font-size:20px; font-weight:bold;" class="w3-bar-item w3-button w3-right ">Register</a>';
    }
    ?>
  </div>



    <div class="w3-container">
        <h3 style="font-family:googlesans; ; font-size: 24px;">My Orders</h3>
        <hr style="border:1px solid">

        <?php
          $user = $_SESSION["username"];
          $result = $mysqli->query("SELECT * from orders where email='".$user."'");
          if($result) {
            while($obj = $result->fetch_object()) {

              echo '<div class="w3-card-4" style="width:40%;">';
              echo '<header class="w3-container w3-blue"><h4 style="font-family:googlesans; font-size:20px;">Order ID ->'.$obj->id.'</h4></header>';
              echo '<div class="w3-container">';
              echo '<p style="font-family:googlesans; font-size: 18px;"><strong>Date of Purchase</strong>: '.$obj->date.'</p>';
              echo '<p style="font-family:googlesans; font-size: 18px;"><strong>Product Code</strong>: '.$obj->product_code.'</p>';
              echo '<p style="font-family:googlesans; font-size: 18px;"><strong>Product Name</strong>: '.$obj->product_name.'</p>';
              echo '<p style="font-family:googlesans; font-size: 18px;"><strong>Price Per Unit</strong>: '.$obj->price.'</p>';
              echo '<p style="font-family:googlesans; font-size: 18px;"><strong>Units Bought</strong>: '.$obj->units.'</p>';
              echo '<p style="font-family:googlesans; font-size: 18px;"><strong>Total Cost</strong>: '.$currency.$obj->total.'</p>';
              echo '<p><hr></p>';
              echo '</div>';
              echo '</div>';
              echo '<br>';
            }
          }
        ?>
      </div>


    <script>
    function openRightMenu() {
      document.getElementById("rightMenu").style.display = "block";
      document.getElementById("myOverlay").style.display = "block";
    }

    function closeRightMenu() {
      document.getElementById("rightMenu").style.display = "none";
      document.getElementById("myOverlay").style.display = "none";
    }
    </script>


  </body>
</html>
