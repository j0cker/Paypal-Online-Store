<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>

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

<!-- Include the PayPal JavaScript SDK -->
<script src="https://www.paypal.com/sdk/js?client-id=AepP0hC4hwmUNMS1_Fu6oNYaoYDDzLiAz7r3FX07QP4L0naUwMqmPP7pZbvVcXZVp55hYvftoReWZXRd&currency=MXN"></script>
<style>
    /* Media query for mobile viewport */
    @media screen and (max-width: 400px) {
        #paypal-button-container {
            width: 100%;
        }
    }

    /* Media query for desktop viewport */
    @media screen and (min-width: 400px) {
        #paypal-button-container {
            width: 250px;
        }
    }
</style>

<div class="jumbotron text-center">
    <h1 class="display-4">¡Paso Final!</h1>
    <hr class="my-4">
    <p class="lead">Estas a punto de pagar con Paypal la cantidad de:
        <h4>$<?php echo number_format($total,2);?></h4>
        <!-- Set up a container element for the button -->
        <div id="paypal-button-container"></div>
    </p>
    <p>Los productos podrán ser descargados una vez que se procese el pago
        <br>
        <strong>(Para aclaraciones: luisdcm10@gmail.com)</strong>
    </p>
</div>

<!-- Boton PAYPAL -->
<script>
    // Render the PayPal button into #paypal-button-container
    paypal.Buttons({

        style: {
            label: 'checkout',  // checkout | credit | pay | buynow | generic
            size:  'responsive', // small | medium | large | responsive
            shape: 'rect',   // pill | rect
            color: 'gold'   // gold | blue | silver | black
        },

        // Set up the transaction
        createOrder: function(data, actions) {
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: '<?php echo $total ?>'
                    },
                    description:"Compra de productos a Develoteca",
                    reference_id:"<?php echo $SID;?>#<?php echo openssl_encrypt($idVenta,COD,KEY);?>"
                }]
            });
        },
        
        /*payment: function(data, actions) {
            return actions.payment.create({
                payment: {
                    transactions: [
                        {
                            amount: { total: '', currency: 'MXN' },
                            description:"Compra de productos a Develoteca:$0.01",
                            custom:"Codigo"
                        }
                    ]
                }
            });
        },*/

        // Finalize the transaction
        onApprove: function(data, actions) {
            return actions.order.capture().then(function(details) {
                // Show a success message to the buyer
                alert('Transaction completed by ' + details.payer.name.given_name + '!');
                console.log(data); //Regresa orderID y payerID
                window.location="verificador.php?paymentToken="+data.orderID+"&paymentID="+data.orderID;
                //alert(data.orderID);
            });
        }


    }).render('#paypal-button-container');
</script>
<!-- /Boton PAYPAL -->

<?php include 'templates/pie.php'; ?>