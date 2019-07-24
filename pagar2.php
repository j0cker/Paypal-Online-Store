<?php 
    
    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php';
    include 'templates/social.php';  

?>
<br>
<br>
<br>

<?php  

if($_POST){
    $total=0;
    $SID=session_id();
    $Correo=$_POST['email'];
     
    foreach($_SESSION['CARRITO'] as $indice => $producto){
        $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);
    }
    $sentencia = $pdo->prepare("INSERT INTO `tblVentas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES (NULL, :ClaveTransaccion, '', Now(), :Correo, :Total, 'pendiente');");

    $sentencia->bindParam(":ClaveTransaccion", $SID);
    $sentencia->bindParam(":Correo", $Correo);
    $sentencia->bindParam(":Total", $total);

    $sentencia->execute();

    $idVenta =$pdo->lastInsertId();

    foreach($_SESSION['CARRITO'] as $indice => $producto){
        $sentencia=$pdo->prepare("INSERT INTO `tblDetalleVenta` (`ID`, `IDventa`, `IDproducto`, `precioUnitario`, `cantidad`, `descargado`) VALUES (NULL, :IDventa, :IDproducto, :precioUnitario, :cantidad, '0');");

        $sentencia->bindParam(":IDventa", $idVenta);
        $sentencia->bindParam(":IDproducto", $producto['ID']);
        $sentencia->bindParam(":precioUnitario", $producto['PRECIO']);
        $sentencia->bindParam(":cantidad", $producto['CANTIDAD']);

        $sentencia->execute();
    
    }
   
    //echo "<h3>".$total."</h3>";
}

?>

<script src="https://www.paypalobjects.com/api/checkout.js"></script>

<style>

    /* Media query for mobile viewport */
    @media screen and (max-width: 400px){
        #paypal-button-container{
            width: 100%;
        }
    }

    /* Media query for desktop viewport */
    @media screen and (min-width: 400px){
        #paypal-button-container{
            width: 250px;
            display: inline-block;
        }
    }
</style>

<div class="jumbotron text-center">
    <h1 class="display-4">¡Paso Final!</h1>
    <hr class="my-4">
    <p class="lead">Esatas a punto de pagar con paypal la cantidad de:
        <h4>$<?php echo number_format($total,2); ?></h4>
        <div id="paypal-button-container"></div>
    </p>
        <p class="text-center">Los productos podran ser descargados una vez que se procese el pago
         <br>
            <strong>(Para aclaraciones  :ardinson28@gmail.com)</strong>
        </p>
</div>
 
<script>
    paypal.Button.render({
        env: 'sandbox',// sandbox | production 
        style:{
            label: 'checkout',// checkout | credit | pay | nuynow | generic
            size:  'responsive',// small | medium | large | responsive
            shape: 'pill',//pill | rect
            color: 'gold'// gold | blue | silver | black
        },
        client:{
            sandbox: 'AepP0hC4hwmUNMS1_Fu6oNYaoYDDzLiAz7r3FX07QP4L0naUwMqmPP7pZbvVcXZVp55hYvftoReWZXRd',
            production: 'AepP0hC4hwmUNMS1_Fu6oNYaoYDDzLiAz7r3FX07QP4L0naUwMqmPP7pZbvVcXZVp55hYvftoReWZXRd'
        },
        payment: function(data, actions){
            return actions.payment.create({
                payment:{
                    transactions:[{
                        amount: {total: '<?php echo $total; ?>', currency:'MXN'},
                        description:"Compra de productos a ANNETTE:$<?php echo number_format($total,2); ?>",
                        custom:"<?php echo $SID; ?>#<?php echo openssl_encrypt($idVenta,COD,KEY);    ?>"
                    }]
                }
            })
        },
        onAuthorize: function(data, actions){
            return actions.payment.execute().then(function(){
                console.log(data);
                window.location="verificador.php?paymentToken="+data.paymentToken+"&paymentID="+data.paymentID;
            });
        }

    }, '#paypal-button-container');
</script>

<?php 
    include './templates/pie.php' 
?>