package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ThanhtichDAO;
import com.entities.Thanhtich;

@Service
@Transactional
public class ThanhtichService {
	@Autowired
	ThanhtichDAO thanhtichDAO;
	

	public List<Thanhtich> findAllThanhtich() {
		return thanhtichDAO.findAllThanhtich();
	}

	public void addThanhtich(Thanhtich thanhtich) {
		thanhtichDAO.addThanhtich(thanhtich);
	}
	
	public List<Object> sumRecord(){
		return thanhtichDAO.sumRecord();
	}
	
	
	public List<Object> tongLuong(){
		return thanhtichDAO.tongLuong();
	}

}
