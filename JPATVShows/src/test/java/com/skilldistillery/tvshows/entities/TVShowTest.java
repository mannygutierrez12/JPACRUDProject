package com.skilldistillery.tvshows.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class TVShowTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private TVShow tvShow;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPATVShows");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		tvShow = em.find(TVShow.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		tvShow = null;
	}

	@Test
	void test() {
		assertNotNull(tvShow);
		assertEquals("South Park", tvShow.getName());
		assertEquals("braylin", tvShow.getRecommendedBy());
	}

}
