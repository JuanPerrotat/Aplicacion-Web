using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;
using pokedex_ASP.EjemplosLogin;

namespace pokedex_ASP
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Page is LoginEjemplo || Page is Default || Page is Contacto || Page is AltaTrainee))
            {
                if (!Seguridad.sesionActiva(Session["usuario"]))
                    Response.Redirect("LoginEjemplo.aspx", false);
            }

            if (Seguridad.sesionActiva(Session["usuario"]))
                imgAvatar.ImageUrl = "~/Imagenes/" + ((Entrenador)Session["usuario"]).ImagenPerfil;
            else
                imgAvatar.ImageUrl = "https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-thumbnail.png";
        }
        protected void btnLoguearse_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginEjemplo.aspx", false);
        }
        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AltaTrainee.aspx", false);
        }
        protected void btnDesloguearse_Click(object sender, EventArgs e)
        {
            //Session.Remove("usuario");
            Session.Clear();
            Response.Redirect("LoginEjemplo.aspx", false);
        }
    }
}