package com.partner.core.rest;

import java.util.List;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.web.client.RestTemplate;
import com.partner.core.model.Meter;
import com.partner.core.model.MeteringUnits;


public class RestClient {
	public List<Meter> getMeters(){
		RestTemplate restTemplate = new RestTemplate();		
		List<Meter>meters = restTemplate.getForObject("http://localhost:8089/PartnerWeb/rest/asset/meters", MeteringUnits.class).getMeteringUnits();		
		return meters;
	}
}
