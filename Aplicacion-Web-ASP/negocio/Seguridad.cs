using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using negocio;
using System.Security.Policy;

namespace negocio
{
    public static class Seguridad
    {
        public static bool sesionActiva(object user)
        {
            Entrenador entrenador = user != null ? (Entrenador)user : null;
            if (entrenador != null && entrenador.Id != 0)
                return true;
            else
                return false;
        }

        public static bool esAdmin(object user)
        {
            Entrenador entrenador = user != null ? (Entrenador)user : null;
                return entrenador != null ? entrenador.esAdmin : false;

        }
    }
}
