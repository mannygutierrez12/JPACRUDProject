package com.skilldistillery.tvshows.data;

import java.util.List;

import com.skilldistillery.tvshows.entities.TVShow;

public interface TVShowDAO {
	
	TVShow findById(int id);
	List<TVShow> findAll();
	void delete(int id);
	TVShow update(TVShow show);
	TVShow add(TVShow show);

}
