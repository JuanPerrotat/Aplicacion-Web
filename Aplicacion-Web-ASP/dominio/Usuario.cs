using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public enum TipoUsuario
    {
        Usuario = 1,
        Administrador = 2
    }
    public class Usuario
    {
        public int Id { get; set; }
        public string User { get; set; }
        public string Pass { get; set; }
        public TipoUsuario UserType { get; set; }

        public Usuario(string usuario, string contraseña, bool admin)
        {
            User = usuario;
            Pass = contraseña;
            UserType = admin ? TipoUsuario.Administrador : TipoUsuario.Usuario;
        }

    }
}
