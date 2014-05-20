    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="addgame.aspx.cs" Inherits="addgame" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 135px;
        }
        .style3
        {
            width: 135px;
            height: 30px;
        }
        .style4
        {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblName" runat="server" Text="Име"></asp:Label>
                &nbsp;на играта</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" Display="None" 
                        ErrorMessage="Внесете име играта!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Тип на игра</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtUserName" Display="None" 
                        ErrorMessage="Внесете тип на игра!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblEmail" runat="server" Text="Опис"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" Display="None" 
                        ErrorMessage="Внесете опис!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="lblPassword" runat="server" Text="Цена"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtPassword" Display="None" 
                        ErrorMessage="Внесете цена!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Во залиха"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtConfirm" Display="None" 
                        ErrorMessage="Внесете залиха!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblLastName" runat="server" Text="Слика"></asp:Label>
                </td>
                <td>

                     
     <asp:FileUpload ID="FileUploadControl" runat="server" />
    <asp:Button runat="server" id="UploadButton" text="Аплоадирај!" onclick="UploadButton_Click" />
    <br /><br />
    <asp:Label runat="server" id="StatusLabel" text="Upload status: " />
 
                   
                    <asp:Label ID="lblPicName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" onclick="btnRegister_Click" 
                        Text="Додај игра!" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Image ID="Image1" runat="server" />
                    <br />
                </td>
                <td>
                    <asp:Label ID="lblPoraka" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
