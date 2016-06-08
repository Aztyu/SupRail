package com.supinfo.suprail.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "index";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "index";
	}
	
	@RequestMapping(value = "/user/main", method = RequestMethod.GET)
	public String mainUserPage(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {
		return "about";
	}

	@RequestMapping(value = "/mail", method = RequestMethod.GET)
	public void sendMail() {
		try {	
			
			String smtpHost = "smtp.gmail.com";
		    String from = "suprail.contact@gmail.com";
		    String to = "coco.bea@hotmail.fr";
		    String username = "suprail.contact@gmail.com";
		    String password = "kikibouchet42";
		 
		    Properties props = new Properties();
		    props.put("mail.smtps.host", smtpHost);
		    props.put("mail.smtps.auth", "true");
		 
		    Session session = Session.getDefaultInstance(props);
		    session.setDebug(true);
		 
		    MimeMessage message = new MimeMessage(session); 
	    	
		    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		    message.setSubject("Hello");
		    message.setText("Hello World");
		 
		    Transport tr = session.getTransport("smtps");
		    tr.connect(smtpHost, username, password);
		    message.saveChanges();
		 	 
		    tr.sendMessage(message,message.getAllRecipients());
		    tr.close();
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
