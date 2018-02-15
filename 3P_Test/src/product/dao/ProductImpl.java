package product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import product.vo.PerfumeVO;

@Repository
public class ProductImpl implements ProductDao {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<PerfumeVO> PerfumeNew() {
	// index.jsp에서 향수 new 목록 가져오는 메소드
		
		return ss.selectList("product.perfumeNew");
	}

	@Override
	public List<PerfumeVO> PerfumeBest() {
	// index.jsp에서 향수 best 목록 가져오는 메소드
		
		return ss.selectList("product.perfumeBest");
	}
	
	

}
