package com.eventmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eventmanagement.dao.EventsDAO;
//import com.eventmanagement.entity.Event;
import com.eventmanagement.entity.Events;
//import com.eventmanagement.entity.Eventuser;

@Service
public class EventServiceImpl implements EventServices {
	
	@Autowired
	private EventsDAO eventsDAO;
	
	@Override
	@Transactional
	public List<Events> getEvents()
	{
		
		return eventsDAO.getEvents();
	}

	@Override
	@Transactional
	public void saveEvent(Events theEvent) {
		
		eventsDAO.saveEvent(theEvent);

	}

	@Override
	@Transactional
	public Events getEvent(int theId) {
		
		return eventsDAO.getEvent(theId);
	}


	@Override
	@Transactional
	public void deleteEvent(int eventId) {
		// TODO Auto-generated method stub
		eventsDAO.deleteEvent(eventId);
	}

	@Override
	@Transactional
	public boolean userAuthenticate(String username, String password) {
		// TODO Auto-generated method stub
		return eventsDAO.userAuthenticate(username,password);
	}

	

}