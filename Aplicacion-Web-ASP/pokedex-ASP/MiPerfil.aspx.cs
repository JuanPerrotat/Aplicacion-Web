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
            if (!Seguridad.sesionActiva(Session["usuario"]))
                Response.Redirect("LoginEjemplo.aspx", false);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                //Escribir img
                
                EntrenadorNegocio negocio = new EntrenadorNegocio();

                string ruta = Server.MapPath("./Imagenes/");
                Entrenador entrenador = (Entrenador)Session["usuario"];
                txtImagen.PostedFile.SaveAs(ruta + "perfil-" + entrenador.Id + ".jpg");

                entrenador.ImagenPerfil = "perfil-" + entrenador.Id + ".jpg";
                //entrenador.Email = txtEmail.Text;
                //entrenador.Nombre = txtNombre.Text;
                //entrenador.Apellido = txtApellido.Text;
                //entrenador.FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text);

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