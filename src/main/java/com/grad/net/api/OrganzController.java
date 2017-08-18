package com.grad.net.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.dto.JSONResult;
import com.grad.net.service.OrganzService;
import com.grad.net.vo.ResrchAcrsltVo;


@Controller("orgnzAPIController")
@RequestMapping("/organz/api")
public class OrganzController {
	
	@Autowired
	OrganzService organzService;

	@RequestMapping("/detail")
	@ResponseBody
	public JSONResult fetchList(@RequestParam("orgNo") int orgNo, @RequestParam("type") String type) {
		
		//System.out.println(orgNo + " " + type);
		List<ResrchAcrsltVo> list = organzService.getResrchAcrsltFetchList(orgNo, type);
		
		//System.out.println(list.toString());
		return JSONResult.success(list);
		
	}

}
