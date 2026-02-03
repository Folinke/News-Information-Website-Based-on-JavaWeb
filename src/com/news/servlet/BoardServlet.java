package com.news.servlet;

import com.news.entity.Board;
import com.news.service.BoardService;
import com.news.util.WebUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.*;

public class BoardServlet extends BaseServlet{
	
	private BoardService service =new BoardService();

	 public BoardServlet() {
	        super();
	    }
    private Board fileUpload(HttpServletRequest request) {
        Board Board = new Board();
        try {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> list = upload.parseRequest(request);
            for (FileItem item : list) {
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    String value = item.getString("UTF-8");
                    BeanUtils.setProperty(Board, name, value);
                } else {
                    String name = item.getFieldName();

                    String filename = item.getName();
                    if(filename != null && !filename.equals("")) {
                        String savefilename = makeFileName(filename);
                        String savepath = "D:\\upload\\";
                        InputStream in = item.getInputStream();
                        FileOutputStream out = new FileOutputStream(savepath + "\\" + savefilename);
                        int len = 0;
                        byte buffer[] = new byte[1024];
                        while ((len = in.read(buffer)) > 0) {
                            out.write(buffer, 0, len);
                        }
                        in.close();
                        out.close();
                        item.delete();
                        Board.setImg(savefilename);
                    }
                }
            }
            return Board;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
    private String makeFileName(String filename) {
        String ext = filename.substring(filename.lastIndexOf(".") + 1);
        return UUID.randomUUID().toString() + "." + ext;
    }
	//分页加模糊查询
	protected void BoardList(HttpServletRequest request, HttpServletResponse response) throws Exception {//跳转到添加用户界�?
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
        List<Board> list=service.getBoardPage(pageNum,pageSize,map);
        request.setAttribute("list",list); //绑定参数
        int nums=service.queryBoardCount(map); //查询总数
        int totalPage=(nums%pageSize==0)? (nums/pageSize):(nums/pageSize+1);
        request.setAttribute("cp",pageNum); //当前�?
        request.setAttribute("tp",totalPage); //总页�?

        request.getRequestDispatcher("/WEB-INF/views/board/list.jsp").forward(request,response); //页面转发
	}
	

	
    
    //去新增
    protected void toAddBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
        request.getRequestDispatcher("/WEB-INF/views/board/add.jsp").forward(request,response); //页面转发
    }
    
    //新增
    protected void addBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
        String names = request.getParameter("cname");
    	Board ss = fileUpload(request);
        ss.setCtime(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
    	service.addBoard(ss);
        response.sendRedirect(request.getContextPath()+"/BoardServlet?action=BoardList");//重定向防止重复提交哦
       
    }
    
    
    protected void toUpdateBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
        String id=request.getParameter("id");
        Board Board = service.selectBoard(id);
        request.removeAttribute("msg");
        request.setAttribute("Board" ,Board);
        request.getRequestDispatcher("/WEB-INF/views/board/update.jsp").forward(request,response); //页面转发

    }
    //修改信息
    protected void updateBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
        Board Board =fileUpload(request);
        service.updateBoard(Board);
		 response.sendRedirect(request.getContextPath()+"/BoardServlet?action=BoardList");//重定向防止重复提交哦
    }
    
    //删除
    protected void deleteBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {//条件查询
   	     String id=request.getParameter("id");
	     service.deleteBoard(id);
	     response.sendRedirect(request.getContextPath()+"/BoardServlet?action=BoardList");//重定向防止重复提交哦
   }
    
    
    
}
