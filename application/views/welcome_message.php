<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<input type="hidden" id="contextPath" name="contextPath" value="<?php echo base_url(); ?>">

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Países y capitales</title>

	<link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>font-awesome/css/font-awesome.css" rel="stylesheet">
	<!-- Toastr style -->
	<link href="<?php echo base_url(); ?>css/plugins/toastr/toastr.min.css" rel="stylesheet">
	<!-- Gritter -->
	<link href="<?php echo base_url(); ?>js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>css/animate.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>css/style.css" rel="stylesheet">
</head>
<body class="gray-bg">

<body>
	<div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>
              <h1 class="logo-name"></h1>
            </div>
            <h2>¡Bienvenido!</h2>
						<br><br>
            <form id="" action="" class="form-horizontal" method="POST">

							<div class="form-group">
								<label>Continente:</label>
								<select id="continente" name="continente" class="form-control" onchange="setPaises(this.value, true);">
									<option value="0" disabled="" selected="">Seleccionar...</option>
									<?php foreach ($continente as $row) {?>
										<option value="<?php echo $row['id'];?>"><?php echo $row['nombre'];?></option>
									<?php } ?>
								 </select>
							</div>

								<div class="form-group">
									<label>País:</label>
									<select id="pais" name="pais" class="form-control" onchange="setCapitales(this.value, true);">
										<option value="0" disabled="" selected="">Seleccionar...</option>
									 </select>
                </div>

								<div class="form-group">
									<label>Capital:</label>
									<select disabled id="capital" name="capital" class="form-control"  >
									 </select>
                </div>

            </form>
        </div>
		</div>

		<div class="footer">
				<div>
						<strong>IA 2017 <br> Made by: Giovanni Sinai Silva Barragán</strong>
				</div>
		</div>

	<!-- jQuery UI -->
	<script src="<?php echo base_url(); ?>js/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- GITTER -->
	<script src="<?php echo base_url(); ?>js/plugins/gritter/jquery.gritter.min.js"></script>
	<!-- Toastr -->
	<script src="<?php echo base_url(); ?>js/plugins/toastr/toastr.min.js"></script>
	<!-- Mainly scripts -->
	<script src="<?php echo base_url(); ?>js/jquery-2.1.1.js"></script>
	<script src="<?php echo base_url(); ?>js/bootstrap.min.js"></script>
	<script src="<?php echo base_url(); ?>js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="<?php echo base_url(); ?>js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- Custom and plugin javascript -->
	<script src="<?php echo base_url(); ?>js/inspinia.js"></script>
	<script src="<?php echo base_url(); ?>js/plugins/pace/pace.min.js"></script>
	<!-- Capitales -->
	<script src="<?php echo base_url(); ?>js/paises.js"></script>
	</body>
	</html>
