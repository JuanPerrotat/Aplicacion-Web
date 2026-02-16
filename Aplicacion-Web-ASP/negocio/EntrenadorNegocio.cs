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

                datos.setearConsulta("Update USERS set imagenPerfil = @img where id = @id");

                //datos.setearConsulta("Update USERS set imagenPerfil = @img, email = @email, " +
                //  "nombre = @nombre, apellido = @apellido, fechaNacimiento = @fechaNacimiento where id = @id");

                datos.setearParametro("@img", entrenador.ImagenPerfil);
                //datos.setearParametro("@email", entrenador.Email);
                //datos.setearParametro("@nombre", entrenador.Nombre);
                //datos.setearParametro("@Apellido", entrenador.Apellido);
                //datos.setearParametro("@fechaNacimiento", entrenador.FechaNacimiento);

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
                datos.setearConsulta("Select id, email, pass, admin, imagenPerfil from USERS where email = @email AND pass = @pass");
                datos.setearParametro("@email", entrenador.Email);
                datos.setearParametro("@pass", entrenador.Pass);
                datos.ejecutarLectura();
                if (datos.Lector.Read())
                {
                    entrenador.Id = (int)datos.Lector["id"];
                    entrenador.esAdmin = (bool)datos.Lector["admin"];
                    if(!(datos.Lector["imagenPerfil"] is DBNull))
                        entrenador.ImagenPerfil = (string)datos.Lector["imagenPerfil"];

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