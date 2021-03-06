package com.bujun.reservation.service.imple;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.reservation.dao.ReservationDao;
import com.bujun.reservation.service.ReservationService;
import com.bujun.reservation.vo.ReservationVo;

@Service("ReservationService")
public class ReservationServiceImple implements ReservationService {
	
	@Autowired
	private ReservationDao reservationdao;
	
	@Override
	public void getInsert(HashMap<String, Object> map) {
		reservationdao.getInsert(map);
	}

	@Override
	public void DelAjax(HashMap<String, Object> map) {
		reservationdao.DelAjax(map);
		
	}

	@Override
	public List<ReservationVo> getClassID(HashMap<String, Object> map) {
		List<ReservationVo> res = reservationdao.getClassID(map);
		return res;
	}

	@Override
	public void upReserve(HashMap<String, Object> map) {
		reservationdao.upReserve(map);
	}

	@Override
	public List<ReservationVo> cancle(HashMap<String, Object> map) {
		List<ReservationVo> list = reservationdao.cancle(map);
		return list;
	}

	@Override
	public void deleteSet(HashMap<String, Object> map) {
		reservationdao.deleteSet(map);
		
	}

	@Override
	public void outSeat(HashMap<String, Object> map) {
		reservationdao.outSeat(map);
	}

	@Override
	public void outTime(HashMap<String, Object> map) {
		reservationdao.timeOut(map);
		
	}

	@Override
	public ReservationVo getOnePerson(HashMap<String, Object> map) {
		ReservationVo vo = reservationdao.getOnePerson(map);
		return vo;
	}

	@Override
	public void getDeleteSeat(HashMap<String, Object> map) {
		reservationdao.DeleteSet(map);
	}

}
