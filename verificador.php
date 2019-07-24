<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>

<?php
//print_r($_GET);

$ClientID="AepP0hC4hwmUNMS1_Fu6oNYaoYDDzLiAz7r3FX07QP4L0naUwMqmPP7pZbvVcXZVp55hYvftoReWZXRd";
$Secret="EAJcLnpyA7p5bVvntmqz-Gpo8tdxjm8cobk3jAmc5FG8wAgJWfBOPQzu2roCBb4fQ8gJp7uh2A-KoDgT";

/*
curl -v https://api.sandbox.paypal.com/v1/oauth2/token \
   -H "Accept: application/json" \
   -H "Accept-Language: en_US" \
   -u "client_id:secret" \
   -d "grant_type=client_credentials"
*/

//CURL nos ayuda para realizar solicitudes a través de un cliente o un mecanismo de solicitud de datos
$Login= curl_init("https://api.sandbox.paypal.com/v1/oauth2/token");

//Hace realzacion con la URL del Login, Inicializa el retorno del valor haciendo que la API retorne la información
curl_setopt($Login, CURLOPT_RETURNTRANSFER, TRUE);

//-u
curl_setopt($Login,CURLOPT_USERPWD,$ClientID.":".$Secret); 

//Solicitando todas las credenciales vias POST que esta utilizando el ClientID y el Secret
curl_setopt($Login, CURLOPT_POSTFIELDS, "grant_type=client_credentials");

$Respuesta=curl_exec($Login);

//Traerá un objeto con el accessToken que es nuestro objetivo
//print_r($Respuesta);

//Creará un json con el objeto creado en $Respuesta
$objRespuesta=json_decode($Respuesta);

$AccessToken=$objRespuesta->access_token;

//print_r($AccessToken);

/*
Sample Request
curl -v -X GET https://api.sandbox.paypal.com/v2/payments/authorizations/0VF52814937998046 \
-H "Content-Type: application/json" \
-H "Authorization: Bearer Access-Token"
*/

//$venta= curl_init("https://api.sandbox.paypal.com/v2/checkout/orders/".$_GET['orderID']);
$venta= curl_init("https://api.sandbox.paypal.com/v2/checkout/orders/".$_GET['paymentID']);


curl_setopt($venta, CURLOPT_HTTPHEADER, array("Content-Type: application/json","Authorization: Bearer ".$AccessToken)); 
curl_setopt($venta, CURLOPT_RETURNTRANSFER, true);
$RespuestaVenta= curl_exec($venta);
//print_r($RespuestaVenta);

//json_decode convierte lo que se rescata a un objeto para poder acceder
$objDatosTransaccion = json_decode($RespuestaVenta);

//print_r($objDatosTransaccion->purchase_units[0]->reference_id);

$status = $objDatosTransaccion->status;
$email = $objDatosTransaccion->payer->email_address;

$total = $objDatosTransaccion->purchase_units[0]->amount->value;
$currency = $objDatosTransaccion->purchase_units[0]->amount->currency_code;
$reference_id = $objDatosTransaccion->purchase_units[0]->reference_id;

//print_r($reference_id); 

$clave= explode("#",$reference_id);
$SID= $clave[0];
$claveVenta =  openssl_decrypt($clave[1],COD,KEY);

curl_close($Login);
curl_close($venta);

//echo $claveVenta;


if ($status=="COMPLETED") {
   
   $mensajePaypal= "<h3>Pago Completado</h3>";
   $sentencia= $pdo->prepare("UPDATE `tblVentas` SET `PaypalDatos` = :PaypalDatos, `status` = 'aprobado' WHERE `tblVentas`.`ID` = :ID;");
   $sentencia->bindParam(":ID",$claveVenta);
   $sentencia->bindParam(":PaypalDatos",$RespuestaVenta);
   $sentencia->execute();

   $sentencia= $pdo->prepare("UPDATE `tblVentas` SET `status` = 'completo' WHERE `tblVentas`.`ClaveTransaccion` = :ClaveTransaccion AND `tblVentas`.`Total` = :Total AND `tblVentas`.`ID` = :ID;");
   $sentencia->bindParam(":ClaveTransaccion",$SID);
   $sentencia->bindParam(":Total",$total);
   $sentencia->bindParam(":ID",$claveVenta);
   $sentencia->execute();

   $completado = $sentencia->rowCount();

}else {
   $mensajePaypal= "<h3>Hay un problema con el pago de paypalc∫∫∫∫∫∫∫∫</h3>";
}

//echo $mensajePaypal;

?>
<div class="jumbotron">
    <h1 class="display-4">¡Listo!</h1>
    <hr class="my-4">
    <p class="lead"><?php echo $mensajePaypal; ?></p>
    <p>
        <?php
      if ($completado>=1) {

         $sentencia= $pdo->prepare("SELECT * FROM tblDetalleVenta,tblproductos WHERE tblDetalleVenta.IDproducto=tblproductos.ID AND tblDetalleVenta.IDventa=:ID");

         $sentencia->bindParam(":ID",$claveVenta);
         $sentencia->execute();

         $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);

         print_r($listaProductos);
      }
      ?>
        <div class="row">
           <?php foreach ($listaProductos as $producto) {?>
            <div class="col-3">
                <div class="card">
                    <img class="card-img-top" src="<?php echo $producto['imagen'];?>" alt="">
                    <div class="card-body">
                        <p class="card-text"><?php echo $producto['nombre'];?></p>
                        <form action="descargas.php" method="post">
                           <input type="text" name="IDVENTA" id="" value="<?php echo openssl_encrypt($claveVenta,COD,KEY)?>"> 
                           <input type="text" name="IDPRODUCTO" id="" value="<?php echo openssl_encrypt($producto['IDproducto'],COD,KEY)?>">
                           <button class="btn btn-success" type="submit">Descargar</button>
                        </form>
                        
                    </div>
                </div>
            </div>
           <?php }?>
        </div>

    </p>
</div>

<?php include 'templates/pie.php'; ?> 