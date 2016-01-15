// FINAL
package com.partner.core.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.partner.core.model.Entity;
import com.partner.core.service.EntityService;

import java.util.List;


@Controller
@RequestMapping("/personQuery")
public class EntityQueryController {
    
    private EntityService entityService;

    /**
     * Constructor auto wired to receive EntityService 
     * @param {@link EntityService} entityService
     */
    @Autowired
    public EntityQueryController(EntityService entityService) {
        this.entityService = entityService;
    }

    /**
     * Stub method for get requests.
     */
    @RequestMapping(method = RequestMethod.GET)
    public void setupForm() {
		// Method is void, therefore a default view by the URL is assumed (reservationQuery)
	        // (i.e.@RequestMapping(/reservationQuery)) 
		// Based on resolver configuration the reservationQuery view
		// will be mapped to a JSP in /WEB-INF/jsp/reservationQuery.jsp 
    }

    /**
     * Controller will always look for a default POST method irrespective of name
     * when a submission ocurrs on the URL (i.e.@RequestMapping(/reservationQuery)) 
     * In this case, named submitForm to ease identification.
     * @param {@link String} lastName
     * @param {@link Model} model
     * @return String value for view for Model.
     */
    @RequestMapping(method = RequestMethod.POST)
    // Submission will come with courtName field, also add Model to return results 
    public String sumbitForm(@RequestParam("lastName") String lastName, Model model) {
		// Create reservation list
		List<Entity> persons = java.util.Collections.emptyList();
		// Make a query if parameter is not null
	        if (lastName != null) {
	            persons = entityService.getEntity(lastName);
	        }
		// Update model to include reservations
		model.addAttribute("persons", persons);
		// Return view as a string
		// Based on resolver configuration the reservationQuery view 
		// will be mapped to a JSP in /WEB-INF/jsp/reservationQuery.jsp 
	    return "personQuery";
    }
}