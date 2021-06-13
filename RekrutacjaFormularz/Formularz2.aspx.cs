using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Net.Mail;

namespace RekrutacjaFormularz
{
    public partial class Formularz2 : Formularz1
    {

        SqlCommand cmd;
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonWyslij_Click(object sender, EventArgs e)
        {
            string imie = Request.QueryString["imie"];
            string nazwisko = Request.QueryString["nazwisko"];
            string email = Request.QueryString["email"];
            var katergoria = DropDownListKategoria.SelectedValue;
            var tresc = TextBoxTresc.Text;
            con = new SqlConnection(@"Data Source=DESKTOP-EA7ITG0\SQLEXPRESS;Initial Catalog=DaneFormularz;Integrated Security=True");
            con.Open();

            cmd = new SqlCommand("INSERT INTO Dane(Imie,Nazwisko,Email,Kategoria,Tresc) VALUES(@Imie,@Nazwisko,@email,@Kategoria,@Tresc)", con);
            cmd.Parameters.Add("@imie", imie);
            cmd.Parameters.Add("@nazwisko", nazwisko);
            cmd.Parameters.Add("@email", email);
            cmd.Parameters.Add("@Kategoria", DropDownListKategoria.SelectedValue.ToString());
            cmd.Parameters.Add("@Tresc", TextBoxTresc.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            MailMessage mail = new MailMessage();
            mail.To.Add("*****@icloud.com");
            mail.CC.Add(email);
            mail.From = new MailAddress("*****@*****.pl");
            mail.Subject = DropDownListKategoria.SelectedValue;

            string Body = TextBoxTresc.Text;
            mail.Body = Body;

            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "SMTP.DPOCZTA.PL";
            smtp.Credentials = new System.Net.NetworkCredential
                 ("*****@*****.p", "*****");
            smtp.EnableSsl = true;
            smtp.Send(mail);


            potwierdzenie.Text = "Formularz został wysłany, dziękujemy.";

        }


        protected void TextBoxTresc_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
