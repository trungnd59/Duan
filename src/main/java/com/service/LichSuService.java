package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ChucvuDAO;
import com.dao.LichSuDAO;
import com.entities.Chucvu;
import com.entities.LichSuLamViec;
@Service
@Transactional
public class LichSuService {
	@Autowired
	LichSuDAO lichSuDAO;

	public List<LichSuLamViec> findAllLichSu(int userId) {
		return lichSuDAO.findAllLichSu(userId);
	}
	public List<LichSuLamViec> findAllLichSuByName(String userName) {
		return lichSuDAO.findAllLichSuByUsername(userName);
	}
	public void saveChucvu(LichSuLamViec lichSuLamViec) {
		lichSuDAO.saveLichSu(lichSuLamViec);
	}

	public void updateLichSu(LichSuLamViec lichSuLamViec) {
		lichSuDAO.updateLichSu(lichSuLamViec);
	}

	public LichSuLamViec findByIdLichSuLamViec(final int id) {
		return lichSuDAO.findByIdLichSu(id);
	}

	public boolean deleteLichSu(final int id) {
		LichSuLamViec lichSuLamViec = lichSuDAO.findByIdLichSu(id);
		if (lichSuLamViec != null) {
			lichSuDAO.deleteLichSuLamViec(lichSuLamViec);
			return true;
		}
		return false;
	}
}
