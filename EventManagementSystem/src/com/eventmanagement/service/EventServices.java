package com.eventmanagement.service;

import java.util.List;

//import com.eventmanagement.entity.Event;
import com.eventmanagement.entity.Events;
//import com.eventmanagement.entity.Eventuser;

public interface EventServices {
	
	public List<Events> getEvents();
	
	public Events getEvent(int eventId);

	void saveEvent(Events event);

	void deleteEvent(int eventId);

	public boolean userAuthenticate(String username, String password);

	
}