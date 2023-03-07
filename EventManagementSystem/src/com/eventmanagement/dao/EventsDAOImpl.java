package com.eventmanagement.dao;

import java.time.LocalDateTime;
import java.util.List;

//import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import com.eventmanagement.entity.Event;
import com.eventmanagement.entity.Events;
import com.eventmanagement.entity.Eventuser;
import com.eventmanagement.util.DateTimeUtil;
//import com.eventmanagement.util.DateTimeUtil;



@Repository
public class EventsDAOImpl implements EventsDAO {
	

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Events> getEvents() {
		// TODO Auto-generated method stub
		
		Session currentSession =sessionFactory.getCurrentSession();
		
		Query<Events> theQuery= currentSession.createQuery("from Events",Events.class);
		
		List<Events> events= theQuery.getResultList();
		
		for(Events event : events)
		{
			String startDateString = event.getStartDate();
			LocalDateTime startDate = DateTimeUtil.DateConvert(startDateString);
			
			String endDateString = event.getEndDate();
			LocalDateTime endDate = DateTimeUtil.DateConvert(endDateString);
			
			LocalDateTime nowDate = LocalDateTime.now();
			
			if(nowDate.isAfter(endDate))
			{
				event.setStatus("Completed");
			}
			if(nowDate.isBefore(startDate)) {
				event.setStatus("Upcoming");
			}
			
			currentSession.saveOrUpdate(event);
		}
		
		return events;
	}

	@Override
	public void saveEvent(Events theEvent) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theEvent);
	}

	@Override
	public Events getEvent(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Events theEvent = currentSession.get(Events.class, theId);
		
		return theEvent;
	}

	

	@Override
	public void deleteEvent(int eventId) {
		
        Session currentSession = sessionFactory.getCurrentSession();
		
		Events theEvent = currentSession.get(Events.class, eventId);
		
		currentSession.delete(theEvent);
		

	}

	@Override
	public boolean userAuthenticate(String username, String password) {
		// TODO Auto-generated method stub
		Session currentSession =sessionFactory.getCurrentSession();
		
		Query<Eventuser> theQuery= currentSession.createQuery("from Eventuser",Eventuser.class);
		
		List<Eventuser> eventUser= theQuery.getResultList();
		int i=0;
		for(Eventuser eUser: eventUser)
		{
			if(username.equals(eUser.getUsername()) && password.equals(eUser.getPassword()) )
			{
				i=1;
			}
		}
		
		if(i==1)
		{
			return true;
		}
		else
		{
			return false;
		}
		
		
	}

	

}