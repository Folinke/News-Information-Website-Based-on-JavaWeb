package com.news.servlet;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.entity.*;
import com.news.service.*;


public class IndexServlet extends BaseServlet{
	
	
	
	CategoryService cs = new  CategoryService();
	
	
	
	NewsService ns = new NewsService();

	BoardService Boardservice =new BoardService();
	private FankuiService service =new FankuiService();

	CommentsService coms = new CommentsService();
	private UserService UserService =new UserService();

	 public IndexServlet() {
	        super();
	    }









	protected void toFankui(HttpServletRequest request, HttpServletResponse response) throws Exception {//跳转到添加用户界�?
		String p=request.getParameter("p");//接收页码
		String names=request.getParameter("names");//接收页码
		System.out.println(p);
		int pageSize=500;//每页显示5�?
		int pageNum=1; //默认第一�?
		if(p!=null){
			pageNum= Integer.parseInt(p);
		}

		Map map = new HashMap();
		map.put("names", names);
		User user = (User)request.getSession().getAttribute("user");

		//调用分页查询
		List<Fankui> list=service.getFankuiPage(pageNum,pageSize,map);
		for(Fankui data:list){
			data.setUser(UserService.selectUser(data.getUid().toString()));
		}
		request.setAttribute("list",list); //绑定参数
		int nums=service.queryFankuiCount(map); //查询总数
		int totalPage=(nums%pageSize==0)? (nums/pageSize):(nums/pageSize+1);
		request.setAttribute("cp",pageNum); //当前�?
		request.setAttribute("tp",totalPage); //总页�?

		request.getRequestDispatcher("/WEB-INF/views/index/fankui.jsp").forward(request,response); //页面转发
	}


	protected void toBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {//跳转到添加用户界�?
		String p=request.getParameter("p");//接收页码
		String names=request.getParameter("names");//接收页码
		System.out.println(p);
		int pageSize=8;//每页显示5�?
		int pageNum=1; //默认第一�?
		if(p!=null){
			pageNum= Integer.parseInt(p);
		}
		Map map = new HashMap();
		map.put("names", names);
		//调用分页查询
		List<Board> list=Boardservice.getBoardPage(pageNum,pageSize,map);
		request.setAttribute("list",list); //绑定参数
		int nums=Boardservice.queryBoardCount(map); //查询总数
		int totalPage=(nums%pageSize==0)? (nums/pageSize):(nums/pageSize+1);
		request.setAttribute("cp",pageNum); //当前�?
		request.setAttribute("tp",totalPage); //总页�?

		request.getRequestDispatcher("/WEB-INF/views/index/board.jsp").forward(request,response); //页面转发
	}
	
	/**
	 * 去主页面
	 * @param request
	 * @param response
	 */
	 protected void toIndex(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			String type = request.getParameter("type");
			String names = request.getParameter("names");
			Map map = new HashMap();
			map.put("type", type);
			map.put("names", names);

            request.getRequestDispatcher("/WEB-INF/views/index/index.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}  
	}

	protected void toNews(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			List<Category> categoryList = cs.selectList();
			request.setAttribute("categoryList" ,categoryList);
			String p=request.getParameter("p");//接收页码


			int pageSize=6;//每页显示5�?
			int pageNum=1; //默认第一�?
			if(p!=null){
				pageNum= Integer.parseInt(p);
			}
			String nid = request.getParameter("nid");
			String names = request.getParameter("names");
			String type = request.getParameter("type");
			String category = request.getParameter("category");
			Map map = new HashMap();
			map.put("type", type);
			map.put("names", names);
			map.put("category", category);
			map.put("state", 1);
			//调用分页查询
			List<News> newslist=ns.getNewsPage(pageNum,pageSize,map);
			request.setAttribute("newslist",newslist); //绑定参数

			request.setAttribute("newslist2",newslist.size()>3?newslist.subList(0,3):newslist);
			int nums=ns.queryNewsCount(map); //查询总数
			int totalPage=(nums%pageSize==0)? (nums/pageSize):(nums/pageSize+1);
			request.setAttribute("cp",pageNum); //当前�?
			request.setAttribute("tp",totalPage); //总页�?

			request.getRequestDispatcher("/WEB-INF/views/index/news.jsp").forward(request,response); //页面转发
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void toNewsDetail(HttpServletRequest request, HttpServletResponse response) {
		try {
			String nid=request.getParameter("nid");

			String type1=request.getParameter("type1");
			Map map = new HashMap();
			if(type1!=null) {
				map.put("type1", type1);
			}
			map.put("nid", nid);
			List<Comments> commentsList = coms.selectListByNid(nid != null ?Integer.parseInt(nid) : 0);
			request.setAttribute("commentslist",commentsList); //当前�?
			News news1=ns.selectNews(nid);
			Integer seecount=news1.getSee_count()+1;
			ns.updateSeeCount(seecount,Integer.parseInt(nid));
			News news=ns.selectNews(nid);
			request.setAttribute("news",news); //当前�?
			request.getRequestDispatcher("/WEB-INF/views/index/newsdetail.jsp").forward(request,response); //页面转发
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	protected void toBoardDetail(HttpServletRequest request, HttpServletResponse response) {
		try {
			String id=request.getParameter("id");


			Board news1=Boardservice.selectBoard(id);

			request.setAttribute("news",news1); //当前�?
			request.getRequestDispatcher("/WEB-INF/views/index/boarddetail.jsp").forward(request,response); //页面转发
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	/* protected void toNews(HttpServletRequest request, HttpServletResponse response) {
		 try {
			 String nid = request.getParameter("nid");
			 String names = request.getParameter("names");
			 String type = request.getParameter("type");
			 String category = request.getParameter("category");
			 Map map = new HashMap();
			 map.put("type", type);
			 map.put("names", names);
			 map.put("category", category);
			 List<Comments> commentsList = coms.selectListByNid(nid != null ?Integer.parseInt(nid) : 0);
			 List<Category> categoryList = cs.selectList();
			 List<News> newsList = ns.selectList(map);
			 News nn = ns.selectNews(nid == null ? "0":nid );
			 request.setAttribute("newsList", newsList);
			 request.setAttribute("names", names);
			 request.setAttribute("commentsList", commentsList);
			 request.setAttribute("categoryList", categoryList);
			 if( nn != null) {
				 News news = ns.selectNews(nid);
				 ns.updateSeeCount(news.getSee_count()+1, news.getId());
				 request.setAttribute("news", ns.selectNews(news.getId().toString()));
			 }
			 String p=request.getParameter("p");//接收页码
			 int pageSize=6;//每页显示5条
			 int pageNum=1; //默认第一页
			 if(p!=null){
				 pageNum= Integer.parseInt(p);
			 }
			 request.getRequestDispatcher("/WEB-INF/views/index/news.jsp").forward(request, response);
		 }catch(Exception e){
			 e.printStackTrace();
		 }  
	 }*/
}
