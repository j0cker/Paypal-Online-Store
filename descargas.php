<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>

<?php
    //print_r($_POST); 

    if ($_POST) {
        $IDVENTA=openssl_decrypt($_POST['IDVENTA'],COD,KEY);
        $IDPRODUCTO=openssl_decrypt($_POST['IDPRODUCTO'],COD,KEY);

        //print_r($IDVENTA);
        //print_r($IDPRODUCTO);

        $sentencia = $pdo->prepare('SELECT * FROM tblDetalleVenta
                                    WHERE IDventa=:IDVENTA
                                    AND IDproducto=:IDPRODUCTO
                                    AND descargado<1');
        $sentencia->bindParam(":IDVENTA",$IDVENTA);
        $sentencia->bindParam(":IDPRODUCTO",$IDPRODUCTO);
        $sentencia->execute();

        $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);

         print_r($listaProductos);
         if ($sentencia->rowCount()>0) {

            echo "Archivo en dercarga...";

           $nombreArchivos="archivos/".$listaProductos[0]['IDproducto'].".pdf";

            /*$sentencia= $pdo->prepare("UPDATE `tblDetalleVenta` SET `descargado` = descargado+1 WHERE IDventa=:IDVENTA
            AND IDproducto=:IDPRODUCTO");
            $sentencia->bindParam(":IDVENTA",$IDVENTA);
            $sentencia->bindParam(":IDPRODUCTO",$IDPRODUCTO);
            $sentencia->execute();*/

         }else {
            include 'templates/cabecera.php';
            echo "<br><br><br><h2>Tus descargas se agotaron</h2>";
            include 'templates/pie.php'; 
         }
    }
?>

<?php include 'templates/pie.php'; ?> 