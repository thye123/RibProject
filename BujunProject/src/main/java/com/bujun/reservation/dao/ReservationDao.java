package com.bujun.reservation.dao;

import java.util.HashMap;
import java.util.List;

import com.bujun.reservation.vo.ReservationVo;

public interface ReservationDao {

	public void getInsert(HashMap<String, Object> map);

	public void DelAjax(HashMap<String, Object> map);

	public List<ReservationVo> getClassID(HashMap<String, Object> map);

	public void upReserve(HashMap<String, Object> map);

}
