using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Welcome : System.Web.UI.Page
{

    public static List<Game> Games = new List<Game>();

    public string Truncate(string value, int maxChars)
    {
        return value.Length <= maxChars ? value : value.Substring(0, maxChars) + " ...";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;

            //marta
            //konekcija.ConnectionString = "Data Source=dell-PC\\SQLEXPRESS;Integrated Security=True";

            SqlCommand komanda = new SqlCommand();
            komanda.Connection = konekcija;
            komanda.CommandText = "Select * from game";
            SqlDataAdapter adapter = new SqlDataAdapter(komanda);
            DataSet ds = new DataSet();

            try
            {
                konekcija.Open();
                SqlDataReader reader = komanda.ExecuteReader();
                while (reader.Read())
                {
                    string[] path = (reader["pic_location"].ToString()).Split('\\');
                    string description = Truncate(reader["description"].ToString(), 50);
                    Games.Add(new Game(reader["name"].ToString(), reader["price"].ToString(), description, path[path.Count() - 1],reader["id"].ToString()));
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                konekcija.Close();
            }
        }
    }

    public void addToCart(){
        Response.Redirect("addgame.aspx");
    }
}