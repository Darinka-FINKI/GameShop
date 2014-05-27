<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="buygame.aspx.cs" Inherits="buygame"   %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .style6
        {
            width: 118px;
        }
        .style7
        {
            width: 288px;
        }
        .style9
        {
            width: 113px;
        }
        .style11
        {
            width: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server">
        <table class="nav-justified">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Купувачка кошничка "></asp:Label>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnCont0" runat="server" onclick="btnCont_Click" 
                        Text="Продолжи со купување" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Image ID="imgPic" runat="server" />
                </td>
                <td class="style7">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblDes" runat="server"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="lblPrice" runat="server"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtQty" runat="server" Height="16px" Width="58px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                        Text="Избриши" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnBuy" runat="server" onclick="btnBuy_Click" Text="Купи" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>





