package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="reporters")
public class Reporter {
	
	@Id
	private String rContact;
	private String rName;
	private String rAddress;
	private String rEmail;
	private String rPassword;
	
	
	
	public String getrContact() {
		return rContact;
	}
	public void setrContact(String rContact) {
		this.rContact = rContact;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getrAddress() {
		return rAddress;
	}
	public void setrAddress(String rAddress) {
		this.rAddress = rAddress;
	}
	public String getrEmail() {
		return rEmail;
	}
	public void setrEmail(String rEmail) {
		this.rEmail = rEmail;
	}
	public String getrPassword() {
		return rPassword;
	}
	public void setrPassword(String rPassword) {
		this.rPassword = rPassword;
	}
	public Reporter(String rContact, String rName, String rAddress, String rEmail, String rPassword) {
		super();
		this.rContact = rContact;
		this.rName = rName;
		this.rAddress = rAddress;
		this.rEmail = rEmail;
		this.rPassword = rPassword;
	}
	public Reporter() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Reporter [rContact=" + rContact + ", rName=" + rName + ", rAddress=" + rAddress + ", rEmail=" + rEmail
				+ ", rPassword=" + rPassword + "]";
	}

	
	
}
