package com.mySpring.myapp.promotion;

import java.util.List;
import com.mySpring.myapp.promotion.PromotionVO;

public interface PromotionService {
	
	public void createTablePromotion();
	public int insertPromotion(PromotionVO vo);
	public int deletePromotion(int seq);
	public int updatePromotion(PromotionVO vo);
	public PromotionVO getPromotion(int seq);
	public List<PromotionVO> getPromotionList();
	
}

