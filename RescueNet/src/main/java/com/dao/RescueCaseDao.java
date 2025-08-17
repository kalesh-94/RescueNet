package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.RescueCase;

@Component
public class RescueCaseDao {
	
	
	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
	
	
	@Transactional
	public int AddCases(RescueCase rescueCase){
		hibernateTemplate.save(rescueCase);
		return 1;
	}
	
	public List<RescueCase> getAllRescueCases(){
		return hibernateTemplate.loadAll(RescueCase.class);
	}
	
	
	/////update---
	@Transactional
	public int updateCaseStatus(int caseId, String newStatus) {
	    RescueCase rescueCase = hibernateTemplate.get(RescueCase.class, caseId);
	    if (rescueCase != null) {
	        rescueCase.setrStatus(newStatus);
	        hibernateTemplate.update(rescueCase);
	        return 1; // success
	    }
	    return 0; // not found or failed
	}

	
	

}
