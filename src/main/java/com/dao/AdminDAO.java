package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.AdminHotelPageDTO;
import com.dto.AdminMemberPageDTO;
import com.dto.BoardDTO;
import com.dto.BoardPageDTO;
import com.dto.HotelDTO;
import com.dto.MemberDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	SqlSessionTemplate template;

	public List<MemberDTO> serachName(HashMap<String, String> map) {
		List<MemberDTO> dto = template.selectList("AdminMapper.serachName", map);
		return dto;
	}


	public AdminMemberPageDTO adminMember(int curPage, HashMap<String, String> map) {
		AdminMemberPageDTO ampDTO = new AdminMemberPageDTO();
		int perPage = ampDTO.getPerPage(); //10
		int offset = (curPage -1)*perPage; //0
		List<MemberDTO> list = template.selectList("AdminMapper.adminMember", map, new RowBounds(offset,perPage));
		ampDTO.setCurPage(curPage);
		ampDTO.setList(list);
		ampDTO.setTotalCount(totalCount(map));
		System.out.println(perPage);
		System.out.println(offset);
		
		System.out.println("AdminMemberPageDTO : " + ampDTO);
		return ampDTO;
	}
	
	private int totalCount(HashMap<String, String> map) {
		int num = template.selectOne("AdminMapper.totalCount", map);
		System.out.println("memberTotalCount : "+num);
		return num;
	}


	public AdminHotelPageDTO adminHotel(int curPage, HashMap<String, String> map) {
		AdminHotelPageDTO ahpDTO = new AdminHotelPageDTO();
		int perPage = ahpDTO.getPerPage(); //10
		int offset = (curPage -1)*perPage; //0
		List<HotelDTO> list = template.selectList("AdminMapper.adminHotel", map, new RowBounds(offset,perPage));
		ahpDTO.setCurPage(curPage);
		ahpDTO.setList(list);
		ahpDTO.setTotalCount(HtotalCount(map));
		System.out.println(perPage);
		System.out.println(offset);	
		System.out.println("AdminHotelPageDTO : " + ahpDTO);
		return ahpDTO;
	}
	private int HtotalCount(HashMap<String, String> map) {
		int num = template.selectOne("AdminMapper.HtotalCount", map);
		System.out.println("HotelTotalCount : "+num);
		return num;
	}

}
