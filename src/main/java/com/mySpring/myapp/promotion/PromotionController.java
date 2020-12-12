package com.mySpring.myapp.promotion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mySpring.myapp.promotion.PromotionVO;
import com.mySpring.myapp.promotion.PromotionServiceImpl;

@Controller
@RequestMapping(value="/promotion")
public class PromotionController {
	
	@Autowired
	PromotionServiceImpl promotionService;
	
	@RequestMapping(value="/createTable", method = RequestMethod.GET)
	public String createTablePromotion() {
		promotionService.createTablePromotion();
		return "redirect:../list";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String promotionList(Model model) {
		model.addAttribute("list", promotionService.getPromotionList());
		return "list";
	}
	
	@RequestMapping(value="/detail/{id}", method = RequestMethod.GET)
	public String promotionDetail(@PathVariable("id") int id, Model model) {
		PromotionVO promotionVO = promotionService.getPromotion(id);
		model.addAttribute("command", promotionVO);
		return "detail";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost(Model m) {
		m.addAttribute("command", new PromotionVO());  
		return "addPromotionform";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(PromotionVO vo) {
		if(promotionService.insertPromotion(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!");
		return "redirect:list"; 
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		PromotionVO promotionVO = promotionService.getPromotion(id);
		model.addAttribute("command", promotionVO);
		return "editPromotionform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(PromotionVO vo) {
		if(promotionService.updatePromotion(vo) == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		if(promotionService.deletePromotion(id) == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!");
		return "redirect:../list";
	}
}
