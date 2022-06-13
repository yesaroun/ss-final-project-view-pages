package com.test.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController
{
	@Autowired
	private SqlSession sqlSession;
	
	// public String adminCount();
	
	@RequestMapping(value = "/adminmain.action", method = RequestMethod.GET)
	public String adminCount(Model model)
	{
		String result = null;
		
		IAdminDAO dao =sqlSession.getMapper(IAdminDAO.class);
		
		model.addAttribute("countPostRept", dao.countPostRept());
		model.addAttribute("countCmntRept", dao.countCmntRept());
		model.addAttribute("countQna", dao.countQna());
		
		result = "/AdMain.jsp";
		
		return result;
	}
	
	@RequestMapping(value="/banlist.action", method = RequestMethod.GET)
	public String userBanList(Model model)
	{
		String result = null;
		
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		model.addAttribute("banList", dao.banList());
		
		result = "/AdBan.jsp";
		
		return result;
	}
	
	@RequestMapping(value="/postreptlist.action", method = RequestMethod.GET)
	public String postReptList(Model model)
	{
		String result = null;
		
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		model.addAttribute("postReptList", dao.postReptList());
		
		result = "/AdPostReptList.jsp";
		
		return result;
	}
}
