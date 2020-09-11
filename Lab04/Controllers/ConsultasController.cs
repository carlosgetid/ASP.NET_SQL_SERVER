using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Configuration;
using System.Data.SqlClient;
using Lab04.Models;
using System.Data;

namespace Lab04.Controllers
{
    public class ConsultasController : Controller
    {
        SqlConnection cn = new SqlConnection(
            ConfigurationManager.ConnectionStrings["CNX"].ConnectionString);

        List<Cliente> buscarClientes(String nombre)
        {
            List<Cliente> resultado = new List<Cliente>();
            SqlCommand cmd = new SqlCommand("sp_buscar_clientes", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Nombre", nombre);
            cn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Cliente c = new Cliente();
                c.idCliente = Convert.ToInt32(dr["idcliente"].ToString());
                c.nombre = dr["nombre"].ToString();
                c.direccion = dr["direccion"].ToString();
                c.idPais = Convert.ToInt32(dr["idpais"].ToString());
                c.telefono = dr["telefono"].ToString();
                resultado.Add(c);
            }
            dr.Close();
            cn.Close();

            return resultado;
        }
        
        public ActionResult busquedaClientes(String nombre)
        {
            List<Cliente> lista = buscarClientes(nombre);

            return View(lista);
        }

        // GET: Consultas
        public ActionResult Index()
        {
            return View();
        }
    }
}