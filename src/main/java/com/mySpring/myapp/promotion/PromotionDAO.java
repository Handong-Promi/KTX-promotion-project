package com.mySpring.myapp.promotion;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mySpring.myapp.promotion.PromotionVO;

@Repository
public class PromotionDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public void createTablePromotion() {
		sqlSession.update("Promotion.createTablePromotion");
	}
	
	public int insertPromotion(PromotionVO vo) {
		int result = sqlSession.insert("Promotion.insertPromotion", vo);
		return result;
	}
	
	public int updatePromotion(PromotionVO vo) {
		int result = sqlSession.update("Promotion.updatePromotion", vo);
		return result;
	}
	
	public int deletePromotion(int seq) {
		int result = sqlSession.delete("Promotion.deletePromotion", seq);
		return result;
	}
	
	public PromotionVO getPromotion(int seq) {
		return sqlSession.selectOne("Promotion.getPromotion", seq);
	}
	
	public List<PromotionVO> getPromotionList(){
		return sqlSession.selectList("Promotion.getPromotionList");
	}
}
