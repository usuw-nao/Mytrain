package domain;

public class Schedule {
	private Integer year;
	private Integer month;
	private Integer[][] calenderMatrix = new Integer[6][7];
	private Integer startDay;
	private Integer lastDate;

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getMonth() {
		return month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getStartDay() {
		return startDay;
	}

	public void setStartDay(Integer startDay) {
		this.startDay = startDay;
	}

	public Integer getLastDate() {
		return lastDate;
	}

	public void setLastDate(Integer lastDate) {
		this.lastDate = lastDate;
	}

}
