using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
            Response.Redirect("LoginEjemplo.aspx", false);
            Session.Remove("usuario");
        }
    }
}