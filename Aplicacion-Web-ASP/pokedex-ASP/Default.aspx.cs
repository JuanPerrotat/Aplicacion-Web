using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace pokedex_ASP
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Pokemon> ListaPokemons { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            ListaPokemons = negocio.listarConSP();

            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaPokemons;
                repRepetidor.DataBind();
            }
        }

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;
        }
    }
}