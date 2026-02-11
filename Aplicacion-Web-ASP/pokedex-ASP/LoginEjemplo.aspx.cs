using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace pokedex_ASP.EjemplosLogin
{
    public partial class LoginEjemplo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Entrenador entrenador = new Entrenador();
            EntrenadorNegocio negocio = new EntrenadorNegocio();
            try
            {
                entrenador.Email = txtMail.Text;
                entrenador.Pass = txtPassword.Text;
                if (negocio.Login(entrenador))
                {
                    Session.Add("usuarioLogueado", entrenador);
                    Response.Redirect("MiPerfil.aspx", false);
                }
                else
                {
                    Session.Add("error", "Mail y contraseña incorrrectos.");
                    Response.Redirect("Error.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}