package com.news.service;

import com.news.dao.BoardDao;
import com.news.entity.Board;

import java.util.List;
import java.util.Map;

public class BoardService {
	
	BoardDao dao = new BoardDao();

	public List<Board> getBoardPage(int pageNum, int pageSize,Map map) {
		// TODO Auto-generated method stub
		return dao.getBoardPage(pageNum,pageSize,map);
	}
	
	public List<Board> selectList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	public int queryBoardCount(Map map) {
		// TODO Auto-generated method stub
		return dao.queryBoardCount(map);
	}

	public void addBoard(Board ss) {
		// TODO Auto-generated method stub
		dao.addBoard(ss);
	}

	public Board selectBoard(String id) {
		// TODO Auto-generated method stub
		return dao.selectBoard(id);
	}

	public void updateBoard(Board Board) {
		// TODO Auto-generated method stub
		dao.updateBoard(Board);
	}

	public void deleteBoard(String id) {
		// TODO Auto-generated method stub
		dao.deleteBoard(id);
	}

}
