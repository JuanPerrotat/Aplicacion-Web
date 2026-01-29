using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_ASP
{
    public partial class imagenConUrl : System.Web.UI.Page
    {
        public string urlImagen { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            urlImagen = txtUrlImagen.Text;
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            urlImagen = txtUrlImagen.Text;
        }
    }
}