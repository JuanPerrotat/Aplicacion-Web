using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
	public class EntrenadorNegocio
	{
		public int insertarNuevoEntrenador(Entrenador nuevo)
		{
			AccesoDatos datos = new AccesoDatos();
			try
			{
				datos.setearProcedimiento("insertarNuevoEntrenador");
				datos.setearParametro("@email", nuevo.Email);
				datos.setearParametro("@pass", nuevo.Pass);
				return datos.ejecutarAccionScalar();
			}
			catch (Exception ex)
			{

				throw ex;
			}
			finally
			{
				datos.cerrarConexion();
			}
		}

		public bool Login(Entrenador entrenador)
		{
			AccesoDatos datos = new AccesoDatos();

			try
			{
				datos.setearConsulta("Select id, email, pass, admin from USERS where email = @email AND pass = @pass");
				datos.setearParametro("@email", entrenador.Email);
				datos.setearParametro("@pass", entrenador.Pass);
				datos.ejecutarLectura();
				if (datos.Lector.Read())
				{
					entrenador.Id = (int)datos.Lector["id"];
					entrenador.esAdmin = (bool)datos.Lector["admin"];
					return true;
				}
				return false;
			}
			catch (Exception ex)
			{
				throw ex;
			}
			finally
			{
				datos.cerrarConexion();
			}
		}
	}
}