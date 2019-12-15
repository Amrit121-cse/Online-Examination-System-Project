package com.project;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "EmailSendingServlet", urlPatterns = {"/EmailSendingServlet"})
public class EmailSendingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       PrintWriter out=response.getWriter();
      String to ="demojava12@gmail.com";  
      String subject=request.getParameter("subject");
      String content=request.getParameter("content");

Properties props=new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth","true");
props.put("mail.smtp.port","465");


Session session=Session.getDefaultInstance(props, new javax.mail.Authenticator()
{
            @Override
	protected javax.mail.PasswordAuthentication getPasswordAuthentication()
	{
		return new javax.mail.PasswordAuthentication("demojava12@gmail.com", "");
		
	}
});

try
{
MimeMessage message=new MimeMessage(session);
            try {
                message.setFrom(new InternetAddress("demojava12@gmail.com"));
            } catch (MessagingException ex) {
                Logger.getLogger(EmailSendingServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
message.setSubject(subject);
message.setText(content);

Transport.send(message);

out.println("<h1><center>Message sent successfully....</center></h1><br><br><br>");
out.println("<center><img src='email.jpg' alt='email'/></center>");
out.println("<center><hr><a style='text-decoration:none;' href='contact us.jsp'>Go Back</a>&nbsp;|&nbsp;");
out.println("<a style='text-decoration:none;' href='index.html'>Go Home</a></center><hr>");

}
catch(MessagingException e)
{
	out.println(e);
}
	}  
        
        
    }
    


