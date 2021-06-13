using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RekrutacjaFormularz
{
    public partial class Formularz1 : System.Web.UI.Page
    {

        public Formularz1()
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonDalej_Click(object sender, EventArgs e)
        {

            Response.Redirect("Formularz2.aspx?&imie="+TextBoxImie.Text+"&nazwisko="+TextBoxNazwisko.Text+"&email="+TextBoxEmail.Text+"");


        }

        protected void TextBoxImie_TextChanged(object sender, EventArgs e)
        {
            var imie = TextBoxImie.Text;
            var nazwisko = TextBoxNazwisko.Text;
            var email = TextBoxEmail.Text;
          
        }
    }
}