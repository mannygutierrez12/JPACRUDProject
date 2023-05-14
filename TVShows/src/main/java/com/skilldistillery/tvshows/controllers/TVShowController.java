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
	
	@RequestMapping(path="addShow.do")
	public String addShow() {
		return "shows/add";
	}
	
	@RequestMapping(path="addShowForm.do", method=RequestMethod.POST)
	public String addShow(TVShow show) {
		tvShow.add(show);
		return "redirect:index.do";
	}
	
	@RequestMapping(path="updateShow.do")
	public String updateShow() {
		return "shows/update";
	}
	
	@RequestMapping(path="updateShowForm.do", method=RequestMethod.POST)
	public String updateShow(TVShow show) {
		tvShow.update(show);
		return "show/update";
	}
	
	@RequestMapping(path="deleteShow.do")
	public String deleteShow() {
		return "shows/delete";
	}

	
	@RequestMapping(path="deleteShowForm.do", method=RequestMethod.POST)
	public String deleteShow(Integer id) {
		tvShow.delete(id);
		return "shows/delete";
	}
	
	
	

}
