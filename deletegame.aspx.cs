using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class deletegame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        IspolniTabela();
    }

    protected void IspolniTabela()
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        string sqlString = "SELECT * FROM game";
        SqlCommand komanda = new SqlCommand(sqlString, konekcija);
        SqlDataAdapter adapter = new SqlDataAdapter(komanda);
        DataSet ds = new DataSet();
        try
        {
            konekcija.Open();
            adapter.Fill(ds, "Game");
            gvGames.DataSource = ds;
            gvGames.DataBind();
            ViewState["dataset"] = ds;

        }
        finally {
            konekcija.Close();
        }
            
    }
    protected void gvGames_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblPoraka.Text = "Го слектиравте филмот" + gvGames.SelectedRow.Cells[1].Text;

    }

    protected void gvGames_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvGames.PageIndex = e.NewPageIndex;
        gvGames.SelectedIndex = -1;
        DataSet ds = (DataSet)ViewState["dataset"];
        gvGames.DataSource = ds;
        gvGames.DataBind();
    }
    protected void gvGames_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}