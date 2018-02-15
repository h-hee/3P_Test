package product.dao;

import java.util.List;

import product.vo.PerfumeVO;

public interface ProductDao {
	// index.jsp에서 향수 new 목록 가져오는 메소드
	public List<PerfumeVO> PerfumeNew();
	
	// index.jsp에서 향수 best 목록 가져오는 메소드
	public List<PerfumeVO> PerfumeBest();
}
