package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.DocumentoDao;
import entity.Documento;

/**
 * Servlet implementation class ServletDocumento
 */
@WebServlet("/ServletDocumento")
@MultipartConfig
public class ServletDocumento extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletDocumento() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		String opcion = request.getParameter("opcion");

		String asunto;
		String documento_fecha;
		int tipo_documento_id = 0;
		String documento_numero;
		int unidad_id_origen = 0;
		int seccion_id_destino = 0;
		int clasificacion_id = 0;
		String url_archivo;
		String observacion;

		Documento d;
		DocumentoDao oDao;

		if (opcion.equals("reg")) {

			asunto = request.getParameter("asunto");
			documento_fecha = request.getParameter("documento_fecha");
			tipo_documento_id = Integer.parseInt(request.getParameter("tipo_documento_id"));
			documento_numero = request.getParameter("documento_numero");
			unidad_id_origen = Integer.parseInt(request.getParameter("unidad_id_origen"));
			seccion_id_destino = Integer.parseInt(request.getParameter("seccion_id_destino"));
			clasificacion_id = Integer.parseInt(request.getParameter("clasificacion_id"));
			url_archivo = request.getParameter("url_archivo");
			observacion = request.getParameter("observacion");

			try {

				d = new Documento();

				d.setAsunto(asunto);
				d.setDocumento_fecha(documento_fecha);
				d.setTipo_documento_id(tipo_documento_id);
				d.setDocumento_numero(documento_numero);
				d.setUnidad_id_origen(unidad_id_origen);
				d.setSeccion_id_destino(seccion_id_destino);
				d.setClasificacion_id(clasificacion_id);
				d.setUrl_archivo(url_archivo);
				d.setObservacion(observacion);

				/*
				 * 
				 * String json = new Gson().toJson(d);
				 * 
				 * response.setContentType("application/json");
				 * response.setCharacterEncoding("UTF-8");
				 * response.getWriter().write(json);
				 */

				oDao = new DocumentoDao();
				Documento doc = new Documento();

				doc = oDao.Grabar(d);

				out.println("Documento Generado : " + doc.getDocumento_id());

			} catch (Exception e) {

				out.println(e);

				System.out.print(e);
			}

		} else if (opcion.equals("act")) {

		} else if (opcion.equals("elim")) {

		}

	}

}
