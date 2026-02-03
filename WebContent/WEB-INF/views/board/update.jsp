
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:include page="/WEB-INF/common/form_header.jsp"/>
<body>

 
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">修改公告信息</div>
          <div class="layui-card-body">
             <form action="BoardServlet?action=updateBoard"  method="post" id="registerForm" enctype="multipart/form-data"  name="registerForm" class="layui-form">
             	<input name="id" id="id" value="${Board.id }"  type = "hidden" />
                 <input type="hidden" name="img" value="${Board.img }">

                 <div class="layui-form-item">
                <label class="layui-form-label">标题:</label>
                <div class="layui-input-inline">
				<input name="title" id="title" value="${Board.title }" class="layui-input" />
                </div>
              </div>






                 <div class="layui-form-item">
                <label class="layui-form-label">上传图片:</label>
                <div class="layui-input-inline">
                    <input type="file" name="img" id="img"   class="layui-input"  />
                </div>
               </div>
                   <div class="layui-form-item">
                     <label class="layui-form-label">图片展示:</label>
                        <div class="layui-input-inline">
                            <img src="/images/${Board.img}" id="preview_img" width="350px" height="200px" alt="">
                        </div>
               </div>

                 <div class="layui-form-item">
                     <label class="layui-form-label">内容详情</label>
                     <div class="layui-input-inline">
                         <script id="container" name="detail" type="text/plain">${Board.detail}</script>
                     </div>
                 </div>
              
              <br>
                <div class="layui-form-item">
                <div class="layui-input-block">
                  <button class="layui-btn" type="submit" id="sub_btn">修改</button>
                    <c:if test="${flag ==  '2' }">
                           <a href="BoardServlet?action=toUpdateBoard&id=${Board.id }" class="layui-btn layui-btn-primary" >重置</a>
	                     </c:if>
	                     
	                      <c:if test="${flag ==  '1' }">
	                        <a href="BoardServlet?action=BoardList" class="layui-btn layui-btn-primary" >返回</a>
	                     </c:if>
                 
                </div>
              </div>  
              </form>
            </div>
            
          </div>
        </div>
      </div>
    </div>
		

<script src="layui/layui.js"></script>
<script src="layui/jquery-1.9.1.min.js"></script>
  <script src="js/ueditor/ueditor.config.js"></script>
  <script src="js/ueditor/ueditor.all.min.js"></script>
  <script src="js/ueditor/lang/zh-cn/zh-cn.js"></script>
  <script type="text/javascript">
      var ue = UE.getEditor('container',{
          initialFrameWidth:1000,
          //   initialFrameHeight:400,
      });
  </script>
<script>

layui.use([ 'form','jquery','layer','laydate' ], function() {
	var form = layui.form,
	 layer = layui.layer,
	 laydate=layui.laydate,
	 $= layui.jquery;
	 form.render();//这句一定要加，占坑
	 
	 laydate.render({
		    elem: '#birthady'
		  });
	 
	 laydate.render({
		    elem: '#over_date'
		  });
	 
	 $(function () {
		    // 给注册绑定单击事件i
		    $("#sub_btn").click(function () {
		    });
		    setTimeout(function(){ $("#errorMsg").html("")},3000);
	});
	 setTimeout(function(){ $("#msg3").html("")},3000);
	 $("#img").change(function () {
		    //创建blob对象，浏览器将文件放入内存中，并生成标识
		    var img_src = URL.createObjectURL($(this)[0].files[0]);
		    //给img标检的src赋值
		    document.getElementById("preview_img").src=img_src;
		    //URL.revokeObjectURL(img_src);// 手动 回收，
		});
});
</script>
</body>
</html>