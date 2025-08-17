package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="Rescue_cases")
public class RescueCase {
	
	@Id
	private int rId=0;
	private String rContactId;
	private String rAnimalType;
	private String rAnimalCondition;
	private String rLocation;
	private String rDesc;
	private String rDate;
	private String rStatus;
	
	
	
	
	public RescueCase(String rAnimalCondition) {
		super();
		this.rAnimalCondition = rAnimalCondition;
	}
	public String getrAnimalCondition() {
		return rAnimalCondition;
	}
	public void setrAnimalCondition(String rAnimalCondition) {
		this.rAnimalCondition = rAnimalCondition;
	}
	
	
	
	
	
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	public String getrContactId() {
		return rContactId;
	}
	public void setrContactId(String rContactId) {
		this.rContactId = rContactId;
	}
	public String getrAnimalType() {
		return rAnimalType;
	}
	public void setrAnimalType(String rAnimalType) {
		this.rAnimalType = rAnimalType;
	}
	public String getrLocation() {
		return rLocation;
	}
	public void setrLocation(String rLocation) {
		this.rLocation = rLocation;
	}
	public String getrDesc() {
		return rDesc;
	}
	public void setrDesc(String rDesc) {
		this.rDesc = rDesc;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public String getrStatus() {
		return rStatus;
	}
	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}
	public RescueCase(int rId, String rContactId, String rAnimalType, String rLocation, String rDesc, String rDate,
			String rStatus) {
		super();
		this.rId = rId;
		this.rContactId = rContactId;
		this.rAnimalType = rAnimalType;
		this.rLocation = rLocation;
		this.rDesc = rDesc;
		this.rDate = rDate;
		this.rStatus = rStatus;
	}
	public RescueCase() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "RescueCase [rId=" + rId + ", rContactId=" + rContactId + ", rAnimalType=" + rAnimalType + ", rLocation="
				+ rLocation + ", rDesc=" + rDesc + ", rDate=" + rDate + ", rStatus=" + rStatus + "]";
	}
	
	
	
	
}
