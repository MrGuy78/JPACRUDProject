package com.skilldistillery.mountain.data;

import java.util.List;

import com.skilldistillery.mountain.entities.MountainClimbed;

public interface MountainDAO {
	List<MountainClimbed> findAll();
	MountainClimbed findById(int showId);
	MountainClimbed create(MountainClimbed newMountain);
	MountainClimbed update(int showId, MountainClimbed updatingMountain);
	boolean deleteById(int showId);

}
