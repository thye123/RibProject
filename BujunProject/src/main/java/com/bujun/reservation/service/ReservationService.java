package com.bujun.reservation.service;

import java.util.HashMap;
import java.util.List;

import com.bujun.reservation.vo.ReservationVo;

public interface ReservationService {

	public void getInsert(HashMap<String, Object> map);

	public void DelAjax(HashMap<String, Object> map);

	public List<ReservationVo> getClassID(HashMap<String, Object> map);

	public void upReserve(HashMap<String, Object> map);
	
	public List<ReservationVo> cancle(HashMap<String, Object> map);
	
	/*Cancle*/
	public void deleteSet(HashMap<String, Object> map);

	public void outSeat(HashMap<String, Object> map);
	
	/*TimeOut*/
	public void outTime(HashMap<String, Object> map);
	
	//1번인 사람 좌석번호를 들고 온다 
	public  ReservationVo getOnePerson(HashMap<String, Object> map);
}
