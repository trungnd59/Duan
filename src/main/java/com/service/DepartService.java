package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.DepartDAO;
import com.entities.Departs;

@Service
@Transactional
public class DepartService {
	@Autowired 
	DepartDAO departDAO;
	public List<Departs> findAllDeparts() {
		return departDAO.findAllDeparts();
	}

	public void saveDeparts(Departs depart) {
		departDAO.saveDeparts(depart);
	}

	public void updateDeparts(Departs depart) {
		departDAO.updateDeparts(depart);
	}

	public Departs findByIdDeparts(final int id) {
		return departDAO.findByIdDeparts(id);
	}

	public void deleteDeparts(final int id) {
		Departs depart = departDAO.findByIdDeparts(id);
		if (depart != null) {
			departDAO.deleteDeparts(depart);
		}
	}
}
