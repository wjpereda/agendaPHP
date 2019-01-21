<?php
$cnx=new mysqli("localhost","root","12345678","agendaNextU");
$sql="UPDATE eventos SET finiEvento='".$_POST["start_date"]."',hiniEvento='".$_POST["start_hour"]."',ffinEvento='".$_POST["end_date"]."',hfinEvento='".$_POST["end_hour"]."'";
$rSet=$cnx->query($sql);
if($rSet==1)
  $datos = array('msg' => "OK");
else
  $datos = array('msg' => "Error al guardar datos");
$cnx->close();
//$datos = array('msg' => $sql);
echo json_encode($datos);


 ?>
