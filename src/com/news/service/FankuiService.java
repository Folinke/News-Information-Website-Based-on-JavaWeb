package com.news.service;

import com.news.dao.FankuiDao;
import com.news.entity.Fankui;

import java.util.List;
import java.util.Map;

public class FankuiService {
	
	FankuiDao dao = new FankuiDao();

	public List<Fankui> getFankuiPage(int pageNum, int pageSize,Map map) {
		// TODO Auto-generated method stub
		return dao.getFankuiPage(pageNum,pageSize,map);
	}
	
	public List<Fankui> selectList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	public int queryFankuiCount(Map map) {
		// TODO Auto-generated method stub
		return dao.queryFankuiCount(map);
	}

	public void addFankui(Fankui ss) {
		// TODO Auto-generated method stub
		dao.addFankui(ss);
	}

	public Fankui selectFankui(String id) {
		// TODO Auto-generated method stub
		return dao.selectFankui(id);
	}

	public void updateFankui(Fankui Fankui) {
		// TODO Auto-generated method stub
		dao.updateFankui(Fankui);
	}

	public void deleteFankui(String id) {
		// TODO Auto-generated method stub
		dao.deleteFankui(id);
	}

}
