package com.partner.core.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.partner.core.model.Entity;

public class EntityServiceImpl implements EntityService {
	
	private Map<String,List<Entity>> entity;
	
	public EntityServiceImpl(){
		entity = new HashMap<String,List<Entity>>();
		String [] firstName = {"George","Sally","Walter","Bill","Dave","Andy","Bert","Jack","Wally","Doug"};
		String [] lastName = {"Douglas","Smith","Jenkins","Edwards","Luke","Jennings","Smithwick","Harper","Lankins","Lica"};
		for(String fName : firstName){
			for(String lName : lastName){
				Entity e = new Entity();
				e.setFirstName(fName);
				e.setLastName(lName);
				setEntity(e);
			}
		}
	}

	@Override
	public List<Entity> getEntity(String lastName) {		
		return entity.get(lastName.toLowerCase().trim());
	}

	@Override
	public void setEntity(Entity entity) {
		if(!this.entity.containsKey(entity.getLastName().toLowerCase())){
			List<Entity> eList = new ArrayList<Entity>();
			eList.add(entity);
			this.entity.put(entity.getLastName().toLowerCase(), eList);
		}
		else{
			List<Entity> eList = this.entity.get(entity.getLastName().toLowerCase());
			eList.add(entity);			
		}

	}

	@Override
	public void deleteEntity(Entity entity) {
		// TODO Auto-generated method stub

	}

}
