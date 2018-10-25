package edu.dmacc.spring.footballroster;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired PlayerDao dao;
	
	private static final String[] grades = {"Freshman", "Sophomore", "Junior", "Senior"};
	
	@RequestMapping(value = "/form")
		public ModelAndView player() {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("pages/playerForm.jsp");
			modelAndView.addObject("player", new Player());
			modelAndView.addObject("grades", grades);
			return modelAndView;
		}

	@RequestMapping(value = "/result")
		public ModelAndView processPlayer(Player player) {
			ModelAndView modelAndView = new ModelAndView();
			dao.insertPlayer(player);
			modelAndView.setViewName("pages/playerResult.jsp");
			modelAndView.addObject("p", player);
			return modelAndView;
		}
	
	@RequestMapping(value = "/viewAll")
		public ModelAndView viewAll() {
			ModelAndView modelAndView = new ModelAndView();
			List<Player> allPlayers = dao.getAllPlayers();
			modelAndView.setViewName("pages/viewAllPlayers.jsp");
			modelAndView.addObject("all", allPlayers);
			return modelAndView;
	}
	
	@Bean
		public PlayerDao dao() {
			PlayerDao bean = new PlayerDao();
			return bean;
		}
}
