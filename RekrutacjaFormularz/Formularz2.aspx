<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formularz2.aspx.cs" Inherits="RekrutacjaFormularz.Formularz2" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 169px;
            height: 34px;
        }
        .auto-style3 {
            width: 169px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Kategoria</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownListKategoria" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Nowa umowa</asp:ListItem>
                        <asp:ListItem>Przedłużenie umowy</asp:ListItem>
                        <asp:ListItem>Rezygnacja z umowy</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListKategoria" ErrorMessage="Proszę wybrać kategorie" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Treść</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxTresc" runat="server" Height="115px" OnTextChanged="TextBoxTresc_TextChanged" Width="297px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxTresc" ErrorMessage="Proszę opisać problem" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <div>
            <asp:Button ID="ButtonWyslij" runat="server" Text="Wyślij " OnClick="ButtonWyslij_Click" />
        </div>
        <p>
            <asp:Label ID="potwierdzenie" runat="server" ForeColor="#00CC00"></asp:Label>
        </p>
    </form>
</body>
</html>
