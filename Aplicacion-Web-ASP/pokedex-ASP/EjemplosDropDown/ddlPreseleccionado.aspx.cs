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
    public partial class ddlPreseleccionado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ElementoNegocio negocio = new ElementoNegocio();
            try
            {
                List<Elemento> listaElementos = negocio.listar();
                ddlTipoPreseleccionado.DataSource = listaElementos;
                ddlTipoPreseleccionado.DataTextField = "Descripcion";
                ddlTipoPreseleccionado.DataValueField = "Id";
                ddlTipoPreseleccionado.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            string id = txtTipo.Text;

            //opcion 1
            //ddlTipoPreseleccionado.SelectedIndex = ddlTipoPreseleccionado.Items.IndexOf(ddlTipoPreseleccionado.Items.FindByValue(id));

            //opcion 2
            ddlTipoPreseleccionado.SelectedIndex = -1;
            ddlTipoPreseleccionado.Items.FindByValue(id).Selected = true;

        }
    }
}