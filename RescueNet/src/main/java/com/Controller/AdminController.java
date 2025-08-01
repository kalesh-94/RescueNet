package com.Controller;


import java.util.List;
import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.RescueCaseDao;
import com.dao.VolunteerDao;
import com.model.RescueCase;
import com.model.Volunteer;

@Controller
public class AdminController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	
	Volunteer volunteer = (Volunteer) context.getBean("volunteer");
	VolunteerDao volunteerDao = (VolunteerDao) context.getBean("volunteerDao");
	
	
	RescueCase rescueCase = (RescueCase) context.getBean("rescueCase");
	RescueCaseDao rescueCaseDao = (RescueCaseDao) context.getBean("rescueCaseDao");
	
	@RequestMapping("/")
	public String adminhome(){
		System.out.println("first page is open !!!");
		return "index";
	}
	
	
	@RequestMapping("index")
	public String logout(){
		System.out.println("logout !!");
		return "index";
	}
	
	
	////////---------adminLogin ----------
	@RequestMapping("adminLogin")
	public String adminLogin(){
		System.out.println("admin login");
		return "adminLogin";
	}
	
	@RequestMapping(path = "/AdminLogin", method = RequestMethod.POST)
	public String AdminLogin(HttpServletRequest request){
		String ademail = request.getParameter("ademail");
		String adpassword = request.getParameter("adpassword");
		
		if(ademail.equals("admin@mail.com") && adpassword.equals("123")){
			System.out.println("Admin Dashboard !");
			
			return "adminDashboard";
			
		}
		else{
			return "adminLogin";
		}
	}
	
	/////////-------dashboard--...........
	
	@RequestMapping("adminDashboard")
	public String adminDashboard(){
		System.out.println("admin login");
		return "adminDashboard";
	}
	
	///////---------
	@RequestMapping("addVolunteer")
	public String addVolunteer(){
		System.out.println("admin login");
		return "addVolunteer";
	}
	
	
	@RequestMapping("/AddVolunteer")
	public String AddVolunteer(HttpServletRequest request){
		volunteer.setVcontact((request.getParameter("vcontact")));
		volunteer.setvPassword(request.getParameter("vPassword"));
		volunteer.setvName(request.getParameter("vName"));
		volunteer.setvZone(request.getParameter("vZone"));
		volunteer.setvEmail(request.getParameter("vEmail"));
		
		
		int i = volunteerDao.addVolunteer(volunteer);
		if(i>0){
			return "adminDashboard";
		} else{
			return "addVolunteer";
		}
	}
	
	
	
	@RequestMapping("/viewVolunteer")
	public String viewVolunteer(Model m){
		System.out.println("viewVolunteer Page!!!!!!!!!!");
		List<Volunteer> getAllVolunteers = volunteerDao.getAllVolunteers();
		m.addAttribute("getAllVolunteers", getAllVolunteers);
		
	
		return "viewVolunteer";
	}
	
	
	//////// DeleteVolunteer ---------
	@RequestMapping(path = "/delete", method = RequestMethod.GET)
	public String DeleteVol(HttpServletRequest request){
		String Vcontact = request.getParameter("Vcontact");
		volunteerDao.DeleteVolunteer(Vcontact);
		
		return "redirect:/viewVolunteer";
		
	}
	
	
	
	////////// ----------ViewRescueCases

	@RequestMapping("/adminViewRescueCases")
	public String ViewCases(Model m){
		List<RescueCase> reslist = (List<RescueCase>) rescueCaseDao.getAllRescueCases();
		m.addAttribute("reslist", reslist);
		
		System.out.println("Rescue cases size: " + reslist.size());
		 for (RescueCase r : reslist) {
		        System.out.println(r);
		    }
		
		return "adminViewRescueCases";
	}
	

	
	
}
