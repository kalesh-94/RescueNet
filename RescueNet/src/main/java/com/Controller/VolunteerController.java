package com.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.RescueCaseDao;
import com.dao.VolunteerDao;
import com.model.RescueCase;
import com.model.Volunteer;

@Controller
public class VolunteerController {
ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	
	Volunteer volunteer = (Volunteer) context.getBean("volunteer");
	VolunteerDao volunteerDao = (VolunteerDao) context.getBean("volunteerDao");
	
	RescueCase rescueCase = (RescueCase) context.getBean("rescueCase");
	RescueCaseDao rescueCaseDao = (RescueCaseDao) context.getBean("rescueCaseDao");
	
	
	@RequestMapping("/volunteerViewCases")
	public String volunteerViewCases(){
		return "volunteerViewCases";
	}
	
	
	@RequestMapping("volunteerLogin")
	public String volunteerLogin(){
		System.out.println(" Vol Login is open !!!!!!!");
		return "volunteerLogin";
		
	}
	
	
	@RequestMapping("/VolunteerLogin")
	public String VolunteerLogin(HttpServletRequest request){
		String vEmail = (request.getParameter("vEmail"));
		String vPassword = (request.getParameter("vPassword"));
		
		Volunteer volunteer = (Volunteer) volunteerDao.VolunteerLoginByPassEmail(vEmail, vPassword);
		
		if(volunteer !=null){
			return "volunteerViewCases";
		} else{
			return "volunteerLogin";
		}
	}
	
	
	//////-----volunteerRegister
	
	@RequestMapping("volunteerRegister")
	public String volunteerRegister(){
		System.out.println("Volunteer register !!!!!!!!");
		return "volunteerRegister";
	}
	
	@RequestMapping("/registerVolunteer")
	public String VolunteerRegister(HttpServletRequest request){
		volunteer.setVcontact(request.getParameter("vcontact"));
		volunteer.setvPassword(request.getParameter("vPassword"));
		volunteer.setvName(request.getParameter("vName"));
		volunteer.setvZone(request.getParameter("vZone"));
		volunteer.setvEmail(request.getParameter("vEmail"));
		int i = volunteerDao.addVolunteer(volunteer);
		if(i>0){
			return "volunteerLogin";
		} else{
			return "volunteerRegister";
		}
		
	}
	
	
	
	

	////////// ----------ViewRescueCases

	@RequestMapping("/volunteerViewRescueCases")
	public String ViewCases(Model m){
		List<RescueCase> reslist = (List<RescueCase>) rescueCaseDao.getAllRescueCases();
		m.addAttribute("reslist", reslist);
		
		
		
		return "volunteerViewRescueCases";
	}
	
	

	
	///////////----------Update status
	@PostMapping("/updateStatus")
	public String updateRescueStatus(@RequestParam("caseId") int caseId,
	                                 @RequestParam("newStatus") String newStatus,
	                                 RedirectAttributes redirectAttributes) {
	    rescueCaseDao.updateCaseStatus(caseId, newStatus);
	    return "redirect:/volunteerViewRescueCases";  // or whichever dashboard
	}
	
	
	
}



