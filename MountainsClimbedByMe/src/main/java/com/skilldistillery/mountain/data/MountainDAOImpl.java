package com.skilldistillery.mountain.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.mountain.entities.MountainClimbed;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class MountainDAOImpl implements MountainDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<MountainClimbed> findAll() {
		String jpql = "SELECT m FROM MountainClimbed m";
		List<MountainClimbed> results = em.createQuery(jpql, MountainClimbed.class).getResultList();
		
		return results;
	}

	@Override
	public MountainClimbed findById(int showId) {
		return em.find(MountainClimbed.class, showId);
	}

	@Override
	public MountainClimbed create(MountainClimbed newMountain) {
		em.persist(newMountain);
		em.flush();
		
		return newMountain;
	}

	@Override
	public MountainClimbed update(int showId, MountainClimbed updatingMountain) {
		MountainClimbed managedMt = em.find(MountainClimbed.class, showId);
		managedMt.setMountainName(updatingMountain.getMountainName());
		em.persist(managedMt);
		em.flush();
		
		return updatingMountain;
	}

	@Override
	public boolean deleteById(int showId) {
		MountainClimbed managedMt = em.find(MountainClimbed.class, showId);
		try {
			em.remove(managedMt);
			em.flush();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}

}
