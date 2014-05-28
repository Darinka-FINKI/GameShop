using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class buygame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList list1 = new ArrayList();
        var list = new List<KeyValuePair<string, string>>();
        list.Add(new KeyValuePair<string, string>("Name", "Dota"));
        list.Add(new KeyValuePair<string, string>("Des", "Very nice game"));
        list.Add(new KeyValuePair<string, string>("Price", "200"));
        list.Add(new KeyValuePair<string, string>("Picture", "C:\\Users\\ACER\\Documents\\Visual Studio 2010\\WebSites\\GameShop\\mmm.jpg"));
        list1.Add(list);
        int vkupno = 0;
        foreach (var li in list1)
        {
            
            foreach (var el in list)
            {
               if(el.Key=="Name") lblName.Text = el.Value;
               if (el.Key == "Des") lblDes.Text = el.Value;
               if (el.Key == "Price")
               {
                   lblPrice.Text = el.Value;
                   vkupno += Convert.ToInt16(lblPrice.Text) * Convert.ToInt16(txtQty.Text);
                   lblTotal.Text = vkupno.ToString();
               
               }
          
            }
        
        }
        Session["kosnicka"] = list1;

       

    }
    protected void btnBuy_Click(object sender, EventArgs e)
    {
        ArrayList list1 = new ArrayList();
        list1 = (ArrayList)Session["kosnicka"];
        for (int i = 0; i < list1.Count;i++ )
        {   list1.RemoveAt(i);
                lblInfo.Text = "Нарачката е успешна! Благодариме што купувате од GameShop!";
        }

        Session["kosnicka"] = list1;
        
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string name = lblName.Text;
        ArrayList list1 = new ArrayList();
        var list = new List<KeyValuePair<string, string>>();
        
        list1 =(ArrayList) Session["kosnicka"];
        foreach (var li in list1)
        {

            foreach (var el in list)
            {
                if (el.Key == "Name")
                {
                    if (el.Value == name)
                    {
                        list1.Remove(li);
                    }
                }
               // if (el.Key == "Des") lblDes.Text = el.Value;
              //  if (el.Key == "Price") lblPrice.Text = el.Value;
            }

        }
     
        Session["kosnicka"] = list1;


    }
    protected void btnCont_Click(object sender, EventArgs e)
    {
        Response.Redirect("Welcome.aspx");
    }


    protected void txtQty_TextChanged(object sender, EventArgs e)
    {
        Session["kolicina"] = Convert.ToInt16( txtQty.Text);
    }
}