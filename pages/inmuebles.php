<header class="py-5 bg-image-full"
  style="background-image: url('https://www.elmueble.com/medio/2018/06/26/salon-con-pavimento-de-microcemento-y-chimenea-de-ladrillos_271825_69bfaafe.jpg');">
  <img class="img-fluid d-block mx-auto" src="./assests/img/logo.png" alt="logo">
</header>


<section class="py-5">
  <div class="container">
    <h3>Nuestros inmuebles en venta disponibles para ti.</h3>
    <p class="lead"></p>
    <p></p>
  </div>
</section>

<div id="content">
  <div class="rows">
    <div class="col-md-9 col-md-push-3">
      <div class="destacat">
        <div class="floatRight">
          <form action="http://www.solmiami.es/inmuebles"><select name="order" class="form-control input-sm"
              onchange="this.form.submit()">
              <option value="">Ordenar por:</option>
              <option value="preu_asc">Precio: De menor a mayor</option>
              <option value="preu_desc">Precio: De mayor a menor</option>
            </select>
          </form>
        </div>
        <div style="margin-top:5px;">24 resultados de 44</div>
        <div class="row">

          <?php $sel = $conexion->prepare("SELECT * FROM inmuebles ");
          $sel->execute();
          $res = $sel->get_result();
          while ($inmub =$res->fetch_assoc()) {?>

          <article class="inmobles-item col-lg-4 col-md-6 col-sm-4 col-xs-12"><a
              href="http://www.solmiami.es/inmuebles/APARTAMENTO_MIAMI_PLAYA_8"></a>
            <div class="inmobles-img">
              <div class="inmobles-resum-operacio">Compra</div>
              <div class="inmobles-resum-preu"><?php echo $inmub['precio'] ?> €</div>
              <img src="http://www.solmiami.es/upload/img/71/thumb_300_190/2_terraza-privada-14-m2.jpg">
            </div>
            <div class="inmobles-resum-detalls">
              <span class="icoDetall"><img src="http://www.solmiami.es/img/ico-sup.png"><?php echo $inmub['m2'] ?>m<sup><?php echo $inmub['baños'] ?></sup></span>
              <span class="icoDetall"><img src="http://www.solmiami.es/img/ico-bed.png">2</span><span
                class="icoDetall"><img src="http://www.solmiami.es/img/ico-wc.png">2</span>
            </div>

            <div class="inmobles-resum">
              <div class="inmobles-titol">
              <?php echo $inmub['tipo'] ?> <?php echo $inmub['direccion'] ?> </div>
              <div class="inmobles-resum-loc">¡ La unica norma es disfrutar!</div>
            </div>
          </article>
<?php }
$sel->close();
 ?>
          <article class="inmobles-item col-lg-4 col-md-6 col-sm-4 col-xs-12"><a
              href="http://www.solmiami.es/inmuebles/APARTAMENTO_MIAMI_PLAYA_8"></a>
            <div class="inmobles-img">
              <div class="inmobles-resum-operacio">Compra</div>
              <div class="inmobles-resum-preu">138.000 €</div>
              <img src="http://www.solmiami.es/upload/img/71/thumb_300_190/2_terraza-privada-14-m2.jpg">
            </div>
            <div class="inmobles-resum-detalls">
              <span class="icoDetall"><img src="http://www.solmiami.es/img/ico-sup.png">90m<sup>2</sup></span>
              <span class="icoDetall"><img src="http://www.solmiami.es/img/ico-bed.png">2</span><span
                class="icoDetall"><img src="http://www.solmiami.es/img/ico-wc.png">2</span>
            </div>

            <div class="inmobles-resum">
              <div class="inmobles-titol">
                APARTAMENTO MIAMI PLAYA </div>
              <div class="inmobles-resum-loc">¡ La unica norma es disfrutar!</div>
            </div>
          </article>

        </div>







        <section class="py-5 bg-image-full" style="background-image: url('');">

          <div style="height: 200px;"></div>
        </section>


        <section class="py-5">
          <div class="container">
            <h1>Section Heading</h1>
            <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, suscipit, rerum quos facilis repellat
              architecto commodi officia atque nemo facere eum non illo voluptatem quae delectus odit vel itaque amet.
            </p>
          </div>
        </section>


        <footer class="py-5 bg-dark">
          <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Inmobiliaria Arana 2020</p>
          </div>

        </footer>