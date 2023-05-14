package com.skilldistillery.tvshows.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tv_show")
public class TVShow {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private int length;
	
	@Column(name="number_of_seasons")
	private int numberOfSeasons;
	
	private String category;
	
	@Column(name="where_to_stream")
	private String whereToStream;
	
	@Column(name="recommended_by")
	private String recommendedBy;

	public TVShow() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getNumberOfSeasons() {
		return numberOfSeasons;
	}

	public void setNumberOfSeasons(int numberOfSeasons) {
		this.numberOfSeasons = numberOfSeasons;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getWhereToStream() {
		return whereToStream;
	}

	public void setWhereToStream(String whereToStream) {
		this.whereToStream = whereToStream;
	}

	public String getRecommendedBy() {
		return recommendedBy;
	}

	public void setRecommendedBy(String recommendedBy) {
		this.recommendedBy = recommendedBy;
	}

	@Override
	public String toString() {
		return "TVShow [id=" + id + ", name=" + name + ", length=" + length + ", numberOfSeasons=" + numberOfSeasons
				+ ", category=" + category + ", whereToStream=" + whereToStream + ", recommendedBy=" + recommendedBy
				+ "]";
	}


	
	
	
	
	
}

