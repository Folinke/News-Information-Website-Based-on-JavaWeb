package com.news.dao;

import com.news.entity.Fankui;
import com.news.util.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.util.List;
import java.util.Map;

public class FankuiDao {
	
	private QueryRunner runner=new QueryRunner(C3p0Utils.getDs());


	public List<Fankui> getFankuiPage(int pageNum, int pageSize,Map map) {
		String sql="select * from Fankui  where  1 = 1 ";
		if(map.get("names") != null && !map.get("names").toString().equals("")) {
			sql+=" and cname like  '%"+map.get("names")+"%'";
		}
		if(map.get("uid") != null && !map.get("uid").toString().equals("")) {
			sql+=" and uid =  '"+map.get("uid")+"'";
		}
		sql += " limit ?,? ";
        int startNo=(pageNum-1)*pageSize;
        List<Fankui> list=null;
        try {
            list= runner.query(sql, new BeanListHandler<Fankui>(Fankui.class),new Object[] {startNo,pageSize});//添加实体类的适配器进行类的反�?
            return list;
        } catch (Exception e) {//捕获异常
            throw new RuntimeException(e);//抛出运行异常
        }
	}


	public int queryFankuiCount(Map map) {
		String sql="select count(*) from Fankui where 1 = 1 ";
		if(map.get("names") != null && !map.get("names").toString().equals("")) {
			sql+=" and cname like  '%"+map.get("names")+"%'";
		}
		if(map.get("uid") != null && !map.get("uid").toString().equals("")) {
			sql+=" and uid =  '"+map.get("uid")+"'";
		}
        try {
            Long count =  (Long) runner.query(sql, new ScalarHandler());
            return count.intValue();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
	}


	public void addFankui(Fankui ss) {
		// TODO Auto-generated method stub
		 try {
	            //执行插入sql
	            runner.update("insert into Fankui(uid,title,ctime) values (?,?,?)",
	            		 ss.getUid(),ss.getTitle(),ss.getCtime());
	        } catch (Exception e) {
	            throw new RuntimeException(e);
	        }

	}


	public Fankui selectFankui(String id) {
		try {//
            return runner.query("select * from Fankui where id=?", new BeanHandler<Fankui>(Fankui.class),Integer.parseInt(id));
        } catch (Exception e) {
            throw new RuntimeException(e);//抛出运行异常
        }
	}


	public void updateFankui(Fankui ss) {
		// TODO Auto-generated method stub
		try {
            //执行插入sql
            runner.update("update Fankui set title=? where id=?",
					ss.getTitle(),ss.getId());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
	}


	public void deleteFankui(String id) {
		// TODO Auto-generated method stub
		try {
            //执行插入sql
            runner.update("delete from  Fankui  where id=?",
            		Integer.parseInt(id));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
	}


	public List<Fankui> selectList() {
		String sql="select * from Fankui  ";
        List<Fankui> list=null;
        try {
            list= runner.query(sql, new BeanListHandler<Fankui>(Fankui.class));//添加实体类的适配器进行类的反�?
            return list;
        } catch (Exception e) {//捕获异常
            throw new RuntimeException(e);//抛出运行异常
        }
	}

}
