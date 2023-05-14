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
		String query = "SELECT s FROM TVShow s";
		return em.createQuery(query, TVShow.class).getResultList();
	}

	@Override
	public void delete(int id) {
		TVShow show = em.find(TVShow.class, id);
		if (show != null) {
			em.remove(show);
		}
	}

	@Override
	public TVShow update(TVShow show) {
		return em.merge(show);
	}

	@Override
	public TVShow add(TVShow show) {
		em.persist(show);
		em.flush();
		return show;
	}

}
