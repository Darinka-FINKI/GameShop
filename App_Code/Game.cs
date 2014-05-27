using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Game
/// </summary>
public class Game
{
    public string name {get; set;}
    public string price { get; set; }
    public string description { get; set; }
    public string img_path { get; set; }
    public string id { get; set; }
    

	public Game()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public Game(string n,string p, string des, string path, string _id)
    {
        name = n;
        price = p;
        description = des;
        img_path = path;
        id = _id;
    }


}