using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_ASP.EjemplosDropDown
{
    public partial class DDEstatico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlDB.DataSource = negocio.listarConSP();
                    ddlDB.DataTextField = "Nombre";
                    ddlDB.DataValueField = "Id";
                    ddlDB.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }
        }   
    }
}