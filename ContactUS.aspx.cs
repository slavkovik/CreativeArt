using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace CreativeArt
{
    public partial class ContactUS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttnSend_Click(object sender, EventArgs e)
        {
            // Specify the from and to email address
            MailMessage mailMessage = new MailMessage
                ("slavkovik@gmail.com", "slavkovik@yahoo.com");

            // Specify the email body            
            mailMessage.Body = txtMessage.Text + " od " + txtName.Text + " tel " + txtPhone.Text;

            // Specify the email Subject
            mailMessage.Subject = "Poraka - Photo Creative";

            // No need to specify the SMTP settings as these 
            // are already specified in web.config
            SmtpClient smtpClient = new SmtpClient();
            // Finall send the email message using Send() method
            smtpClient.Send(mailMessage);
            /*
             MailMessage msg = new MailMessage();
             msg.From = new MailAddress(txtEmail.Text);
             msg.To.Add("slavkovik@yahoo.com");
             msg.Subject = "Poraka - Photo Creative";
             msg.Body = txtMessage.Text + " od " + txtName.Text + " tel " + txtPhone.Text;
             SmtpClient smtp = new SmtpClient();
             smtp.Host = "smtp.gmail.com";
             //smtp.Port = 587;
             smtp.Port = 465;
             smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
             smtp.EnableSsl = true;
             smtp.Timeout = 5000;
             smtp.UseDefaultCredentials = false;
             smtp.Credentials = new NetworkCredential("slavkovik", "eds-skopje");
             msg.Priority = MailPriority.High;
             
            try
            {
                smtp.Send(msg);
                lblMessage.Text = "mail send";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
            */
        }
    }
}