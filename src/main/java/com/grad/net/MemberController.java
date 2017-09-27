package com.grad.net;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grad.net.security.Auth;
import com.grad.net.security.AuthUser;
import com.grad.net.service.CodeService;
import com.grad.net.service.MemberService;
import com.grad.net.vo.CodeVo;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.StudyVo;

/*
 * 정예린,박가혜
 */	
@Controller
@RequestMapping("/user")
public class MemberController {

	@Autowired
	MemberService memberService;

	@Autowired
	CodeService codeService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {

		//System.out.println("login main");


		//System.out.println("일반로그인과  sns로그인");






		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String register(@ModelAttribute MemberVo memberVo) {

		System.out.println(memberVo.getEmail() + " " + memberVo.getPw() + " " + memberVo.getNknm());


		memberService.register(memberVo);

		return "redirect:/user/login";
	}

	/////////////////////////////////////// snslogin//////////////////////////////////////////

	/*
	 * 정예린,박가혜
	 */	
	@RequestMapping(value = "/snslogin", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		System.out.println("snslogin naver get");
		return "snslogin";
	}

	@RequestMapping(value = "/snslogin", method = RequestMethod.POST)
	public String snslogin(@RequestParam(value = "name", required = true, defaultValue = "") String mbNm,
			@RequestParam(value = "email", required = true, defaultValue = "") String iden,
			@RequestParam(value = "gender", required = true, defaultValue = "") String sex,
			@RequestParam(value = "birthday", required = true, defaultValue = "") String birdt,
			@RequestParam(value = "token", required = true, defaultValue = "") String snsTknValue,
			@RequestParam(value = "age", required = true, defaultValue = "") String agrg,
			@RequestParam(value = "nickname", required = true, defaultValue = "") String nknm,
			@RequestParam(value = "sns", required = true, defaultValue = "") String snsnm, HttpServletRequest request,
			HttpServletResponse response) {

		MemberVo memberVo = new MemberVo();

		memberVo.setMbNm(mbNm);
		memberVo.setIden(iden);
		memberVo.setSex(sex);
		memberVo.setBirdt(birdt);
		memberVo.setSnsTknValue(snsTknValue);
		;
		if (snsnm.equals("fb") || snsnm.equals("google")) {
			memberVo.setNknm(mbNm);
			;
		} else if (snsnm.equals("naver")) {
			memberVo.setNknm(nknm);
			;
		}
		memberVo.setAgrg(agrg);
		;

		//System.out.println("+++" + memberVo);

		boolean exist = memberService.existEamil(memberVo.getIden());

		System.out.println("존재하는 회원입니까? " + exist);

		if (exist != true) {
			System.out.println(snsnm);
			memberService.snslogin(memberVo, snsnm); //회원가입 
		}

		HttpSession session = request.getSession(true);

		MemberVo getmember=  memberService.getUser(iden);
		session.setAttribute("authUser", getmember);

		return "redirect:/user/login";
	}

	/////////////////////////////// mypage 세션 확인 ///////////////////////////////////

	//	@Auth(role = Auth.Role.USER)
	//	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	//	public String mypage(Locale locale, Model model,@AuthUser MemberVo authUser) {
	//		System.out.println(authUser.getMbDstnct());
	//		
	//		
	//		return "mypage";
	//	}

	////////////////////////////// 맞춤정보/////////////////////////////////

	/*
	 * 박가혜
	 */	
	@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/mbinfo", method = RequestMethod.GET)
	public String mbinfo(Locale locale, Model model, @AuthUser MemberVo authUser
			) {





		//List<CodeVo> userCodeVo = memberService.getMbinfoList(authUser);
		//List<CodeVo> codeVo = codeService.getCodeList();
		//model.addAttribute("Codelist", codeVo);
		//model.addAttribute("informationlist", userCodeVo);


		return "mbinfo";
	}

	@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/mbinfo", method = RequestMethod.POST)
	public String mbinfo(HttpServletRequest request, @AuthUser MemberVo authUser,
			@RequestParam(value = "cnt", required = true, defaultValue = "0") int cnt) {

		Long mbNo = authUser.getMbNo();
		List<String> information = new ArrayList<String>();




		// System.out.println("사용자 번호 ; "+authUser.getMbNo());
		// System.out.println("===cnt : "+cnt);

		for (int j = 1; j <= cnt; j++) {
			for (int i = 0; i < request.getParameterValues("ch" + String.valueOf(j)).length; i++) {
				information.add(request.getParameterValues("ch" + String.valueOf(j))[i]);
			}
		}
		//			memberService.registerMbinfo(mbNo, information);
		return "redirect:/user/mbinfo";


	}





	@RequestMapping(value = "/mbinfo/modify", method = RequestMethod.POST)
	public String mbinfoModifiy(@AuthUser MemberVo authUser,
			@RequestParam(value = "info", required = true, defaultValue = "") String[] info) {

		//memberService.updateMbinfo(authUser.getMbNo(), info);
		return "redirect:/user/mbinfo";
	}


	/*
	 * 허주한
	 */	

	@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/setting", method = RequestMethod.GET)
	public String setting(Locale locale, Model model,@AuthUser MemberVo authUser) {

		model.addAttribute("infoList", memberService.getMbinfoList(authUser));

		//System.out.println(memberService.getMbinfoList(authUser));
		model.addAttribute("privateInfo", memberService.getprivateInfo(authUser));



		return "setting";
	}

	//@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String notiMypage(HttpServletRequest request, Model model, @RequestParam(value="type", required = true , defaultValue = "-1") String type) {
		HttpSession session = request.getSession(true);

		MemberVo authUser = (MemberVo) session.getAttribute("authUser");

		//맞춤정보 코드 할당
		List<CodeVo> codeList = memberService.getinfoList(authUser);

		//내가 쓴 글 할당
		List<StudyVo> myBoardList = memberService.getMyBoardList(authUser);

		//맞춤정보로 출려 정보 할당
		List<StudyVo> tempBoardList = memberService.getArticleByInfo(codeList,-1l);

		//렌더링 할 정보 할당
		List<StudyVo> BoardList = new ArrayList<StudyVo>();


		//내가 스크랩한 게시물 모집공고 할당
		//		List<CodeVo> scrapList = memberService.getBoardScrapList(authUser);

		//내소식, 모집공고, 내가 쓴 글, 스크랩 별 보여줄 일수
		int dayCount=0;


		if(type.equals("-1")) {
			BoardList = tempBoardList;
			dayCount = 7;
		}else if(type.equals("noti")){
			for(int i=0;i<tempBoardList.size();i++) {
				if(tempBoardList.get(i).getSlctnNotiDstnct().equals("대학원") || tempBoardList.get(i).getSlctnNotiDstnct().equals("연구실"))
					BoardList.add(tempBoardList.get(i));
			}
			dayCount = 7;
		}else if(type.equals("myboard")) {
			BoardList = myBoardList;
			dayCount = 7;
		}else if(type.equals("myscrap")) {
			dayCount = 60;
			tempBoardList = memberService.getArticleByInfo(codeList,authUser.getMbNo());
			BoardList = tempBoardList;
		}

		List<Map<String, Object>> calList = new ArrayList<Map<String, Object>>();

		int days = -1;
		int num = 1;
		int preDays = -1;

		Calendar oCalendar = Calendar.getInstance(); 

		int year;
		int month;
		int day;
		int week1;
		String week = null;



		for (int i = 0; i < dayCount; i++) {

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




		//그룹 번호 할당
		if(type.equals("-1")||type.equals("noti")) {
			for(int i=0;i<BoardList.size();i++) {

				//연구실일 경우 모집연구 분야(1:다) 할당
				if(BoardList.get(i).getSlctnNotiDstnct().equals("연구실")) {
					BoardList.get(i).setResearchList(memberService.getReasearchList(BoardList.get(i).getSlctnNotiNo()));
				}

				days = Integer.parseInt(BoardList.get(i).getDay());

				if(preDays != days) {
					num = 1;
					BoardList.get(i).setNo(num++);
					days = Integer.parseInt(BoardList.get(i).getDay());
				}
				if(preDays == days) {
					BoardList.get(i).setNo(num++);
				}
				preDays = days;
			}
		}

		if(type.equals("myscrap")||type.equals("myboard")) {
			int boardNum = 1;
			int notiNum = 1;
			for(int i=0;i<BoardList.size();i++) {
				if(BoardList.get(i).getSlctnNotiDstnct().equals("연구실")||BoardList.get(i).getSlctnNotiDstnct().equals("대학원")) {
					BoardList.get(i).setNo(notiNum++);
					System.out.println(BoardList.get(i).getNo());
				}else {
					BoardList.get(i).setNo(boardNum++);
					System.out.println(BoardList.get(i).getNo());
				}
			}
		}



		model.addAttribute("type", type);
		model.addAttribute("calList", calList);
		model.addAttribute("infoList", codeList);
		model.addAttribute("BoardList", BoardList);



		return "mypage2";
	}


}
