using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        checkCookieExistance();

        setVisibilityLinks();
    }

    protected void loginBtn_Click(object sender, EventArgs e)
    {

        String usernameValue = username.Text;
        String passwordValue = password.Text;

        SqlConnection konek = new SqlConnection("Data Source=dell-PC\\SQLEXPRESS;Integrated Security=True");

        String q = "select * from users";

        SqlCommand komanda = new SqlCommand(q, konek);

        try
        {
            konek.Open();

            SqlDataReader reader = komanda.ExecuteReader();

            String databasePass = null;

            while (reader.Read())
            {

                if (reader["username"].Equals(usernameValue))
                {
                    databasePass = reader["password1"].ToString();
                }

            }

            if (passwordValue.Equals(databasePass))
            {

                lblGreska.Visible = true;
                lblGreska.Text = "успешна најава";

                Session["korisnik"] = usernameValue;

                if (rememberMe.Checked)
                {

                    createCookie(usernameValue);

                }

                setVisibilityLinks();
            }

        }
        catch (Exception err)
        {
            lblGreska.Text = err.Message;
            lblGreska.Visible = true;
        }

        finally
        {
            konek.Close();
        }
    }

    private void setVisibilityLinks()
    {

        String username;
        if (Session["korisnik"] == null) username = null;
        else username = Session["korisnik"].ToString();

        if (username == null)
        {
            najavenLink.Visible = false;
            adminLink.Visible = false;
            registriranLink.Visible = true;
            kosnickaLink.Visible = false;
            logoutLink.Visible = false;
            najavaLink.Visible = true;
        }

        else if (username.Equals("admin"))
        {
            najavenLink.Text = "Најавен како " + username;
            najavenLink.Visible = true;
            adminLink.Visible = true;
            registriranLink.Visible = false;
            kosnickaLink.Visible = false;
            logoutLink.Visible = true;
            najavaLink.Visible = false;
        }

        else if (!username.Equals("admin"))
        {
            najavenLink.Text = "Најавен како " + username;
            najavenLink.Visible = true;
            adminLink.Visible = false;
            registriranLink.Visible = false;
            kosnickaLink.Visible = true;
            logoutLink.Visible = true;
            najavaLink.Visible = false;

            lblGreska.Text = "setvisibility called";
        }

    }

    private void createCookie(String username)
    {

        HttpCookie cookie = new HttpCookie("rememberme");



        // smeni vremetraenje na cookie
        cookie.Expires = DateTime.Now.AddDays(1);
        cookie["korisnik"] = username;

        Response.SetCookie(cookie);

    }

    private void checkCookieExistance()
    {

        HttpCookie cookie = Request.Cookies["rememberme"];

        if (cookie != null)
            Session["korisnik"] = cookie["korisnik"];


    }
            
}
