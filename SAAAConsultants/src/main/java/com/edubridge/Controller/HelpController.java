package com.edubridge.Controller;   
 
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edubridge.beans.Help;
import com.edubridge.service.HelpService;


@Controller  
public class HelpController {  
	
	  /*It displays a form to input data, here "command" is a reserved request attribute 
     *which is used to display object data into form 
     */
	@Autowired
	private HelpService helpService;
	
	private static final String HELP = "help";
	
	@RequestMapping(value = "/help.html", method = RequestMethod.POST)
	public String help(@ModelAttribute(HELP) Help help,
			HttpSession session, Model model) {
		System.out.println(help.getName());
		helpService.add(help);
		return "messageSent";
		}
	@RequestMapping(value = "/invoice.html", method = RequestMethod.GET)
	public String fees(HttpSession session, Model model) {
		
		return "invoice";
		}
	@RequestMapping(value = "/emi.html", method = RequestMethod.GET)
	public String emi(HttpSession session, Model model) {
		
		return "emi";
		}
	@RequestMapping(value = "/download.html", method = RequestMethod.GET)
	public String download(HttpSession session, Model model) {
		
		return "applicationDownload";
		}
}  