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
		return newMountain;
	}

	@Override
	public MountainClimbed update(int showId, MountainClimbed updatingMountain) {
		MountainClimbed managedMt = em.find(MountainClimbed.class, showId);
		if (managedMt != null) {
			managedMt.setMountainName(updatingMountain.getMountainName());
			managedMt.setElevation(updatingMountain.getElevation());
			managedMt.setFirstSummit(updatingMountain.getFirstSummit());
			managedMt.setMySummit(updatingMountain.getMySummit());
			managedMt.setLocation(updatingMountain.getLocation());
			managedMt.setDeathsUpon(updatingMountain.getDeathsUpon());
			em.persist(managedMt);
		}
		return updatingMountain;
	}

	@Override
	public boolean deleteById(int showId) {
	    try {
	        MountainClimbed deletedMt = em.find(MountainClimbed.class, showId);
	        if (deletedMt == null) {
	            return false;
	        }
	        em.remove(deletedMt);
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	    return true;
	}

}
