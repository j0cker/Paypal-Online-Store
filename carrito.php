<?php

session_start(); 

$mensaje="";

if(isset($_POST['btnAccion'])){

    switch($_POST['btnAccion']){
        
        case "Agregar":
        //echo "<script> alert('Entro a agregar...') </script>";
            if (is_numeric(openssl_decrypt($_POST['id'],COD,KEY))) {
                # code...
                $ID = openssl_decrypt($_POST['id'],COD,KEY);
                $mensaje.= "Ok, ID es Correcto: ".$ID;
            }else {
                # code...
                $mensaje.= "Ups... el ID es Incorrecto: ".$ID;
            }

            if (is_string(openssl_decrypt($_POST['nombre'],COD,KEY))) {
                # code...
                $nombre = openssl_decrypt($_POST['nombre'],COD,KEY);
                $mensaje.= "Ok, nombre: ".$nombre;
            }else {
                # code...
                $mensaje.= "Ups... algo pasa con el nombre";
            }

            if (is_numeric(openssl_decrypt($_POST['precio'],COD,KEY))) {
                # code...
                $precio = openssl_decrypt($_POST['precio'],COD,KEY);
                $mensaje.= "Ok, precio: ".$precio;
            }else {
                # code...
                $mensaje.= "Ups... algo pasa con el precio";
            }

            if (is_numeric(openssl_decrypt($_POST['cantidad'],COD,KEY))) {
                # code...
                $cantidad = openssl_decrypt($_POST['cantidad'],COD,KEY);
                $mensaje.= "Ok, cantidad: ".$cantidad;
            }else {
                # code...
                $mensaje.= "Ups... algo pasa con la cantidad";
            }

            if(!isset($_SESSION['CARRITO'])){

                $producto = array(
                    'ID'=>$ID,
                    'NOMBRE'=>$nombre,
                    'PRECIO'=>$precio,
                    'CANTIDAD'=>$cantidad,
                );
                $_SESSION['CARRITO'][0]=$producto;
                $mensaje="Producto agregado al carrito";
        
            }else{
                $idProductos=array_column($_SESSION['CARRITO'],"ID");
        
                if (in_array($ID,$idProductos)) {
                    echo "<script> alert('El producto ya ha sido seleccionado...') </script>";
                    $mensaje="";
                }else {
                    $NumeroProductos=count($_SESSION['CARRITO']);
        
                    $producto = array(
                        'ID'=>$ID,
                        'NOMBRE'=>$nombre,
                        'PRECIO'=>$precio,
                        'CANTIDAD'=>$cantidad,
                    );
        
                    $_SESSION['CARRITO'][$NumeroProductos]=$producto;
                    $mensaje="Producto agregado al carrito";
                }
        
            }


        break;

        case "Eliminar":

        if (is_numeric(openssl_decrypt($_POST['id'],COD,KEY))) {
            # code...
            $ID = openssl_decrypt($_POST['id'],COD,KEY);
            //echo "<script> alert('ID Desencriptado: ".$ID."') </script>";

            foreach($_SESSION['CARRITO'] as $indice => $producto){
                //echo "<script> alert('Entro a foreach eliminar...') </script>";
                if ($producto['ID']==$ID) {
                    
                    unset($_SESSION['CARRITO'][$indice]);
                    //echo "<script> alert('".$producto['ID']."') </script>";
                    echo "<script> alert('Elemento borrado...') </script>";
                }
            }
        }else {
            # code...
            echo "<script> alert('Ocurrió un error...') </script>";
        }
        

        break;

    } 

    
    //$mensaje = print_r($_SESSION,true);
    

}
 
?>