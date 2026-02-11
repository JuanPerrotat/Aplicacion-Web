using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_ASP
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginEjemplo.aspx", false);
            Session.Remove("usuario");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("LoginEjemplo.aspx", false);
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AltaTrainee.aspx", false);
        }
    }
}