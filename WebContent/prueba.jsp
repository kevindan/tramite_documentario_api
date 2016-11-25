<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>prueba</title>
</head>
<body>
	<input type="button" name="btnregistrar" id="reg" value="Registrar">
	<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
	<script>
$(document).ready(function(){
	/*$( '#edit' ).click( function (e) {
		e.preventDefault();
		console.log(e);
		var cod_docente;
	} );*/
	$('#reg').click(function(event){
		
	 		var opcionvar = "reg";
		
			var asuntovar = "Hola esto es una prueba";
			var documento_fechavar = "2016-11-25";
			var tipo_documento_idvar = "2";
			var documento_numerovar = "123";
			var unidad_id_origenvar = "3";
			var seccion_id_destinovar = "2";
			var accion_idvar = "2";
			var url_archivovar ="localhost/image.jpg";
			var observacionvar = "Dar cummplimiento";

			
			$.post('<%=request.getContextPath()%>/ServletDocumento', {

					opcion : opcionvar,

					asunto : asuntovar,
					documento_fecha : documento_fechavar,
					tipo_documento_id : tipo_documento_idvar,
					documento_numero : documento_numerovar,
					unidad_id_origen : unidad_id_origenvar,
					seccion_id_destino : seccion_id_destinovar,
					accion_id : accion_idvar,
					url_archivo : url_archivovar,
					observacion : observacionvar

				}, function(responsetext) {

					alert("Registro Satisfactorio");

				});
			});
		});
	</script>

</body>
</html>