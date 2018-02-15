package common.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import product.dao.ProductDao;
import product.vo.PerfumeVO;

@Controller
@RequestMapping("/common")
public class IndexController {

	@Autowired
	private ProductDao proDAO;
	
	// index.jsp에서 new & best 향수 목록 나타내기
	@RequestMapping("/index.do")
	public ModelAndView index(ModelAndView mv) {
		
		List<PerfumeVO> perNew = proDAO.PerfumeNew();
		List<PerfumeVO> perBest = proDAO.PerfumeBest();
		
		mv.setViewName("/common/index");
		mv.addObject("new", perNew);
		mv.addObject("best", perBest);
		
		return mv;
	}
	
}
