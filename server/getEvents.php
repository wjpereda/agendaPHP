<?php
  session_start();
  $cnx=new mysqli("localhost","root","12345678","agendaNextU");
  $rSet=$cnx->query("SELECT * FROM eventos WHERE emailUsuario='".$_SESSION["email"]."'");
  $datos["msg"]='OK';
  $contador=0;
  while ($reg=$rSet->fetch_object()) {
    $elemento["id"]=$reg->idEvento;
    $elemento["title"]=$reg->titEvento;
    $elemento["start"]=$reg->finiEvento;
    $datos["eventos"][$contador++]=$elemento;
  }
  echo json_encode($datos);
?>
