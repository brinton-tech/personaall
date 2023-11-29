<?php

include('connect.php');


//check whether stripe token is not empty
if(!empty($_POST['submit'])){
    //get token, card and user info from the form
    $token  = $_POST['stripeToken'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $card_num = $_POST['card_num'];
    $card_name = $_POST['card_name'];
    $card_cvc = $_POST['cvc'];
    $card_exp_month = $_POST['exp_month'];
    $card_exp_year = $_POST['exp_year'];
    
    //include Stripe PHP library
    require_once('stripe-php/init.php');
    
    //set api key
    $stripe = array(
      "secret_key"      => "Your_API_Secret_Key",
      "publishable_key" => "Your_API_Publishable_Key"
    );
    
    \Stripe\Stripe::setApiKey($stripe['secret_key']);
    
    //add customer to stripe
    $customer = \Stripe\Customer::create(array(
        'email' => $email,
        'source'  => $token
    ));
    
    //item information
    $itemName = "Premium Script CodexWorld";
    $itemNumber = "PS123456";
    $itemPrice = 55;
    $currency = "usd";
    $orderID = "SKA92712382139";
    
    //charge a credit or a debit card
    $charge = \Stripe\Charge::create(array(
        'customer' => $customer->id,
        'amount'   => $itemPrice,
        'currency' => $currency,
        'description' => $itemName,
        'metadata' => array(
            'order_id' => $orderID
        )
    ));
    
    //retrieve charge details
    $chargeJson = $charge->jsonSerialize();

    //check whether the charge is successful
    if($chargeJson['amount_refunded'] == 0 && empty($chargeJson
['failure_code']) && $chargeJson['paid'] == 1 && $chargeJson['captured'] == 1){
        //order details 
        $amount = $chargeJson['amount'];
        $balance_transaction = $chargeJson['balance_transaction'];
        $currency = $chargeJson['currency'];
        $status = $chargeJson['status'];
        $date = date("Y-m-d H:i:s");
        
        //include database config file
        include_once 'dbConfig.php';
        
        //insert tansaction data into the database
        $sql = 
"INSERT INTO orders(name,email,card_num,card_cvc,card_exp_month,card_exp_year,
item_name,item_number,item_price,item_price_currency,paid_amount,
paid_amount_currency,txn_id,payment_status,created,modified) VALUES
('".$name."','".$email."','".$card_num."','".$card_cvc."','".$card_exp_month."',
'".$card_exp_year."','".$itemName."','".$itemNumber."','".$itemPrice."','".$currency."',
'".$amount."','".$currency."','".$balance_transaction."'
,'".$status."','".$date."','".$date."')";
        $insert = $db->query($sql);
        $last_insert_id = $db->insert_id;
        
        //if order inserted successfully
        if($last_insert_id && $status == 'succeeded'){
            $statusMsg = "<h2>The transaction was successful.</h2>
<h4>Order ID: {$last_insert_id}</h4>";
        }else{
            $statusMsg = "Transaction has been failed";
        }
    }else{
        $statusMsg = "Transaction has been failed";
    }
}else{
    $statusMsg = "Form submission error.......";
}

//show success or error message
echo $statusMsg;

?>

