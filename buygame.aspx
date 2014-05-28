<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="buygame.aspx.cs" Inherits="buygame"   %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .style6
        {
        }
        .style13
        {
            width: 81px;
        }
        .style14
        {
            width: 74px;
        }
        .style15
        {
            width: 163px;
            height: 38px;
        }
        .style16
        {
            height: 47px;
        }
        .style17
        {
            width: 163px;
            height: 47px;
        }
        .style18
        {
            width: 81px;
            height: 47px;
        }
        .style19
        {
            width: 74px;
            height: 47px;
        }
        .style20
        {
            height: 38px;
        }
        .style21
        {
            width: 81px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" >
        <table class="nav-justified">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Купувачка кошничка " 
                       ></asp:Label>
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
                <td>
                    <asp:Button ID="btnCont0" runat="server" onclick="btnCont_Click" 
                        Text="Продолжи со купување" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Image ID="imgPic" runat="server" />
                </td>
                <td class="style17">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblDes" runat="server"></asp:Label>
                </td>
                <td class="style18">
                    <asp:Label ID="lblPrice" runat="server"></asp:Label>
                </td>
                <td class="style19">
                    <asp:TextBox ID="txtQty" runat="server" Height="32px" Width="59px" 
                        ontextchanged="txtQty_TextChanged">1</asp:TextBox>
                </td>
                <td class="style16">
                    <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                        Text="Избриши" />
                </td>
            </tr>
            <tr>
                <td class="style20">
                    </td>
                <td class="style15">
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
                <td class="style21">
                </td>
                <td class="style20">
                </td>
                <td class="style20">
                    <asp:Button ID="btnBuy" runat="server" onclick="btnBuy_Click" Text="Купи" />
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="4">
                    <asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>





