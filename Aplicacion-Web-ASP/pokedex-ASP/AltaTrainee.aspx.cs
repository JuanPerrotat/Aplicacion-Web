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
    public partial class AltaTrainee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                Entrenador nuevo = new Entrenador();
                EntrenadorNegocio entrenadorNegocio = new EntrenadorNegocio();  
                EmailService emailService = new EmailService();
                nuevo.Email = txtMail.Text;
                nuevo.Pass = txtPassword.Text;
                nuevo.Id = entrenadorNegocio.insertarNuevoEntrenador(nuevo);
                Session.Add("usuario", nuevo);

                emailService.ArmarCorreo(nuevo.Email, "Bienvenido/a, nuevo entrenador/a", "Hola, te damos la bienvenida a la web de Pokedex. " +
                    "Te has registrado exitosamente como nuevo/a entrenador/a. Por favor, no respondas éste mail, ya que se genera automáticamente.");
                emailService.EnviarMail();

                Response.Redirect("Default.aspx", false);
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}