package com.skilldistillery.mountain.entities;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "mountain_climbed")

public class MountainClimbed {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Id;
	
	@Column(name="mountain_name")
	private String mountainName;
	
	@Column(name="elevation")
	private int elevation;
	
	@Column(name="first_summit")
	private LocalDate firstSummit;
	
	@Column(name="my_summit")
	private LocalDate mySummit;
	
	@Column(name="location")
	private String location;
	
	@Column(name="deaths_upon")
	private Integer deathsUpon;

	public MountainClimbed() {
		super();
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getMountainName() {
		return mountainName;
	}

	public void setMountainName(String mountainName) {
		this.mountainName = mountainName;
	}

	public int getElevation() {
		return elevation;
	}

	public void setElevation(int elevation) {
		this.elevation = elevation;
	}

	public LocalDate getFirstSummit() {
		return firstSummit;
	}

	public void setFirstSummit(LocalDate firstSummit) {
		this.firstSummit = firstSummit;
	}

	public LocalDate getMySummit() {
		return mySummit;
	}

	public void setMySummit(LocalDate mySummit) {
		this.mySummit = mySummit;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Integer getDeathsUpon() {
		return deathsUpon;
	}

	public void setDeathsUpon(Integer deathsUpon) {
		this.deathsUpon = deathsUpon;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MountainClimbed [Id=").append(Id).append(", mountainName=").append(mountainName)
				.append(", elevation=").append(elevation).append(", firstSummit=").append(firstSummit)
				.append(", mySummit=").append(mySummit).append(", location=").append(location).append(", deathsUpon=")
				.append(deathsUpon).append("]");
		return builder.toString();
	}
}
