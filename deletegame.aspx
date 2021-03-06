﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deletegame.aspx.cs" Inherits="deletegame" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Gridview Add, Edit and Delete</title>
<script type="text/javascript">
    function deleteConfirm(pubid) {
        var result = confirm('Do you want to delete ' + pubid + ' ?');
        if (result) {
            return true;
        }
        else {
            return false;
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
<div>
<asp:GridView ID="gridView" DataKeyNames="au_id" runat="server"
        AutoGenerateColumns="false" ShowFooter="true" HeaderStyle-Font-Bold="true"
        onrowcancelingedit="gridView_RowCancelingEdit"
        onrowdeleting="gridView_RowDeleting"
        onrowediting="gridView_RowEditing"
        onrowupdating="gridView_RowUpdating"
        onrowcommand="gridView_RowCommand"
        OnRowDataBound="gridView_RowDataBound">
<Columns>
<asp:TemplateField HeaderText="id">
    <ItemTemplate>
        <asp:Label ID="txtid" runat="server" Text='<%#Eval("au_id") %>'/>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="lblid" runat="server" width="40px" Text='<%#Eval("au_id") %>'/>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="inid" width="40px" runat="server"/>
        <asp:RequiredFieldValidator ID="vid" runat="server" ControlToValidate="inid" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
</asp:TemplateField>
 <asp:TemplateField HeaderText="name">
      <ItemTemplate>
         <asp:Label ID="lblname" runat="server" Text='<%#Eval("au_lname") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtname" width="70px"  runat="server" Text='<%#Eval("au_lname") %>'/>
     </EditItemTemplate>
     <FooterTemplate>
         <asp:TextBox ID="inname"  width="120px" runat="server"/>
         <asp:RequiredFieldValidator ID="vname" runat="server" ControlToValidate="inname" Text="?" ValidationGroup="validaiton"/>
     </FooterTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="pic_location">
     <ItemTemplate>
         <asp:Label ID="lbllocaton" runat="server" Text='<%#Eval("au_fname") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtlocaton" width="70px"  runat="server" Text='<%#Eval("au_fname") %>'/>
     </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="inlocaton" width="110px"  runat="server"/>
        <asp:RequiredFieldValidator ID="vlocaton" runat="server" ControlToValidate="inlocaton" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
 </asp:TemplateField>
  <asp:TemplateField HeaderText="game_type">
       <ItemTemplate>
         <asp:Label ID="lbltype" runat="server" Text='<%#Eval("phone") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txttype" width="50px"   runat="server" Text='<%#Eval("phone") %>'/>
     </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="intype" width="60px"  runat="server"/>
        <asp:RequiredFieldValidator ID="vtype" runat="server" ControlToValidate="intype" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
 </asp:TemplateField>
   <asp:TemplateField HeaderText="description">
     <ItemTemplate>
         <asp:Label ID="lbldes" runat="server" Text='<%#Eval("address") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtdes" width="30px"  runat="server" Text='<%#Eval("address") %>'/>
     </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="indes" width="40px"   runat="server"/>
        <asp:RequiredFieldValidator ID="vdes" runat="server" ControlToValidate="indes" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
 </asp:TemplateField>
    <asp:TemplateField HeaderText="price">
     <ItemTemplate>
         <asp:Label ID="lblprice" runat="server" Text='<%#Eval("city") %>'/>
     </ItemTemplate>
    <EditItemTemplate>
         <asp:TextBox ID="txtprice" width="30px"  runat="server" Text='<%#Eval("city") %>'/>
     </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="inprice" width="40px"   runat="server"/>
        <asp:RequiredFieldValidator ID="vprice" runat="server" ControlToValidate="inprice" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="bought">
     <ItemTemplate>
         <asp:Label ID="lblb" runat="server" Text='<%#Eval("state") %>'/>
     </ItemTemplate>
    <EditItemTemplate>
         <asp:TextBox ID="txtb" width="30px"  runat="server" Text='<%#Eval("state") %>'/>
     </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="inb" width="40px"   runat="server"/>
        <asp:RequiredFieldValidator ID="vb" runat="server" ControlToValidate="inb" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="num_avail">
     <ItemTemplate>
         <asp:Label ID="lblnum" runat="server" Text='<%#Eval("zip") %>'/>
     </ItemTemplate>
    <EditItemTemplate>
         <asp:TextBox ID="txtnum" width="30px"  runat="server" Text='<%#Eval("zip") %>'/>
     </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="innum" width="40px"   runat="server"/>
        <asp:RequiredFieldValidator ID="vnum" runat="server" ControlToValidate="innum" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
 </asp:TemplateField>
 <asp:TemplateField>
    <EditItemTemplate>
        <asp:Button ID="ButtonUpdate" runat="server" CommandName="Update"  Text="Update"  />
        <asp:Button ID="ButtonCancel" runat="server" CommandName="Cancel"  Text="Cancel" />
    </EditItemTemplate>
    <ItemTemplate>
        <asp:Button ID="ButtonEdit" runat="server" CommandName="Edit"  Text="Edit"  />
        <asp:Button ID="ButtonDelete" runat="server" CommandName="Delete"  Text="Delete"  />
    </ItemTemplate>
    <FooterTemplate>
        <asp:Button ID="ButtonAdd" runat="server" CommandName="AddNew"  Text="Add New Row" ValidationGroup="validaiton" />
    </FooterTemplate>
 </asp:TemplateField>
 </Columns>
</asp:GridView>
    </div>
<div >
<br />&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lblmsg" runat="server"></asp:Label>
</div>
    </form>
</body>
</html>
