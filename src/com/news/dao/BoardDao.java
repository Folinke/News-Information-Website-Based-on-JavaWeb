package com.news.dao;

import com.news.entity.Board;
import com.news.util.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.util.List;
import java.util.Map;

public class BoardDao {
	
	private QueryRunner runner=new QueryRunner(C3p0Utils.getDs());


	public List<Board> getBoardPage(int pageNum, int pageSize,Map map) {
		String sql="select * from Board  where  1 = 1 ";
		if(map.get("names") != null && !map.get("names").toString().equals("")) {
			sql+=" and title like  '%"+map.get("names")+"%'";
		}
		sql += " limit ?,? ";
        int startNo=(pageNum-1)*pageSize;
        List<Board> list=null;
        try {
            list= runner.query(sql, new BeanListHandler<Board>(Board.class),new Object[] {startNo,pageSize});//添加实体类的适配器进行类的反�?
            return list;
        } catch (Exception e) {//捕获异常
            throw new RuntimeException(e);//抛出运行异常
        }
	}


	public int queryBoardCount(Map map) {
		String sql="select count(*) from Board where 1 = 1 ";
		if(map.get("names") != null && !map.get("names").toString().equals("")) {
			sql+=" and title like  '%"+map.get("names")+"%'";
		}
        try {
            Long count =  (Long) runner.query(sql, new ScalarHandler());
            return count.intValue();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
	}


	public void addBoard(Board ss) {
		// TODO Auto-generated method stub
		 try {
	            //执行插入sql
	            runner.update("insert into Board(img,title,ctime,detail) values (?,?,?,?)",
	            		 ss.getImg(),ss.getTitle(),ss.getCtime(),ss.getDetail());
	        } catch (Exception e) {
	            throw new RuntimeException(e);
	        }

	}


	public Board selectBoard(String id) {
		try {//
            return runner.query("select * from Board where id=?", new BeanHandler<Board>(Board.class),Integer.parseInt(id));
        } catch (Exception e) {
            throw new RuntimeException(e);//抛出运行异常
        }
	}


	public void updateBoard(Board ss) {
		// TODO Auto-generated method stub
		try {
            //执行插入sql
            runner.update("update Board set img=?,title=?,detail=? where id=?",
					ss.getImg(),ss.getTitle(),ss.getDetail(),ss.getId());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
	}


	public void deleteBoard(String id) {
		// TODO Auto-generated method stub
		try {
            //执行插入sql
            runner.update("delete from  Board  where id=?",
            		Integer.parseInt(id));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
	}


	public List<Board> selectList() {
		String sql="select * from Board  ";
        List<Board> list=null;
        try {
            list= runner.query(sql, new BeanListHandler<Board>(Board.class));//添加实体类的适配器进行类的反�?
            return list;
        } catch (Exception e) {//捕获异常
            throw new RuntimeException(e);//抛出运行异常
        }
	}

}
