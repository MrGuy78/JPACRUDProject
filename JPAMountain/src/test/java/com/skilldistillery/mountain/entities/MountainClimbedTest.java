package com.skilldistillery.mountain.entities;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class MountainClimbedTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private MountainClimbed summit;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAMountain");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		summit = em.find(MountainClimbed.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		summit = null;
	}

	@Test
	void test_MountainClimbed_entity_mapping() {
		assertNotNull(summit);
		assertEquals("Mount Rainier", summit.getMountainName());
	}

}
