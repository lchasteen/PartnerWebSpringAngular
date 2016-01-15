package com.partner.core.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Coordinate {	
	private String latitude;
	private String longitude;
	
	/**
	 * Creates new Coordinate.
	 * @param lat {@link String} latitude
	 * @param lon {@link String} longitude
	 */
	public Coordinate(String lat, String lon){
		
	}
	
	/**
	 * Creates new Coordinate.
	 */
	public Coordinate(){
		
	}
	
	public String getLatitude() {
		return latitude;
	}
	
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
	

}
