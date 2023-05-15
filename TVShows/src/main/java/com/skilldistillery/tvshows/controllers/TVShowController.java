package com.skilldistillery.tvshows.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.tvshows.data.TVShowDAO;
import com.skilldistillery.tvshows.entities.TVShow;

@Controller
public class TVShowController {

	@Autowired
	private TVShowDAO tvShow;

	@RequestMapping(path = { "/", "index.do" })
	public String index() {
		return "index";
	}

	@RequestMapping(path = "error.do")
	public String error() {
		return "shows/error";
	}

	@RequestMapping(path = "findShowById.do")
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

	@RequestMapping(path = "addShow.do")
	public String addShow() {
		return "shows/add";
	}

	@RequestMapping(path = "addShowForm.do", method = RequestMethod.POST)
	public String addShow(TVShow show) {
		tvShow.add(show);
		return "redirect:index.do";
	}

	@RequestMapping(path = "updateShow.do")
	public String updateShow() {
		return "shows/update";
	}

	@RequestMapping(path = "updateShowForm.do", method = RequestMethod.POST)
	public String updateShowForm(@RequestParam("showId") int showId, @RequestParam("name") String name,
			@RequestParam("length") int length, @RequestParam("numberOfSeasons") int numberOfSeasons,
			@RequestParam("category") String category, @RequestParam("whereToStream") String whereToStream,
			@RequestParam("recommendedBy") String recommendedBy, Model model) {

		TVShow existingShow = tvShow.findById(showId);

		if (existingShow == null) {

			return "error.do";
		}

		existingShow.setName(name);
		existingShow.setLength(length);
		existingShow.setNumberOfSeasons(numberOfSeasons);
		existingShow.setCategory(category);
		existingShow.setWhereToStream(whereToStream);
		existingShow.setRecommendedBy(recommendedBy);

		tvShow.update(existingShow);

		return "index";
	}

	@RequestMapping(path = "deleteShow.do", method = RequestMethod.GET)
	public String deleteShow(Model model) {
		List<TVShow> shows = tvShow.findAll();
		model.addAttribute("shows", shows);
		return "shows/delete";
	}

	@RequestMapping(path = "deleteShowForm.do", method = RequestMethod.POST)
	public String deleteShowForm(@RequestParam("showId") int showId) {
		TVShow existingShow = tvShow.findById(showId);

		if (existingShow != null) {
			tvShow.delete(showId);
		}

		return "redirect:index.do";
	}

}
