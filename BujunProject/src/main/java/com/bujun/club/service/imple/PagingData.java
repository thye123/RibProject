package com.bujun.club.service.imple;

import java.util.HashMap;
import java.util.List;

import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;

public class PagingData {


	public ClubVo pagdata(HashMap<String, Object> map) {
		
		ClubVo vo = new ClubVo();

		//����¡ ���ó��  ���� 
		//1.���� ������ �κ��� �ҷ��´� 
		int page = Integer.parseInt(String.valueOf(map.get("page")));
		//������ ����� ���� �ʱⰪ 
		vo.setPage(page);
		//������ �׷� ��� 
		int pagegrp=Integer.parseInt(String.valueOf(map.get("pagegrp")));
		//������ �ҷ��ö� ��갪  :  �� ������ ���ڵ� ��� �� 
		int count = (int) map.get("count");

		vo.setCount(count); // ������ ���
		//�� �������� ������ ������ �� 
		int pagecount = 10;
		//��ü ���� ����¡ ����� ���� �κ��� �־��ش� 
		ClubVo pageMaker = vo.calcPage(page, pagecount, count, pagegrp);
		return pageMaker;
	
	}

	public SearchVo getPaging(HashMap<String, Object> map) {
		
		SearchVo pageMaker = new SearchVo();

		//����¡ ���ó��  ���� 
		//1.���� ������ �κ��� �ҷ��´� 
		int page = Integer.parseInt(String.valueOf(map.get("page")));
		//������ ����� ���� �ʱⰪ 
		pageMaker.setPage(page);
		//������ �׷� ��� 
		int pagegrp=Integer.parseInt(String.valueOf(map.get("pagegrp")));
		//������ �ҷ��ö� ��갪  :  �� ������ ���ڵ� ��� �� 
		int count = (int) map.get("count");
		pageMaker.setCount(count); // ������ ���
		//�� �������� ������ ������ �� 
		int pagecount = 10;
		//��ü ���� ����¡ ����� ���� �κ��� �־��ش� 
		SearchVo vo = pageMaker.calcPage(page, pagecount, count, pagegrp);
		
		return vo;
	}
}
