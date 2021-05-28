package com.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AdminDAO;
import com.dto.MemberDTO;

@Service
public class AdminService {
	@Autowired
	AdminDAO dao;

	public List<MemberDTO> serachName(HashMap<String, String> map) {
		List<MemberDTO> dto = dao.serachName(map);
		return dto;
	}

}