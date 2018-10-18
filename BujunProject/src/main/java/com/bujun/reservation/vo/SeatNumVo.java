package com.bujun.reservation.vo;

public class SeatNumVo {

	private int seat_num;
	private String area_code;

	
	public String getArea_code() {
		return area_code;
	}

	public void setArea_code(String area_code) {
		this.area_code = area_code;
	}


	public int getSeat_num() {
		return seat_num;
	}

	public void setSeat_num(int seat_num) {
		this.seat_num = seat_num;
	}

	@Override
	public String toString() {
		return "Reservation [seat_num=" + seat_num + ", area_code=" + area_code + "]";
	}

	
	
}
