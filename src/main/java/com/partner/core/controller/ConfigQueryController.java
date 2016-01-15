package com.partner.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.partner.core.rest.RestClient;

@Controller
@RequestMapping("/configQuery")
public class ConfigQueryController {
	
	public ConfigQueryController(){
		// TODO stub constructor
	}

	
	/**
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(method = RequestMethod.GET)
    // Submission will come with courtName field, also add Model to return results 
    public String setupForm(Model model) {
    	RestClient restClient = new RestClient();
    
    	model.addAttribute("meters",restClient.getMeters());
    	
    	return "configQuery";
    }
}
