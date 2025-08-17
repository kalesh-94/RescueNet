package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "volunteers")
public class Volunteer {

    @Id
    private String vcontact; 
    private String vName;
    private String vZone;
    private String vEmail;
    private String vPassword;

    public Volunteer() {
        super();
    }

    public Volunteer(String vcontact, String vName, String vZone, String vEmail, String vPassword) {
        super();
        this.vcontact = vcontact;
        this.vName = vName;
        this.vZone = vZone;
        this.vEmail = vEmail;
        this.vPassword = vPassword;
    }

    public String getVcontact() {
        return vcontact;
    }

    public void setVcontact(String vcontact) {
        this.vcontact = vcontact;
    }

    public String getvName() {
        return vName;
    }

    public void setvName(String vName) {
        this.vName = vName;
    }

    public String getvZone() {
        return vZone;
    }

    public void setvZone(String vZone) {
        this.vZone = vZone;
    }

    public String getvEmail() {
        return vEmail;
    }

    public void setvEmail(String vEmail) {
        this.vEmail = vEmail;
    }

    public String getvPassword() {
        return vPassword;
    }

    public void setvPassword(String vPassword) {
        this.vPassword = vPassword;
    }

    @Override
    public String toString() {
        return "Volunteer [vcontact=" + vcontact + ", vName=" + vName + ", vZone=" + vZone + ", vEmail=" + vEmail
                + ", vPassword=" + vPassword + "]";
    }
}
