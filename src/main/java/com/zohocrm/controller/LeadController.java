package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.services.ContactService;
import com.zohocrm.services.LeadService;

@Controller
public class LeadController {

	@Autowired
	LeadService leadserv;

	@Autowired
	private ContactService contactservice;

	@GetMapping("/viewleadPage")
	public String viewCreateLeadpage() {
		return "create_lead_page";
	}

	@PostMapping("/savelead")
	public String saveLead(@ModelAttribute("Lead") Lead lead, Model model) {
		leadserv.saveOneLead(lead);
		model.addAttribute("lead", lead);
		return "lead_info";
	}

	@PostMapping("/convertLead")
	public String convertLead(@RequestParam("id") long id, Model model) {
		Lead lead = leadserv.findLeadById(id);

		Contact contact = new Contact();
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setMobile(lead.getMobile());
		contact.setSource(lead.getSource());

		
		contactservice.saveContact(contact);
		leadserv.deleteLeadById(id);
		List<Contact> contactlist = contactservice.contactlist();
		model.addAttribute("contacts", contactlist);
		return "contact_list";
	}

	@GetMapping("/listall")
	public String listAllLeads(Model model) {
		List<Lead> leads = leadserv.getAllLeads();
		model.addAttribute("leads", leads);
		return "list_leads";
	}

	@RequestMapping("/leadInfo")
	public String leadInfo(@RequestParam("id") long id, Model model) {
		Lead lead = leadserv.findLeadById(id);
		model.addAttribute("leads", lead);
		return "lead_info";

	}

}
