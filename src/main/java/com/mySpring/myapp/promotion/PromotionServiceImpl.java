package com.mySpring.myapp.promotion;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PromotionServiceImpl implements PromotionService {

	@Autowired
	PromotionDAO promotionDAO;
	
	@Override
	public void createTablePromotion() {
		promotionDAO.createTablePromotion();
	}

	@Override
	public int insertPromotion(PromotionVO vo) {
		return promotionDAO.insertPromotion(vo);
	}

	@Override
	public int deletePromotion(int seq) {
		return promotionDAO.deletePromotion(seq);
	}

	@Override
	public int updatePromotion(PromotionVO vo) {
		return promotionDAO.updatePromotion(vo);
	}

	@Override
	public PromotionVO getPromotion(int seq) {
		return promotionDAO.getPromotion(seq);
	}

	@Override
	public List<PromotionVO> getPromotionList() {
		return promotionDAO.getPromotionList();
	}

}
