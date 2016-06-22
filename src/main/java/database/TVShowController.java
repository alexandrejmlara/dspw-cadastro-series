package database;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("")
public class TVShowController extends HttpServlet {
	
	private String value(HttpServletRequest req, String param, String defaultValue) {
		String result = req.getParameter(param);
		if (result == null) {
			result = defaultValue;
		}
		return result;
	}

	private int toInt(HttpServletRequest req, String param, String defaultValue) {
		return Integer.parseInt(value(req, param, defaultValue));
	}
	
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		try {
//			req.setAttribute("list", TVShowDao.getAllTVShows());
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		req.getRequestDispatcher("TVShowView.jsp").forward(req, resp);
//	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String msg;
			String op = value(req, "operation", "");
			int code = toInt(req, "code", "0");
			String title = value(req, "title", "");
			String category = value(req, "category", "");
			String country = value(req, "country", "");
			int episodeLength = toInt(req, "episode-length", "0");
			int numberOfEpisodes = toInt(req, "episodes", "0");
			int currentSeason = toInt(req, "current-season", "0");
			if (op.equals("add")) {
				TVShowDao.add(code, title, category, country, episodeLength, numberOfEpisodes, currentSeason);
				msg = "Inclusão realizada com sucesso.";
			} else if (op.equals("edit")) {
				TVShowDao.edit(code, title, category, country, episodeLength, numberOfEpisodes, currentSeason);
				msg = "Alteração realizada com sucesso.";
			} else if (op.equals("delete")) {
				TVShowDao.delete(code);
				msg = "Exclusão realizada com sucesso.";
			} else if (op.equals("")) {
				msg = "";
			} else {
				throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
			}
			msg = "<h1>" + msg + "</h1";
			req.setAttribute("list", TVShowDao.getAllTVShows());
			req.getRequestDispatcher("TVShowView.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace(resp.getWriter());
		}
	}
}
