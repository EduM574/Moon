package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Administrador;
import service.AdministradorService;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * Servlet implementation class EsqueciSenhaAdmController
 */
@WebServlet("/EsqueciSenhaAdm.do")
public class EsqueciSenhaAdmController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pEmail = request.getParameter("email");

        Administrador adm = new Administrador();
        adm.setEmail(pEmail);

        AdministradorService admS = new AdministradorService();
        adm = admS.selectAdminGeral(adm);

        // Caso o adm nao exista no sistema
        if (adm.getEmail() == null) {
            request.setAttribute("erro", "E-mail incorreto, tente novamente.");

            RequestDispatcher view = request.getRequestDispatcher("esqueciSenhaAdm.jsp");
            view.forward(request, response);
        } else {
            Properties props = new Properties();
            /** Parâmetros de conexão com servidor Gmail */
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");

            Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    // Remetente
                    return new PasswordAuthentication("alexiavitoriakesselyn@gmail.com", "peitinhodaalexia69");
                }
            });

            /** Ativa Debug para sessão */
            session.setDebug(true);

            try {

                Message message = new MimeMessage(session);
                // Remetente
                message.setFrom(new InternetAddress("alexiavitoriakesselyn@gmail.com"));

                Address[] toUser = InternetAddress // Destinatário(s)
                        .parse(pEmail);

                message.setRecipients(Message.RecipientType.TO, toUser);
                message.setSubject("Redefinir senha");// Assunto
                message.setText("Para redefinir a senha acesse o link http://localhost:8080/MoonWeb/redefinirSenhaAdm.jsp?email="+pEmail);
                /** Método para enviar a mensagem criada */
                Transport.send(message);

                request.setAttribute("email", pEmail);

                RequestDispatcher view = request.getRequestDispatcher("mensagemEmailEnviado.jsp");
                view.forward(request, response);

            } catch (MessagingException e) {
                throw new RuntimeException(e);
            }
         }
    }
}