
<?php
try {
  //code...
    
  include './config/conexion.php';
  //Header
  include './pages/layout/header.php';
  if(!empty($_GET["url"])){
    $fullParams =   explode('/',$_GET["url"]);

  //Default page
  switch ($fullParams[0]) {
      case 'contacto':
          include './pages/contacto.html';
          break;
      
      case 'inmuebles':
        include './pages/inmuebles.php';
        break;
  
      case 'nosotros':
        include './pages/nosotros.html';
        break;
  
      case 'portal':
          include './pages/portal.html';
          break;
      default:
      include './pages/home.php';
          # code...
          break;
  }
  }else{
    include './pages/home.php';
  }


} catch (exception $e) {

  throw $e;
}

  
