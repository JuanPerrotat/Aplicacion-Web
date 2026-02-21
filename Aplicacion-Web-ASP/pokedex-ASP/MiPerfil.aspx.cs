using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace pokedex_ASP
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Seguridad.sesionActiva(Session["usuario"]))
                    {
                        Entrenador entrenador = (Entrenador)Session["usuario"];
                        txtEmail.Text = entrenador.Email;
                        txtEmail.Enabled = false;
                        txtNombre.Text = entrenador.Nombre;
                        txtApellido.Text = entrenador.Apellido;
                        txtFechaNacimiento.Text = entrenador.FechaNacimiento.ToString("yyyy-MM-dd");
                        if (!string.IsNullOrEmpty(entrenador.ImagenPerfil))
                            imgNuevoPerfil.ImageUrl = "~/Imagenes/" + entrenador.ImagenPerfil;

                    }
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                EntrenadorNegocio negocio = new EntrenadorNegocio();
                Entrenador entrenador = (Entrenador)Session["usuario"];
                //Escribir img
                if (txtImagen.PostedFile.FileName != "")
                {
                    string ruta = Server.MapPath("./Imagenes/");
                    txtImagen.PostedFile.SaveAs(ruta + "perfil-" + entrenador.Id + ".jpg");
                    entrenador.ImagenPerfil = "perfil-" + entrenador.Id + ".jpg";
                }

                entrenador.Email = txtEmail.Text;
                entrenador.Nombre = txtNombre.Text;
                entrenador.Apellido = txtApellido.Text;
                entrenador.FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text);

                negocio.actualizar(entrenador);

                //Response.Redirect("Default.aspx", false);

                //Leer img
                Image avatar = (Image)Master.FindControl("imgAvatar");
                avatar.ImageUrl = "~/Imagenes/" + entrenador.ImagenPerfil;
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }
        }
    }
}