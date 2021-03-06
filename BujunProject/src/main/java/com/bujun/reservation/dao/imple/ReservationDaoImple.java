package com.bujun.reservation.dao.imple;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.reservation.dao.ReservationDao;
import com.bujun.reservation.vo.ReservationVo;

@Repository("ReservationDao")
public class ReservationDaoImple implements ReservationDao {

	@Autowired
	private SqlSession sqlsession;

	@Override
	public void getInsert(HashMap<String, Object> map) {
		sqlsession.insert("Reservation.upapply",map);
	}

	@Override
	public void DelAjax(HashMap<String, Object> map) {
		sqlsession.delete("Reservation.ajaxDel",map);
		
	}

	@Override
	public List<ReservationVo> getClassID(HashMap<String, Object> map) {
		sqlsession.selectList("Reservation.seatCode" ,map);
		List<ReservationVo> list = (List<ReservationVo>) map.get("param");
		return list;
	}

	@Override
	public void upReserve(HashMap<String, Object> map) {
		sqlsession.update("Reservation.upReserve", map);
	}
	
	
	@Override
	public List<ReservationVo> cancle(HashMap<String, Object>map){
		sqlsession.selectList("Reservation.canReserve",map);
		List<ReservationVo>list= (List<ReservationVo>) map.get("result");
		return list;
	}

	@Override
	public void deleteSet(HashMap<String, Object> map) {
		sqlsession.delete("Reservation.delseat",map);
		
	}

	@Override
	public void outSeat(HashMap<String, Object> map) {
		sqlsession.delete("Reservation.outSeat", map);
	}

	@Override
	public void timeOut(HashMap<String, Object> map) {
		sqlsession.selectList("Reservation.timeout",map);
		List<ReservationVo> list= (List<ReservationVo>) map.get("result");
		//System.out.println("list" +list.toString());
		
	}

	@Override
	public ReservationVo getOnePerson(HashMap<String, Object> map) {
		
		ReservationVo vo =sqlsession.selectOne("Reservation.oneperson",map);
		
		return vo;
	}

	@Override
	public void DeleteSet(HashMap<String, Object> map) {
		System.out.println("map:" + map);
		sqlsession.delete("Reservation.timeout",map);
	}
}
