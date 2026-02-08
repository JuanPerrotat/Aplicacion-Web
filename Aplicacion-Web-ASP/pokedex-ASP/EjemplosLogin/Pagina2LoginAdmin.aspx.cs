using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_ASP.EjemplosLogin
{
    public partial class Pagina2LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["usuario"] != null && ((dominio.Usuario)Session["usuario"]).UserType == dominio.TipoUsuario.Administrador))
            {
                Session.Add("error", "No tienes permisos para ingresar a ésta pantalla. Necesitas nivel admin.");
                Response.Redirect("../Error.aspx", false);
            }
        }

        protected void volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginEjemplo.aspx", false);
        }
    }
}