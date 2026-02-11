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
            Entrenador entrenador = Session["usuarioLogueado"] != null ? (Entrenador)Session["usuarioLogueado"] : null;
            if(!(entrenador != null && entrenador.Id != 0))
                Response.Redirect("LoginEjemplo.aspx", false);


        }
    }
}