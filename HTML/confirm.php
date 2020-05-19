<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <?php
            include_once('header.php');

            if(!is_connected()) {
                header('Location: connection.php');
                exit();
            } else {
                $id_account = $_SESSION['id'];
            }

            if(isset($_POST['offer_from_country'])) {
                $from_address = $_POST['offer_from_address'];
                $from_zip = $_POST['offer_from_zip'];
                $from_city = $_POST['offer_from_city'];
                $from_country = $_POST['offer_from_country'];
                $from_coord = $_POST['offer_from_coord'];

                $to_address = $_POST['offer_to_address'];
                $to_zip = $_POST['offer_to_zip'];
                $to_city = $_POST['offer_to_city'];
                $to_country = $_POST['offer_to_country'];
                $to_coord = $_POST['offer_to_coord'];

                $ride_date = $_POST['offer_date'];
                $ride_hour = $_POST['offer_hour'];
                $ride_minute = $_POST['offer_minute'];
                $ride_meridien = $_POST['offer_meridien'];
                $ride_n_passengers = $_POST['offer_n_passengers'];

                if($from_city == 'undefined') {
                    $from_city = $from_address;
                    $from_address = 'undefined';
                }
                if($to_city == 'undefined') {
                    $to_city = $to_address;
                    $to_address = 'undefined';
                }

                setcookie("from_address", $from_address);
                setcookie("from_zip", $from_zip);
                setcookie("from_city", $from_city);
                setcookie("from_country", $from_country);
                setcookie("from_coord", $from_coord);
                setcookie("to_address", $to_address);
                setcookie("to_zip", $to_zip);
                setcookie("to_city", $to_city);
                setcookie("to_country", $to_country);
                setcookie("to_coord", $to_coord);
                setcookie("ride_date", $ride_date);
                setcookie("ride_hour", $ride_hour);
                setcookie("ride_minute", $ride_minute);
                setcookie("ride_meridien", $ride_meridien);
                setcookie("ride_n_passengers", $ride_n_passengers);
            } else {
                echo "unvalid address";
            }
        ?>
        <link rel="stylesheet" href="style/confirm.css"/>
        <meta charset="utf-8">
        <title>Confirm your ride</title>
    </head>
    <body>
        <div class="tile">
            <div class="ride_info">
                <div class="global_info">
                    <p><?php echo "$ride_date" ?></p>
                    <p><?php echo "$ride_hour" ?></p>
                    <p><?php echo "$ride_minute" ?></p>
                    <p><?php echo "$ride_meridien" ?></p>
                    <p><?php echo "$ride_n_passengers" ?></p>
                </div>
                <div class="from_info">
                    <p>Country: <?php echo "$from_country" ?></p>
                    <p>Zipcode: <?php echo "$from_zip" ?></p>
                    <p>Address: <?php echo "$from_address" ?></p>
                    <?php if($from_city != 'undefined') { echo "<p>$from_city</p>"; }?>
                </div>
                <img src="svg/city_sep.svg" alt="city_sep"/>
                <div class="to_info">
                    <p>Country: <?php echo "$to_country" ?></p>
                    <p>Zipcode: <?php echo "$to_zip" ?></p>
                    <p>Address: <?php echo "$to_address" ?></p>
                    <?php if($to_city != 'undefined') { echo "<p>City: $to_city</p>"; }?>
                </div>
            </div>
            <div class="action_div">
                <a href="index.php"><button type="button" name="button" class="submit_button" >Edit ride</button></a>
                <a href="my_rides.php"><button type="button" name="button" class="submit_button">Confirm</button></a>
            </div>
        </div>
        <script src="javascript/confirm.js" type="text/javascript"></script>
    </body>
</html>