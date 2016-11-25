package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import database.DataAccess;
import entity.Documento;
import interfaces.Intermetodos;

public class DocumentoDao implements Intermetodos<Documento> {

	@Override
	public void Grabar(Documento o) throws Exception {
		Connection cn = null;
		try {
			cn = DataAccess.getConnection();
			cn.setAutoCommit(false);

			String query1 = " select valor from controlador where parametro = 'documento' ";
			Statement stm = cn.createStatement();
			ResultSet rst = stm.executeQuery(query1);

			rst.next();

			int i = rst.getInt("valor");

			rst.close();

			String query2 = "update controlador set valor = valor+1 where parametro = 'documento' ";
			Statement stm2 = cn.createStatement();
			stm2.executeUpdate(query2);

			String pref = "";

			if (i <= 9) {
				pref = "D00000000" + i;
			} else if (i >= 10 || i < 99) {
				pref = "D0000000" + i;
			} else if (i >= 100 || i < 999) {
				pref = "D000000" + i;
			} else if (i >= 1000 || i < 9999) {
				pref = "D00000" + i;
			} else if (i >= 10000 || i < 99999) {
				pref = "D0000" + i;
			} else if (i >= 100000 || i < 999999) {
				pref = "D000" + i;
			} else if (i >= 1000000 || i < 9999999) {
				pref = "D00" + i;
			} else if (i >= 10000000 || i < 99999999) {
				pref = "D0" + i;
			} else if (i >= 100000000 || i < 999999999) {
				pref = "D" + i;
			}

			o.setDocumento_id(pref);

			String sql = "insert into documento(documento_id,asunto,documento_fecha,"
					+ "tipo_documento_id,fecha_registro,documento_numero,unidad_id_origen,"
					+ "seccion_id_desctino,accion_id,url_archivo,observacion,anulado,estado)"
					+ " values (?,?,?,?,sysdate(),?,?,?,?,?,0,1) ";

			PreparedStatement pstm = cn.prepareStatement(sql);

			pstm.setString(1, o.getDocumento_id());
			pstm.setString(2, o.getAsunto());
			pstm.setString(3, o.getDocumento_fecha());
			pstm.setInt(4, o.getTipo_documento_id());
			pstm.setString(5, o.getDocumento_numero());
			pstm.setInt(6, o.getUnidad_id_origen());
			pstm.setInt(7, o.getSeccion_id_destino());
			pstm.setInt(8, o.getAccion_id());
			pstm.setString(9, o.getUrl_archivo());
			pstm.setString(10, o.getObservacion());

			pstm.executeUpdate();

			pstm.close();

			cn.commit();

		} catch (Exception e) {
			try {
				cn.rollback();
			} catch (Exception exception) {

			}
			throw e;
		} finally {
			try {
			} catch (Exception e) {
				cn.close();
			}
		}
	}

	@Override
	public void Eliminar(Documento o) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void Modificar(Documento o) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Documento> Listar() throws Exception {
		Connection cn = null;
		List<Documento> lista = new ArrayList<Documento>();
		try {
			// conexion a la base de datos
			cn = DataAccess.getConnection();
			// comando sql
			String sql = "select documento_id,asunto,documento_fecha,"
					+ "tipo_documento_id,fecha_registro,documento_numero,unidad_id_origen,"
					+ "seccion_id_desctino,observacion from documento where anulado = 0 and estado = 1 ";
			// crear statement
			Statement stm = cn.createStatement();
			// ejecutar comando y obtener resultados
			ResultSet rs = stm.executeQuery(sql);
			while (rs.next()) {
				Documento d = new Documento();
				// asignar valores al objeto d
				d.setDocumento_id(rs.getString("documento_id"));
				d.setAsunto(rs.getString("Asunto"));
				d.setDocumento_fecha(rs.getString("documento_fecha"));
				d.setTipo_documento_id(rs.getInt("tipo_documento_id"));
				d.setFecha_registro(rs.getString("fecha_registro"));
				d.setDocumento_numero(rs.getString("documento_numero"));
				d.setUnidad_id_origen(rs.getInt("unidad_id_origen"));
				d.setSeccion_id_destino(rs.getInt("seccion_id_destino"));
				d.setObservacion(rs.getString("observacion"));

				lista.add(d);
			}
			// cerrar cursor
			rs.close();
			stm.close();
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				cn.close();
			} catch (Exception e) {
			}
		}
		return lista;

	}

	@Override
	public List<Documento> Filtrar(Documento o) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Documento Buscar(Documento o) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
