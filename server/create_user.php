<?php
  $cnx=new mysqli("localhost","root","12345678","agendaNextU");
  $cnx->query("INSERT INTO usuarios values('wjpereda@hotmail.com','William Pereda Pinazo',MD5('123456'),'1972-12-20')");
  $cnx->query("INSERT INTO usuarios values('rvalencia@hotmail.com','Richard Valencia Rojas',MD5('123456'),'1974-03-15')");
  $cnx->query("INSERT INTO usuarios values('pquispe@hotmail.com','Paola Quispe Bolivar',MD5('123456'),'1973-09-26')");
  echo "Usuarios Creados con Éxito";
  $cnx->close();
?>
