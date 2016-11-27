package entity;

public class VistaDocumentoSimple {

	private String documento_id;
	private String asunto;
	private String documento_fecha;
	private String tipo_documento;
	private String fecha_registro;
	private String documento_numero;
	private String unidad;
	private String seccion;
	private String url_archivo;
	private String clasificacion;

	public VistaDocumentoSimple(String documento_id, String asunto, String documento_fecha, String tipo_documento,
			String fecha_registro, String documento_numero, String unidad, String seccion, String url_archivo,
			String clasificacion) {
		super();
		this.documento_id = documento_id;
		this.asunto = asunto;
		this.documento_fecha = documento_fecha;
		this.tipo_documento = tipo_documento;
		this.fecha_registro = fecha_registro;
		this.documento_numero = documento_numero;
		this.unidad = unidad;
		this.seccion = seccion;
		this.url_archivo = url_archivo;
		this.clasificacion = clasificacion;
	}

	public VistaDocumentoSimple() {

	}

	public String getDocumento_id() {
		return documento_id;
	}

	public void setDocumento_id(String documento_id) {
		this.documento_id = documento_id;
	}

	public String getAsunto() {
		return asunto;
	}

	public void setAsunto(String asunto) {
		this.asunto = asunto;
	}

	public String getDocumento_fecha() {
		return documento_fecha;
	}

	public void setDocumento_fecha(String documento_fecha) {
		this.documento_fecha = documento_fecha;
	}

	public String getTipo_documento() {
		return tipo_documento;
	}

	public void setTipo_documento(String tipo_documento) {
		this.tipo_documento = tipo_documento;
	}

	public String getFecha_registro() {
		return fecha_registro;
	}

	public void setFecha_registro(String fecha_registro) {
		this.fecha_registro = fecha_registro;
	}

	public String getDocumento_numero() {
		return documento_numero;
	}

	public void setDocumento_numero(String documento_numero) {
		this.documento_numero = documento_numero;
	}

	public String getUnidad() {
		return unidad;
	}

	public void setUnidad(String unidad) {
		this.unidad = unidad;
	}

	public String getSeccion() {
		return seccion;
	}

	public void setSeccion(String seccion) {
		this.seccion = seccion;
	}

	public String getUrl_archivo() {
		return url_archivo;
	}

	public void setUrl_archivo(String url_archivo) {
		this.url_archivo = url_archivo;
	}

	public String getClasificacion() {
		return clasificacion;
	}

	public void setClasificacion(String clasificacion) {
		this.clasificacion = clasificacion;
	}

}