<!DOCTYPE html>

    <html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="https://js.stripe.com/v2/"></script>
        
        <title>

            Complete Your Purchase

        </title>

        <!-- custom css file link  -->
        <link rel="stylesheet" href="Payment CSS.css">
        
        <link rel="shortcut icon" type="image/jpg" href="C:\Users\hp\Desktop\College\First Semester\Introduction To Web Technologies\Notepad ++ Files\Project\favicon.ico"/>

    </head>

    <body>

    <div class="container">

        <div class="card-container">

            <div class="front">

                <div class="image">

                    <img src="./images/visa.png" alt = "chip">

                    <img src="./images/visa2.png" alt = 'visa'>

                </div>

                <div class="card-number-box">
                    
                    ################
                
                </div>

                <div class="flexbox">

                    <div class="box">

                        <div class="card-holder-name">
                            
                            Name of card holder
                    
                        </div>

                    </div>

                    <div class="box">

                        <span>
                            
                            expiry
                        
                        </span>

                        <div class="expiration">

                            <span class="exp-month">
                                
                                mm / 
                            
                            </span>

                            <span class="exp-year">
                                
                                yyyy
                            
                            </span>

                        </div>

                    </div>

                </div>

            </div>
            

            <div class="back">

                <div class="stripe"> </div>

                <div class="box">

                    <span>
                        
                        cvv
                    
                    </span>

                    <div class="cvv-box"> </div>

                    <img src="./images/visa2.png" alt = "Visa">

                </div>

            </div>

        </div>

        <form action="payment.php" method="POST">
            email: <input type="email">

            <div class="inputBox">

                <span>
                    
                    card number
                
                </span>

                <input type="number" maxlength="16" minlength="16" class="card-number-input" name="card_num" required>

            </div>

            <div class="inputBox">

                <span>
                    
                    name on card
                
                </span>

                <input type="text" name="card_name" class="card-holder-input" required>

            </div>

            <div class="flexbox">

                <div class="inputBox">

                    <span>
                        
                        expiry mm
                    
                    </span>

                    <select name="exp_month" id="" class="month-input" required>

                        <option value="month" selected disabled>
                            
                            month
                        
                        </option>

                        <option value="01">
                            
                            01
                        
                        </option>

                        <option value="02">
                            
                            02
                        
                        </option>

                        <option value="03">
                            
                            03
                        
                        </option>

                        <option value="04">
                            
                            04
                        
                        </option>

                        <option value="05">
                            
                            05
                        
                        </option>

                        <option value="06">
                            
                            06
                        
                        </option>

                        <option value="07">
                            
                            07
                        
                        </option>

                        <option value="08">
                            
                            08
                        
                        </option>

                        <option value="09">
                            
                            09
                        
                        </option>

                        <option value="10">
                            
                            10
                        
                        </option>

                        <option value="11">
                            
                            11
                        
                        </option>

                        <option value="12">
                            
                            12
                        
                        </option>

                    </select>

                </div>

                <div class="inputBox">

                    <span>
                        
                        expiry yy
                    
                    </span>

                    <select name="exp_year" id="" class="year-input" required>

                        <option value="year" selected disabled>
                            
                            year
                        
                        </option>

                        <option value="2022">
                            
                            2022
                        
                        </option>

                        <option value="2023">
                            
                            2023
                        
                        </option>

                        <option value="2024">
                            
                            2024
                        
                        </option>
                        
                        <option value="2025">
                            
                            2025
                        
                        </option>
                        
                        <option value="2026">
                            
                            2026
                        
                        </option>
                        
                        <option value="2027">
                            
                            2027
                        
                        </option>
                        
                        <option value="2028">
                            
                            2028
                        
                        </option>
                        
                        <option value="2029">
                            
                            2029
                        
                        </option>
                        
                        <option value="2030">
                            
                            2030
                        
                        </option>
                        
                        <option value="2031">
                            
                            2031
                        
                        </option>

                    </select>

                </div>

                <div class="inputBox">

                    <span>
                        
                        cvv
                    
                    </span>

                    <input type="text" maxlength="4" class="cvv-input" name="cvc" required>

                </div>

            </div>

            <div class="submit-btn">
                <input type="submit" name="submit">
            </div>

            <!-- <button type="button" name="submit" class="submit-btn"> -->

                <!-- <a href = 'Payment Confirmation HTML and CSS.html' style = 'color: white; text-decoration: none;'> -->
                    
                    <!-- Submit -->

                </a>
            
            </button>
            
        </form>

    </div>
    
    <script src = 'Payment JS.js'> </script>

    </body>

</html>
