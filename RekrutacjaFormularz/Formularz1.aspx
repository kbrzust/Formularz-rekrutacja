<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formularz1.aspx.cs" Inherits="RekrutacjaFormularz.Formularz1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 238px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 238px;
            height: 34px;
        }
        .auto-style6 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style5">Imie</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxImie" runat="server" OnTextChanged="TextBoxImie_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxImie" ErrorMessage="Proszę podać imie" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxImie" ErrorMessage="Proszę podać prawidłowe imie " ForeColor="Red" ValidationExpression="^[a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Nazwisko</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxNazwisko" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNazwisko" ErrorMessage="Proszę podać nazwisko" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNazwisko" ErrorMessage="Proszę podać prawidłowe nazwisko" ForeColor="Red" ValidationExpression="^[a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">E-mail</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Proszę podać E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Proszę podać prawidłowy e-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <div>
            <asp:Button ID="ButtonDalej" runat="server" Text="Dalej" ForeColor="Black" OnClick="ButtonDalej_Click" />
        </div>
    </form>
</body>
</html>
