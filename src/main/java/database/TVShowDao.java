package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TVShowDao {

	private static final String URL = "jdbc:derby:db;create=true";

	public static void add(int code, String title, String category, String country, int episodeLength, int numberOfEpisodes, int currentSeason) throws SQLException {
		// Open connection to the database.
		Connection conn = DriverManager.getConnection(URL);
//		// Create table, if not created
//		Statement stmt = conn.createStatement();
//	    stmt.executeUpdate("Create table tvshows (code int primary key, title varchar(50), category varchar(30), country varchar(40), episode_length int, number_of_episodes int, current_season int)");
	 
		
		// Execute SQL instruction.
		String sql = "insert into tvshows (code, title, category, country, episode_length, number_of_episodes, current_season) values (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, code);
		pstmt.setString(2, title);
		pstmt.setString(3, category);
		pstmt.setString(4, country);
		pstmt.setInt(5, episodeLength);
		pstmt.setInt(6, numberOfEpisodes);
		pstmt.setInt(7, currentSeason);
		pstmt.executeUpdate();
		
		// Close statement
		pstmt.close();
		
		// Close connection
		conn.close();
	}

	public static void edit(int code, String title, String category, String country, int episodeLength, int numberOfEpisodes, int currentSeason) throws SQLException {
		// Open connection to the database.
		Connection conn = DriverManager.getConnection(URL);
		// Execute SQL statement
		String sql = "update tvshows set title = ?, category = ?, country = ?, episode_length = ?, number_of_episodes = ?, current_season = ? where code = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, category);
		pstmt.setString(3, country);
		pstmt.setInt(4, episodeLength);
		pstmt.setInt(5, numberOfEpisodes);
		pstmt.setInt(6, currentSeason);
		pstmt.setInt(7, code);
		pstmt.executeUpdate();
		// Close statement
		pstmt.close();
		// Close connection
		conn.close();
	}

	public static void delete(int codigo) throws SQLException {
		// Open connection to the database.
		Connection conn = DriverManager.getConnection(URL);
		// Execute SQL statement
		String sql = "delete from tvshows where code = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, codigo);
		pstmt.executeUpdate();
		// Close statement
		pstmt.close();
		// Close connection
		conn.close();
	}
	
	public static List<TVShow> getAllTVShows() throws SQLException {
		// Creating List to be returned
		ArrayList<TVShow> TVShowsList = new ArrayList<TVShow>();
		
		// Open connection to the database.
		Connection conn = DriverManager.getConnection(URL);
		// Execute SQL statement
		String sql = "select * from tvshows";
		Statement stmt = conn.createStatement();
		ResultSet res = stmt.executeQuery(sql);
		while(res.next()){
			int code = res.getInt("code");
			String title = res.getString("title");
			String category = res.getString("category");
			String country = res.getString("country");
			int episodeLength = res.getInt("episode_length");
			int numberOfEpisodes = res.getInt("number_of_episodes");
			int currentSeason = res.getInt("current_season");
			
			TVShow tvshow = new TVShow(code, title, category, country, episodeLength, numberOfEpisodes, currentSeason);
			TVShowsList.add(tvshow);
		}
		// Close results
		res.close();
		// Close statement
		stmt.close();
		// Close connection
		conn.close();
		
		return TVShowsList;
		
	}
}
