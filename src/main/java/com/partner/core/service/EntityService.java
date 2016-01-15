package com.partner.core.service;

import java.util.List;

import com.partner.core.model.Entity;

public interface EntityService {

	public List<Entity> getEntity(String lastName);
	public void setEntity(Entity person);
	public void deleteEntity(Entity person);
}
