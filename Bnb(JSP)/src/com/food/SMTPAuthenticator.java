package com.food;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/**
 * 
 * 메일 인증 정보
 * @author Ray
 *
 */
public class SMTPAuthenticator extends Authenticator {
	
 
 
 protected PasswordAuthentication getPasswordAuthentication() {
  String username = "kcocoar@gmail.com"; // gmail 사용자;
  String password = "dkfzz0014!";  // 패스워드;
  return new PasswordAuthentication(username, password);
 }

}