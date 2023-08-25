using System;
using System.Collections.Generic;

namespace VolksWagenAPI.Models
{
    public partial class Errore
    {
        public int Id { get; set; }
        public string? TipoError { get; set; }
        public string? Descripción { get; set; }
        public DateTime? Fecha { get; set; }
        public TimeSpan? Hora { get; set; }
        public string? UsuarioReporte { get; set; }
        public string? Estado { get; set; }
        public string? Prioridad { get; set; }
        public string? NotasSolución { get; set; }
        public string? CausaRaíz { get; set; }
        public int? Nivel { get; set; }
        public string? Impacto { get; set; }
        public string? Frecuencia { get; set; }

        public virtual ErrorHerramientum ErrorHerramientum { get; set; } = null!;
        public virtual ErrorLineaProduccion ErrorLineaProduccion { get; set; } = null!;
        public virtual ErrorPersonal ErrorPersonal { get; set; } = null!;
    }
}
