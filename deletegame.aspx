<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deletegame.aspx.cs" Inherits="deletegame" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="gvGames" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" onpageindexchanging="gvGames_PageIndexChanging" 
            onrowdeleting="gvGames_RowDeleting" 
            onselectedindexchanged="gvGames_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="name" HeaderText="Име на филм" />
                <asp:BoundField DataField="game_type" HeaderText="Тип на филм" />
                <asp:BoundField DataField="description" HeaderText="Опис за филмот" />
                <asp:BoundField DataField="price" HeaderText="Цена" />
                <asp:BoundField DataField="bought" HeaderText="Нарачки" />
                <asp:BoundField DataField="num_avail" HeaderText="Достапни филмови" />
                <asp:CommandField SelectText="Селектирај" ShowSelectButton="True" />
                <asp:CommandField DeleteText="Избришај" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="lblPoraka" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
