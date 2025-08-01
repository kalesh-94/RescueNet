package com.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ReporterDao;
import com.dao.RescueCaseDao;
import com.dao.VolunteerDao;
import com.model.Reporter;
import com.model.RescueCase;
import com.model.Volunteer;

import getSet.repIdGetSet;

@Controller
public class ReporterController {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	
	Reporter reporter= (Reporter) context.getBean("reporter");
	ReporterDao reporterDao = (ReporterDao) context.getBean("reporterDao");
	//////////
	RescueCase rescueCase = (RescueCase) context.getBean("rescueCase");
	RescueCaseDao rescueCaseDao = (RescueCaseDao) context.getBean("rescueCaseDao");

	
	
	
	
	
	
    @RequestMapping("/reporterRegister")
    public String reporterRegister() {
        System.out.println("reporterRegister page is open !!!");
        return "reporterRegister";
    }

    @RequestMapping("/reporterRegisterData")
    public String ReporterRegisterData(HttpServletRequest request) {
        Reporter reporter = new Reporter();
        reporter.setrContact(request.getParameter("rContact"));
        reporter.setrName(request.getParameter("rName"));
        reporter.setrEmail(request.getParameter("rEmail"));
        reporter.setrPassword(request.getParameter("rPassword"));
        reporter.setrAddress(request.getParameter("rAddress"));

        System.out.println("Contact: " + reporter.getrContact());

        int i = reporterDao.Register(reporter);
        if(i>0){
        	return "reporterLogin";
        }
        else{
        	return "reporterRegister";
        }
    }

    @RequestMapping("repoterDashboard")
    public String repoterDashboard(){
    	return "repoterDashboard";
    }
    
    ////////////login--------------->>>>>>>>
    @RequestMapping("/reporterLogin")
    public String reporterLogin() {
        return "reporterLogin";
    }
    
    @RequestMapping(path="reporterLoginAction", method=RequestMethod.POST)
    public String reporterLoginAction(HttpServletRequest request){
    	String rEmail = request.getParameter("rEmail");
    	String rPassword = request.getParameter("rPassword");
    	
    	
    	Reporter reporter = (Reporter) reporterDao.ReporterLoginByPassEmail(rEmail, rPassword);
    	if(reporter != null){
    		repIdGetSet.setrContactID(reporter.getrContact());
    		
    		return "repoterDashboard";
    	} else{
    		return "reporterLogin";
    	}
    	
    }
    
    
    
    
    
    
    
    ////////////////View------------
    
    @RequestMapping("viewReporter")
	public String viewReporter(Model m){
		System.out.println("viewReporter ------ Page!!!!!!!!!!");
		List<Reporter> getAllRepo = reporterDao.getAllReporters();
		m.addAttribute("getAllRepo", getAllRepo);
	
		return "viewReporter";
	}
    
    
    
	//////// DeleteVolunteer ---------
	@RequestMapping(path = "/repoDelete", method = RequestMethod.GET)
	public String DeleteVol(HttpServletRequest request) {
		String rContact = request.getParameter("rContact");
		reporterDao.DeleteRepo(rContact);

		return "redirect:/viewReporter";

	}
	
	
	
	
	
	
	
	

	
	
	
	////////////////---------------------Rescue Cases--------------------->>>>>>>>>>>>
	
	
	
    /////////// Rescue AddCase--------
	@RequestMapping("reporterAddCase")
	public String reporterAddCase(){
		return "reporterAddCase";
	}
	
	@RequestMapping(path = "/addCases", method = RequestMethod.POST)
	public String addCases(HttpServletRequest request){
		
		
		rescueCase.setrContactId(repIdGetSet.getrContactID());
		rescueCase.setrAnimalType(request.getParameter("rAnimalType"));
		rescueCase.setrAnimalCondition(request.getParameter("rAnimalCondition"));
		rescueCase.setrLocation(request.getParameter("rLocation"));
		rescueCase.setrDesc(request.getParameter("rDesc"));
		rescueCase.setrDate(request.getParameter("rDate"));
		rescueCase.setrStatus("Waiting");
		
		System.out.println(request.getParameter("rAnimalType"));
		System.out.println(request.getParameter("rAnimalCondition"));
		
		
		int i = rescueCaseDao.AddCases(rescueCase);
		if(i > 0){
		    return "viewCases.jsp";
		} else {
		    return "reporterAddCase";
		}
		
	}
	
	
	
	
	///////// View Rescue Cases------------->>>>>>>>>
	@RequestMapping("/viewCases")
	public String ViewCases(Model m){
		List<RescueCase> reslist = (List<RescueCase>) rescueCaseDao.getAllRescueCases();
		m.addAttribute("reslist", reslist);
		
		System.out.println("Rescue cases size: " + reslist.size());
		 for (RescueCase r : reslist) {
		        System.out.println(r); // for debugging
		    }
		
		return "viewCases";
	}
	
	
	
	
    
}
