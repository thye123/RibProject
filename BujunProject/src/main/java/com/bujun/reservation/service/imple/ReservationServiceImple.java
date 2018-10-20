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
		// TODO Auto-generated method stub
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

}
