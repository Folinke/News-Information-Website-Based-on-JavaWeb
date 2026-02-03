package com.news.servlet;

import com.news.entity.Fankui;
import com.news.entity.User;
import com.news.service.FankuiService;
import com.news.service.UserService;
import com.news.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FankuiServlet extends BaseServlet{
    private UserService UserService =new UserService();
	private FankuiService service =new FankuiService();

	 public FankuiServlet() {
	        super();
	    }
	 
	//分页加模糊查询
	protected void FankuiList(HttpServletRequest request, HttpServletResponse response) throws Exception {//跳转到添加用户界�?
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
        User user = (User)request.getSession().getAttribute("user");
        if(user!=null){
            map.put("uid", user.getId());
        }
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

        request.getRequestDispatcher("/WEB-INF/views/fankui/list.jsp").forward(request,response); //页面转发
	}
	

	
    
    //去新增
    protected void toAddFankui(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
        request.getRequestDispatcher("/WEB-INF/views/fankui/add.jsp").forward(request,response); //页面转发
    }
    
    //新增
        protected void addFankui(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询

        Fankui Fankui = new Fankui();
        String title = request.getParameter("titles");
        Fankui.setTitle(title);
        System.out.println("111111111111111"+title);
        Fankui.setCtime(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
        User user = (User)request.getSession().getAttribute("user");
Fankui.setUid(user.getId());
        service.addFankui(Fankui);
        response.sendRedirect(request.getContextPath()+"/FankuiServlet?action=FankuiList");//重定向防止重复提交哦
       
    }

    protected void addFankuiIndex(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
        Fankui Fankui = new Fankui();
        String title = request.getParameter("titles");
        Fankui.setTitle(title);
        Fankui.setCtime(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
        User user = (User)request.getSession().getAttribute("user");
        Fankui.setUid(user.getId());
        service.addFankui(Fankui);
        response.sendRedirect(request.getContextPath()+"/IndexServlet?action=toFankui");//重定向防止重复提交哦
    }

    protected void toUpdateFankui(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
        String id=request.getParameter("id");
        Fankui Fankui = service.selectFankui(id);
        request.removeAttribute("msg");
        request.setAttribute("Fankui" ,Fankui);
        request.getRequestDispatcher("/WEB-INF/views/fankui/update.jsp").forward(request,response); //页面转发

    }
    //修改信息
    protected void updateFankui(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
        Fankui Fankui = WebUtils.toBean(request.getParameterMap(), Fankui.class);
        service.updateFankui(Fankui);
		 response.sendRedirect(request.getContextPath()+"/FankuiServlet?action=FankuiList");//重定向防止重复提交哦
    }
    
    //删除
    protected void deleteFankui(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
   	     String id=request.getParameter("id");
	     service.deleteFankui(id);
	     response.sendRedirect(request.getContextPath()+"/FankuiServlet?action=FankuiList");//重定向防止重复提交哦
   }
    
    
    
}
