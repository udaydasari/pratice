package com.eventmanagement.entity;

//import java.time.LocalDateTime;

//import java.sql.Timestamp;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

//import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Events")
public class Events {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="Organiser")
	private String organiser;
	
	
	@Column(name="Event_Name")
	private String eventName;
	
	@Column(name="Event_Venue")
	private String eventVenue;
	
	@Column(name="Start_Date")
	private String startDate;
	
	@Column(name="End_Date")
	private String endDate;
	
	@Column(name="Description")
	private String description;
	
	@Column(name="Event_Type")
	private String eventType;
	
	@Column(name="Budget")
	private int budget;
	
	@Column(name="Status")
	private String status;
	
	
	
	public Events()
	{
		
	}
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrganiser() {
		return organiser;
	}

	public void setOrganiser(String organiser) {
		this.organiser = organiser;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventVenue() {
		return eventVenue;
	}

	public void setEventVenue(String eventVenue) {
		this.eventVenue = eventVenue;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getEventType() {
		return eventType;
	}

	public void setEventType(String eventType) {
		this.eventType = eventType;
	}

	public int getBudget() {
		return budget;
	}

	public void setBudget(int budget) {
		this.budget = budget;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	@Override
	public String toString() {
		return "Event [organiser=" + organiser + ", eventName=" + eventName + ", eventVenue=" + eventVenue
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", description=" + description + ", eventType="
				+ eventType + ", budget=" + budget + ", status=" + status + "]";
	}
}