package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.Reporter;
import com.model.Volunteer;


@Component
public class ReporterDao {
	
	
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}



	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	
	
	

////////////////////////Register Reporter----------------
	@Transactional
	public int Register(Reporter reporter) {
	    hibernateTemplate.save(reporter);
	    return 1; 
	}


	//////view
	public List<Reporter> getAllReporters() {
		return hibernateTemplate.loadAll(Reporter.class);
	}

//////////delete--------------------
	@Transactional
	public void DeleteRepo(String rContact) {
		Reporter reporter = hibernateTemplate.get(Reporter.class, rContact);
		if(reporter != null){
			hibernateTemplate.delete(reporter);
		}
		
	}
	
	
/////////////--------Login--------------
	public Reporter ReporterLoginByPassEmail(String rEmail, String rPassword){
		List<Reporter> rlist = (List<Reporter>) hibernateTemplate.find("from Reporter where rEmail=?0 and rPassword=?1", rEmail, rPassword);
		if(rlist != null){
			return rlist.get(0);
		} else{
			return null;
		}
	}
	
	
	
	

}
