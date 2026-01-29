using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_ASP.EjemplosDropDown
{
    public partial class DDEnlazado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocioPokemon = new PokemonNegocio();
            ElementoNegocio negocioElemento = new ElementoNegocio();

            try
            {
                if (!IsPostBack)
                {
                    List<Pokemon> listaPokemon = negocioPokemon.listarConSP();
                    Session["listaPokemon"] = listaPokemon;

                    List<Elemento> listaElementos = negocioElemento.listar();
                    ddlTipos.DataSource = listaElementos;
                    ddlTipos.DataTextField = "Descripcion"; //Lo que quiero que muestre
                    ddlTipos.DataValueField = "Id";         //Lo que toma como elemento para mostrar
                    ddlTipos.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
            }
        }

        protected void ddlTipos_SelectedIndexChanged(object sender, EventArgs e)
        {
             int id = int.Parse(ddlTipos.SelectedValue);
            ddlPokemons.DataSource = ((List<Pokemon>)Session["listaPokemon"]).FindAll(x => x.Tipo.Id == id);
            ddlPokemons.DataTextField = "Nombre";
            ddlPokemons.DataValueField = "Id";
            ddlPokemons.DataBind();
        }
    }
}