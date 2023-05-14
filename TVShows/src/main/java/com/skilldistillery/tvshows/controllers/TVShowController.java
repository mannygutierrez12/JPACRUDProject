package com.skilldistillery.tvshows.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.tvshows.data.TVShowDAO;
import com.skilldistillery.tvshows.entities.TVShow;

@Controller
public class TVShowController {
	
	@Autowired
	private TVShowDAO tvShow;
	
	
	@RequestMapping(path={"/","index.do"})
	public String index() {
	  return "index";
	}
	

	@RequestMapping(path="findShowById.do")
	public String getShow(Integer id, Model model) {
		TVShow show = tvShow.findById(id);
		model.addAttribute("show", show);
		return "shows/findbyid";
	}
	
	@RequestMapping(path = "allShows.do")
	public String allShows(Model model) {
	    List<TVShow> shows = tvShow.findAll();
	    model.addAttribute("shows", shows);
	    return "shows/listallshows";
	}

	
	@RequestMapping(path="deleteShow.do", method=RequestMethod.POST)
	public String deleteShow(Integer id) {
		tvShow.delete(id);
		return "shows/delete";
	}
	
	@RequestMapping(path="updateShow.do", method=RequestMethod.POST)
	public String updateShow(TVShow show) {
		tvShow.update(show);
		return "show/update";
	}
	
	@RequestMapping(path="addShow.do", method=RequestMethod.POST)
	public String addShow(TVShow show) {
		tvShow.add(show);
		return "show/add";
	}
}
