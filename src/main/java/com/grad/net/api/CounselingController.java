package com.grad.net.api;

import java.io.File;
import java.text.Format;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.grad.net.dto.JSONResult;
import com.grad.net.security.AuthUser;
import com.grad.net.service.ApndngFileService;
import com.grad.net.service.CounselingService;
import com.grad.net.service.MemberService;
import com.grad.net.vo.ApndngFileVo;
import com.grad.net.vo.CodeVo;
import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.FileVo;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.NotiVo;

@Controller("counselingAPIController")
@RequestMapping("/counseling/api")
public class CounselingController {

	@Autowired
	CounselingService counselingService;
	
	@Autowired
	ApndngFileService apndngFileService;

	/**
	 * 박가혜 2017-08-23
	 */
	
	@ResponseBody
	@RequestMapping(value = "/write")
	public JSONResult CounselingList(Model model, @AuthUser MemberVo authUser, MultipartHttpServletRequest multi) {
		

		  System.out.println("id : " + multi.getParameter("wrtbtTitle"));
	        System.out.println("pw : " + multi.getParameter("wrtbtText"));
	        System.out.println("pw : " + multi.getParameter("writrInfoOpngYn"));
	        System.out.println("pw : " + multi.getParameter("conslBbsDstnct"));
		
		
			  
	       CounselingVo counselingVo = new CounselingVo() ;
			  
	 	   
	       System.out.println(authUser);

			counselingVo.setMbNo(authUser.getMbNo());
			counselingVo.setWrtbtTitle(multi.getParameter("wrtbtTitle"));
			counselingVo.setWrtbtText(multi.getParameter("wrtbtText"));
			counselingVo.setBbsNo(Long.parseLong(multi.getParameter("bbsNo")));
			
			if(multi.getParameter("conslBbsDstnct") == "Y") {
				
				counselingVo.setWritrInfoOpngYn("Y");
					
				
			}else {
				
				counselingVo.setWritrInfoOpngYn("N");
				
			}
			
			System.out.println(counselingVo);
			counselingService.setWrite(counselingVo);
			
			
		
		/**
		 *파일업로드 2017-09-14
		 */
		// 
		ApndngFileVo vo = null;
		int lastId = 0;

		lastId = counselingService.lastInsertId();
		
		 List<MultipartFile> mf = multi.getFiles("file");

		 System.out.println("size: " +mf.size());
		
		  for(int i=0; i<mf.size(); i++) {
			  
			//  System.out.println(mf.get(i).getOriginalFilename());
			  
			   apndngFileService.restore(mf.get(i));
				vo = apndngFileService.getFileVo();
				vo.setPrntsDstnct("게시글");
				vo.setPrntsNo(lastId);
				
				System.out.println(vo);
				apndngFileService.insert(vo);



			  
			  
		  }
		  


		return JSONResult.success(lastId);
	}

	/**
	 * 박가혜 2017-08-24
	 */
	@ResponseBody
	@RequestMapping(value = "/replywrite", method = RequestMethod.POST) // 질문글 쓰기(답글쓰기)
	public JSONResult CounselingReplyList(Model model, @RequestBody CounselingVo counselingVo,
			@AuthUser MemberVo authUser) {

		counselingVo.setMbNo(authUser.getMbNo());
		System.out.println(counselingVo);
		counselingService.setReplyWrite(counselingVo);

		return JSONResult.success(counselingVo);
	}

	/**
	 * 박가혜 2017-08-26, 28
	 */
	@ResponseBody
	@RequestMapping(value = "/likeadd", method = RequestMethod.POST) // 좋아요 +
	public JSONResult CounselingLikeAdd(Model model, @RequestBody CounselingVo counselingVo) {

		// 있으면 삭제하고 좋아요 취소
		// 없으면 새로 입력

		//System.out.println(counselingVo);
		CounselingVo existLike = counselingService.existLikeOne(counselingVo.getMbNo(), counselingVo.getWrtbtNo());
		//System.out.println(existLike);
	

		if (existLike == null) {

			//System.out.println("추가");
			counselingService.setLike(counselingVo.getMbNo(), counselingVo.getWrtbtNo(),counselingVo.getInfroDstnct());

		} else {

			//System.out.println("삭제");
			counselingService.deleteLike(counselingVo.getMbNo(), counselingVo.getWrtbtNo(),counselingVo.getInfroDstnct());

		}
		CounselingVo result = counselingService.getCounselingPrnts(counselingVo.getWrtbtNo()); //원글
		

		return JSONResult.success(result);
	}
	
	
	/**
	 * 박가혜 2017-09-12 학문별 토론 리스트 보여주기  
	 */

	@ResponseBody
	@RequestMapping("/list")
	public JSONResult list(@RequestParam("type") String type,@RequestParam("order") String order, @RequestParam(value="sno", required=true, defaultValue="0") Long startNo) {

	
		//System.out.print(type+"  "+order+"  "+startNo);
		List<CounselingVo> counselingList= counselingService.getCounselingList(type,order,startNo); //답변과 원글 모두 넘김....
	
	
		return JSONResult.success(counselingList);
	}

}
