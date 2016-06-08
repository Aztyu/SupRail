package com.supinfo.suprail.entity;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {
	private String smtpHost;
	private String from;
	private String username;
	private String password;
	
	public String getSmtpHost() {
		return smtpHost;
	}

	public void setSmtpHost(String smtpHost) {
		this.smtpHost = smtpHost;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Mail(String smtpHost, String from, String username,
			String password) {
		super();
		this.smtpHost = smtpHost;
		this.from = from;
		this.username = username;
		this.password = password;
	}
	
	public void sendMail(String receiver_mail) {
		try {
			Mail mail = new Mail("smtp.gmail.com", "suprail.contact@gmail.com", "suprail.contact@gmail.com", "kikibouchet42");
		 
		    Properties props = new Properties();
		    props.put("mail.smtps.host", mail.smtpHost);
		    props.put("mail.smtps.auth", "true");
		 
		    Session session = Session.getDefaultInstance(props);
		    session.setDebug(true);
		 
		    MimeMessage message = new MimeMessage(session); 
	    	
		    message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver_mail));
		    message.setSubject("Hello");
		    message.setText("Hello World");
		 
		    Transport tr = session.getTransport("smtps");
		    tr.connect(mail.smtpHost, mail.username, mail.password);
		    message.saveChanges();
		 	 
		    tr.sendMessage(message,message.getAllRecipients());
		    tr.close();
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	}
}
