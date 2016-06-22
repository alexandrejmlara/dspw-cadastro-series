package database;

public class TVShow {
	
	private int code, episodeLength, numberOfEpisodes, currentSeason;
	private String title, category, country;
	
	public TVShow(int code, String title, String category, String country, int episodeLength, int numberOfEpisodes, int currentSeason){
		this.code = code;
		this.title = title;
		this.category = category;
		this.country = country;
		this.episodeLength = episodeLength;
		this.numberOfEpisodes = numberOfEpisodes;
		this.currentSeason = currentSeason;
	}
	
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public int getEpisodeLength() {
		return episodeLength;
	}

	public void setEpisodeLength(int episodeLength) {
		this.episodeLength = episodeLength;
	}

	public int getNumberOfEpisodes() {
		return numberOfEpisodes;
	}

	public void setNumberOfEpisodes(int numberOfEpisodes) {
		this.numberOfEpisodes = numberOfEpisodes;
	}

	public int getCurrentSeason() {
		return currentSeason;
	}

	public void setCurrentSeason(int currentSeason) {
		this.currentSeason = currentSeason;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	
	
}
