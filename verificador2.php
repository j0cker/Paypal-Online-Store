<?php
$clienteID = "AepP0hC4hwmUNMS1_Fu6oNYaoYDDzLiAz7r3FX07QP4L0naUwMqmPP7pZbvVcXZVp55hYvftoReWZXRd";
$secret = "EAJcLnpyA7p5bVvntmqz-Gpo8tdxjm8cobk3jAmc5FG8wAgJWfBOPQzu2roCBb4fQ8gJp7uh2A-KoDgT";

    $login = curl_init();
    $url = "https://api.sandbox.paypal.com/v1/oauth2/token";

    curl_setopt($login,CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($login, CURLOPT_URL, $url);

    curl_setopt($login, CURLOPT_RETURNTRANSFER, true);

    curl_setopt($login, CURLOPT_USERPWD, $clienteID.":".$secret);

    curl_setopt($login, CURLOPT_POSTFIELDS, "grant_type=client_credentials");

    $request = curl_exec($login);

    $objResponse = json_decode($request);
    
    $accessToken = $objResponse -> access_token;
    
    print_r($accessToken);

    
    $venta = curl_init();
    $url2= "https://api.sandbox.paypal.com/v2/checkout/orders/".$_GET['orderID'];

    curl_setopt($venta, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($venta, CURLOPT_URL, $url2);
    curl_setopt($venta, CURLOPT_HTTPHEADER, array("Content-Type: application/json","Authorization: Bearer ".$accessToken));    
    curl_setopt($venta, CURLOPT_RETURNTRANSFER, true);
    $responseVenta =  curl_exec($venta);
    print_r($responseVenta);

    $objResponseVenta = json_decode($responseVenta);
?>