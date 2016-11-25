<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>:: Ingresar Decreto ::</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
<!-- Morris chart -->
<link rel="stylesheet" href="plugins/morris/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Date Picker -->
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet" href="bootstrap/css/datepicker.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<body class="hold-transition skin-blue sidebar-mini">

	<div class="row">
		<div class="col-lg-12">

			<!-- **** Content Header (Page header) *** -->
			<div class="row">
				<div class="col-lg-12">
					<section class="content-header">
					<h1>
						Ingresar decreto <small>Dispocisiones</small>
					</h1>
					</section>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="panel-body">
						<form role="form" name="formDocente">
							<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<label>Cod. Registro : </label> <input type="text"
											class="form-control" id="codigo_registro"
											name="txtcodregistro" placeholder="Autogenerado">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label>Documento : </label> <select class="form-control"
											id="codigo_tipo_documento" name="cbotipodocumento">
											<option>Seleccione</option>

										</select> <input type="hidden" name="txtopcion" value="">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Nro Documento : </label> <input type="text"
											class="form-control" id="numero_documento"
											name="txtnumerodocumento" placeholder="Nro documento">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Destino : </label> <select class="form-control"
											id="cod_destino" name="cbogenero">
											<option>Seleccione</option>

										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Fecha Documento : </label> <input type="text"
											class="form-control" id="fecha_documento"
											placeholder="Seleccione una fecha">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="exampleInputFile">Seleccione archivo PDF</label> <input
											type="file" id="archivo">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Asunto : </label> <input type="text"
											class="form-control" id="asunto"
											placeholder="Escriba el asunto del documento">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>Unidad de origen : </label> <select
											class="form-control" id="cod_unidad_origen"
											name="cbounidadorigen">
											<option>Seleccione</option>

										</select>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label>Clasifcacion : </label> <select class="form-control"
											id="cod_clasificacion" name="cboclasificacion">
											<option>Seleccione</option>

										</select> <input type="hidden" name="txtopcion" value="">
									</div>
								</div>
							</div>

							<!-- sección de tablas -->

							<div class="row">
								<div class="col-md-6">
									<div class="box">
										<div class="box-header">
											<div class="form-group">
												<label>Decreto</label> <select class="form-control"
													id="cod_destino" name="cbogenero">
													<option>Seleccione</option>
												</select>
												</p>
												<input type="button" name="btnregistrar" id="reg"
													class="btn btn-success" value="Agregar">
											</div>
										</div>
										<!-- /.box-header -->
										<div class="box-body">
											<table id="cod_secciones"
												class="table table-bordered table-hover">
												<thead>
													<tr>
														<th>N°</th>
														<th>Sección</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Trident</td>
														<td>Internet Explorer 4.0</td>
													</tr>
													<tr>
														<td>Trident</td>
														<td>Internet Explorer 5.0</td>

													</tr>
													<tr>
														<td>Trident</td>
														<td>Internet Explorer 5.5</td>

													</tr>
												</tbody>

											</table>
										</div>
										<!-- /.box-body -->
									</div>
								</div>

								<div class="col-md-6">
									<div class="box">
										<div class="box-header">
											<div class="form-group">
												<label>Disposiciones</label> <select class="form-control"
													id="cod_destino" name="cbogenero">
													<option>Seleccione</option>
												</select>
												</p>
												<input type="button" name="btnregistrar" id="reg"
													class="btn btn-success" value="Agregar">
											</div>
										</div>
										<!-- /.box-header -->
										<div class="box-body">
											<table id="cod_disposiciones"
												class="table table-bordered table-hover">
												<thead>
													<tr>
														<th>N°</th>
														<th>Disposición</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Trident</td>
														<td>Internet Explorer 4.0</td>
													</tr>
													<tr>
														<td>Trident</td>
														<td>Internet Explorer 5.0</td>

													</tr>
													<tr>
														<td>Trident</td>
														<td>Internet Explorer 5.5</td>

													</tr>
												</tbody>

											</table>
										</div>
										<!-- /.box-body -->
									</div>
								</div>

								<div class="col-md-6"></div>
							</div>

							<!-- Fin de Sección de Multiselector -->
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>Accion : </label> <select class="form-control"
											id="cod_accion" name="cboclasificacion">
											<option>Seleccione</option>

										</select> <input type="hidden" name="txtopcion" value="">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Observaciones : </label> <input type="text"
											class="form-control" id="observaciones"
											placeholder="Escriba adjuntas al decreto">
									</div>
								</div>
							</div>

							<div class="row"></div>

							<!-- Sección de botones -->

							<div class="row">
								<div class="col-md-4">
									<div class="form-group"></div>
								</div>
								<div class="col-md-4">
									<div class="form-group"></div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<input type="button" name="btnregistrar" id="reg"
											class="btn btn-success" value="Registrar"> <input
											type="button" name="btnactualizar" id="act"
											class="btn btn-primary" value="Actualizar"> <input
											type="button" name="btneliminar" class="btn btn-primary"
											value="Eliminar">
									</div>
								</div>
							</div>

							<!-- Fin Sección de botones -->

							<div class="row">
								<div class="col-md-12" id="panelresp"></div>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- <script src="dist/js/components.js"></script> -->
</body>
</html>