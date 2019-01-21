<?php
  session_start();
  $cnx=new mysqli("localhost","root","12345678","agendaNextU");
  $sql="SELECT * FROM usuarios WHERE emailUsuario='".$_POST["username"]."' and pswUsuario=md5('".$_POST["password"]."')";
  $rSet=$cnx->query($sql);
  if($rSet->num_rows==1)
  {
    $_SESSION["email"]=$_POST["username"];
    $datos = array('msg' => "OK");
  }
  else
    $datos = array('msg' => "Error en Usuario o Contraseña");
  echo json_encode($datos);
?>
