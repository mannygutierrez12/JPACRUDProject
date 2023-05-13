package com.skilldistillery.tvshows.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.tvshows.entities.TVShow;


@Service
@Transactional
public class TVShowDAOImpl implements TVShowDAO {
	
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public TVShow findById(int id) {
		return em.find(TVShow.class, id);
	}

	@Override
	public List<TVShow> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
