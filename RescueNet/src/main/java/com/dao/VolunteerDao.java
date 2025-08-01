package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.Volunteer;

@Component
public class VolunteerDao {
	
	
	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	//// -----add Volunteer
	@Transactional
	public int addVolunteer(Volunteer volunteer) {
	    hibernateTemplate.save(volunteer);
	    return 1; // success
	}
	
	
	
	/////// View Volunteer----------
	
	public List<Volunteer> getAllVolunteers(){
		return hibernateTemplate.loadAll(Volunteer.class);
	}
	
	
	/////////Delete Volunteer--?>>>>>>>
	@Transactional
	public void DeleteVolunteer(String vcontact){
		Volunteer volunteer = hibernateTemplate.get(Volunteer.class, vcontact);
		if(volunteer !=null){
			hibernateTemplate.delete(volunteer);
		}
	}
	
	public Volunteer VolunteerLoginByPassEmail(String vEmail, String vPassword){
		
		List<Volunteer> vlist = (List<Volunteer>) hibernateTemplate.find("from Volunteer where vEmail = ?0 and vPassword = ?1", vEmail, vPassword);
		
		if(vlist!= null){
			return vlist.get(0);
		} else{
			return null;
			
		}
		
	}

	
	
	


}
