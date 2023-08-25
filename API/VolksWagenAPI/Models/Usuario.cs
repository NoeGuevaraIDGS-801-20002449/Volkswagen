using System;
using System.Collections.Generic;

namespace VolksWagenAPI.Models
{
    public partial class Usuario
    {
        public int IdUsuario { get; set; }
        public string? NombreUsuario { get; set; }
        public string? Contraseña { get; set; }
        public string? Rol { get; set; }
        public string? Estatus { get; set; }
    }
}
