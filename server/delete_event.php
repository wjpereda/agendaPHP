<?php
$cnx=new mysqli("localhost","root","12345678","agendaNextU");
$sql="DELETE FROM eventos WHERE idEvento=".$_POST[id];
$rSet=$cnx->query($sql);
if($rSet==1)
  $datos = array('msg' => "OK");
else
  $datos = array('msg' => "Error al eliminar datos");
$cnx->close();
echo json_encode($datos);
 ?>
