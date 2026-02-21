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
        public void actualizar(Entrenador entrenador)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearConsulta("Update USERS set imagenPerfil = @img, nombre = @nombre, " +
                    "apellido = @apellido, fechaNacimiento = @fecha where id = @id");
                datos.setearParametro("@img", entrenador.ImagenPerfil);
                datos.setearParametro("@nombre", entrenador.Nombre);
                datos.setearParametro("@apellido", entrenador.Apellido);
                datos.setearParametro("@fecha", entrenador.FechaNacimiento);
                datos.setearParametro("@id", entrenador.Id);
                datos.ejecutarAccion();

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
                datos.setearConsulta("Select id, email, nombre, apellido, pass, admin, imagenPerfil, " +
                    "fechaNacimiento from USERS where email = @email AND pass = @pass");
                datos.setearParametro("@email", entrenador.Email);
                datos.setearParametro("@pass", entrenador.Pass);
                datos.ejecutarLectura();
                if (datos.Lector.Read())
                {
                    entrenador.Id = (int)datos.Lector["id"];
                    entrenador.esAdmin = (bool)datos.Lector["admin"];
                    if (!(datos.Lector["nombre"] is DBNull))
                        entrenador.Nombre = (string)datos.Lector["nombre"];
                    if (!(datos.Lector["apellido"] is DBNull))
                        entrenador.Apellido = (string)datos.Lector["apellido"];
                    if (!(datos.Lector["imagenPerfil"] is DBNull))
                        entrenador.ImagenPerfil = (string)datos.Lector["imagenPerfil"];
                    if (!(datos.Lector["fechaNacimiento"] is DBNull))
                        entrenador.FechaNacimiento = DateTime.Parse(datos.Lector["fechaNacimiento"].ToString());

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