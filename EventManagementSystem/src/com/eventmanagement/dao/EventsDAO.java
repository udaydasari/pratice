package com.eventmanagement.dao;

import java.util.List;

//import com.eventmanagement.entity.Event;
import com.eventmanagement.entity.Events;
//import com.eventmanagement.entity.Eventuser;
public interface EventsDAO {
		
	public List<Events> getEvents();

	public Events getEvent(int eventId);

	public void saveEvent(Events event);

	public void deleteEvent(int eventId);

	public boolean userAuthenticate(String username, String password);

	

}
