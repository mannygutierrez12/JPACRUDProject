package com.skilldistillery.tvshows.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.tvshows.data.TVShowDAO;
import com.skilldistillery.tvshows.entities.TVShow;

public class TVShowController {
	
	@Autowired
	private TVShowDAO tvShow;
	
	
	@RequestMapping(path={"/","index.do"})
	public String index() {
	  return "index";
	}
	
	
//	@RequestMapping(path={"/","index.do"})
//	public String index(Model model) {
//	    List<TVShow> film = filmDao.findAll();
//	    model.addAttribute("filmList", film);
//	    return "index";
//	}
	

	
	@RequestMapping(path="getShow.do")
	public String getShow(Integer id, Model model) {
		TVShow show = tvShow.findById(id);
		model.addAttribute("show", show);
		return "film/show";
	}

}
