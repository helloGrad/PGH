package com.grad.net;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.grad.net.security.Auth;
import com.grad.net.security.AuthUser;
import com.grad.net.service.AdminService;
import com.grad.net.service.ApndngFileService;
import com.grad.net.service.StudyService;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.NotiVo;
import com.grad.net.vo.OrganzVo;
import com.grad.net.vo.ResrchAcrsltVo;
import com.grad.net.vo.StudyVo;





@Controller
@RequestMapping("/study")
public class StudyController {
	
	
	@Autowired
	StudyService studyService;

	/*
	 * 박가혜 2017-09-13
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String studyHome(Model model, MemberVo memberVo, @RequestParam("boardtype") String boardtype) {

		model.addAttribute("MemberVo", memberVo);
		model.addAttribute("boardtype", boardtype);

		/*
		 * 박가혜 2017-09-20
		 */

		List<Map<String, Object>> calList = new ArrayList<Map<String, Object>>();

		Calendar oCalendar = Calendar.getInstance(); // 현재 날짜/시간 등의 각종 정보 얻기

		int year;
		int month;
		int day;
		int week1;
		String week = null;

		for (int i = 0; i < 7; i++) {

			if (i != 0) {
				oCalendar.add(Calendar.DATE, -1);
			}

			year = oCalendar.get(Calendar.YEAR);
			month = (oCalendar.get(Calendar.MONTH) + 1);
			day = oCalendar.get(Calendar.DAY_OF_MONTH);
			week1 = oCalendar.get(Calendar.DAY_OF_WEEK);

			if (week1 == 1) {

				week = "일요일";

			} else if (week1 == 2) {

				week = "월요일";
			} else if (week1 == 3) {

				week = "화요일";
			} else if (week1 == 4) {

				week = "수요일";
			} else if (week1 == 5) {

				week = "목요일";
			} else if (week1 == 6) {

				week = "금요일";
			} else if (week1 == 7) {

				week = "토요일";
			}

			Map<String, Object> map = new HashMap<String, Object>();
			map.put("year", year);
			map.put("month", month);
			map.put("day", day);
			map.put("week", week);

			calList.add(i, map);

		}

		model.addAttribute("calList", calList);
		
		List<StudyVo> majorList = studyService.getMajorList(boardtype);
		
		
		List<Long> intMajorList = new ArrayList<Long>();
		
		for(int i=0; i<majorList.size(); i++) {
			
			intMajorList.add(majorList.get(i).getSlctnNotiNo());
			
		}
		
		System.out.println(intMajorList);
		
		List<StudyVo> BoardList = studyService.getBoardList(intMajorList,boardtype);
		
		System.out.println(BoardList);
		
		
		

		return "study/home";
	}

	@RequestMapping(value = "/main", method = RequestMethod.POST)
	public String home1(Locale locale, Model model, @RequestBody MemberVo memberVo) {
		System.out.println(memberVo.getEmail());

		return "study/home";
	}

	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String studyNotice(Model model, MemberVo memberVo, @RequestParam("boardtype") String boardtype) {
		model.addAttribute("MemberVo", memberVo);
		model.addAttribute("boardtype", boardtype);
		return "study/notice";
	}

	@RequestMapping(value = "/discussion", method = RequestMethod.GET)
	public String studyDiscussion(Model model, @AuthUser MemberVo authUser,
			@RequestParam("boardtype") String boardtype) {

		model.addAttribute("boardtype", boardtype);
		model.addAttribute("authUser", authUser);

		return "study/discussion";
	}

	@RequestMapping(value = "/research", method = RequestMethod.GET)
	public String studyResearch(Model model, MemberVo memberVo, @RequestParam("boardtype") String boardtype) {

		model.addAttribute("MemberVo", memberVo);
		model.addAttribute("boardtype", boardtype);

		return "study/research";
	}

	@RequestMapping(value = "/lab", method = RequestMethod.GET)
	public String studyLab(Model model, MemberVo memberVo, @RequestParam("boardtype") String boardtype) {
		model.addAttribute("MemberVo", memberVo);
		model.addAttribute("boardtype", boardtype);
		return "study/lab";
	}
	

	
}