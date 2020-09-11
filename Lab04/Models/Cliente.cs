using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab04.Models
{
    public class Cliente
    {
        public int idCliente { get; set; }
        public String nombre { get; set; }
        public String direccion { get; set; }
        public String telefono { get; set; }
        public int idPais { get; set; }
        public string nombrePais { get; set; }
    }
}