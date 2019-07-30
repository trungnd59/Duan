package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ChucvuDAO;
import com.entities.Chucvu;

@Service
@Transactional
public class ChucvuService {
	@Autowired
	ChucvuDAO chucvuDAO;

	public List<Chucvu> findAllChucvu() {
		return chucvuDAO.findAllChucvu();
	}

	public void saveChucvu(Chucvu chucvu) {
		chucvuDAO.saveChucvu(chucvu);
	}

	public void updateChucvu(Chucvu chucvu) {
		chucvuDAO.updateChucvu(chucvu);
	}

	public Chucvu findByIdChucvu(final int id) {
		return chucvuDAO.findByIdChucvu(id);
	}

	public void deleteChucvu(final int id) {
		Chucvu chucvu = chucvuDAO.findByIdChucvu(id);
		if (chucvu != null) {
			chucvuDAO.deleteChucvu(chucvu);
		}
	}
}
