package com.bujun.reservation.service;

import java.util.HashMap;
import java.util.List;

import com.bujun.reservation.vo.ReservationVo;

public interface ReservationService {

	public void getInsert(HashMap<String, Object> map);

	public void DelAjax(HashMap<String, Object> map);

	public List<ReservationVo> getClassID(HashMap<String, Object> map);

}
