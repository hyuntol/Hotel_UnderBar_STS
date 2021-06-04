package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dto.ReplyDTO;
import com.dto.EventDTO;
import com.dto.EventPageDTO;
import com.service.EventService;


@Controller
public class EventController {
	@Autowired
	EventService eService;
	//시작점
	
	
	//EVENT 글쓰기 클릭 
	@RequestMapping("/loginCheck/eventWrite")
	public String eve_write() {
		return "redirect:../eventWrite";
	}
	
	//EVENT 글쓰기  
	@RequestMapping("/loginCheck/eventInsert")
	public String eve_insert(EventDTO dto) {
		eService.eventInsert(dto);
		System.out.println("eventInsert : "+dto);
		return "redirect:../event";
	}
	
	@RequestMapping("/event")
	public ModelAndView event(@RequestParam(required=false, defaultValue="1") String curPage) {
		//event 불러오기 + 페이징
		System.out.println("이벤트 curpage" + curPage);
		EventPageDTO epDTO = eService.eventList(Integer.parseInt(curPage));
		ModelAndView mav = new ModelAndView();
		mav.addObject("epDTO",epDTO);
		mav.setViewName("event");
		return mav;			
	}
	
	@RequestMapping("/eventRetrieve")
	public ModelAndView event_retrieve(@RequestParam String code) {
		//event retrieve
		EventDTO eDTO = eService.eventRetrieve(code);
		System.out.println(eDTO+": event_retrieve");
		ModelAndView mav = new ModelAndView();
		mav.addObject("eDTO",eDTO);
		mav.setViewName("eventRetrieve");
		return mav;			
	}
	
	
	
//	@ResponseBody
//	@RequestMapping("/event/addComment")
//	public String ajax_addComment(CommentDTO cDTO, HttpServletRequest request){
//		
//			eService.addCommnet(cDTO);
//			System.out.println(cDTO);
//		
//		
//		return "success";
//		
//	}
//	@ResponseBody
//	@RequestMapping("/event/delComment")
//	public String ajax_delComment(@RequestParam String code){
//		System.out.println("파싱값 : "+code);
//		int c_code = Integer.parseInt(code);
//		System.out.println(c_code);
//		eService.delCommnet(c_code);
//		
//		
//		return "success";
//		
//	}
//	@ResponseBody
//	@RequestMapping("/event/updateComment")
//	public ModelAndView ajax_updateComment(@RequestParam Map<String, String> map) {
//		
//		 Iterator<String> keys = map.keySet().iterator();
//	        while( keys.hasNext() ){
//	            String key = keys.next();
//	            String value = map.get(key);
//	            System.out.println("키 : "+key+", 값 : "+value);
//	        }
//	        String e_code = map.get("e_code");
//	        System.out.println(e_code);
//	        
//	        int num = eService.updateComment(map);
//	        System.out.println("업데이트 댓글 : " +  num);
//	        
//	        //객체를 뿌려주기위함
//	        //CommentDTO cDTO = eService.commentListByCode(e_code);
////	        ModelAndView mav = new ModelAndView();
////	        mav.addObject("cDTO", cDTO);
////	        System.out.println(cDTO);
//
//	        return null;
//		
//	}
//	
//	
//	
//	@ResponseBody
//	@RequestMapping(value = "/event/commentList", produces="application/json; charset=utf8")
//	public ResponseEntity ajax_commentList(CommentDTO commentDTO, HttpServletRequest request) throws Exception{
//		
//		HttpHeaders responseHeaders = new HttpHeaders();
//		ArrayList<HashMap> hmList = new ArrayList<HashMap>();
//		String e_code = commentDTO.getE_code();
//		System.out.println(e_code);
//		
//		//해당 게시물 댓글
//		List<CommentDTO> cList = eService.commentListByCode(e_code);
//		
//
//        if(cList.size() > 0){
//            for(int i=0; i<cList.size(); i++){
//                HashMap map = new HashMap();
//                map.put("c_code", cList.get(i).getC_code());
//                map.put("e_code", cList.get(i).getE_code());
//                map.put("comments", cList.get(i).getComments());
//                map.put("writer", cList.get(i).getWriter());
//                map.put("regdate", cList.get(i).getRegdate());
//                
//                hmList.add(map);
//            }
//            
//        }
//        
//        JSONArray json = new JSONArray(hmList);        
//        return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);
//		
//	}
//	
//	
	
	
	
}
