<?php
  session_start();
  $cnx=new mysqli("localhost","root","12345678","agendaNextU");
  $sql="INSERT INTO eventos (emailUsuario,titEvento,finiEvento,hiniEvento,ffinEvento,hfinEvento,fullEvento) VALUES ('".$_SESSION["email"]."','".$_POST["titulo"]."','".$_POST["start_date"]."','".$_POST["start_hour"]."','".$_POST["end_date"]."','".$_POST["end_hour"]."',".$_POST["allDay"].")";
  $rSet=$cnx->query($sql);
  if($rSet==1)
    $datos = array('msg' => "OK");
  else
    $datos = array('msg' => "Error al guardar datos");
  $cnx->close();
  echo json_encode($datos);
 ?>
