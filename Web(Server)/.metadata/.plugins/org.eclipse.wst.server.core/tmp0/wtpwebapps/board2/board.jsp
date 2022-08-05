<%@page import="com.smhrd.domain.Comm"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//boardNum������ ���� �۾� �ʿ�!
	BoardDAO dao = new BoardDAO();
	int like = dao.getLike(1);
	pageContext.setAttribute("like", like);
	
	List<Comm> commList = (List<Comm>)dao.selectAllComm(1);
	pageContext.setAttribute("list", commList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<button id='like'>���ƿ�</button><span>${like }</span>
    <br>
    <input type="text"><button class='writeCom'>����ۼ�</button>
    <br>
    <div id="com">
    	<c:forEach var="comm" items="${list }">
    		<p><c:out value="${comm.com }"/><button class='removeCom' id='${comm.commentNum }'>����</button></p>
		</c:forEach>
    </div>  
    
    <script>
        $(document).on("click","#like",function(){ 
			$.ajax({
				data : {status : "like", boardNum : 1},
				url : "LikeAjaxCon",
				method : "GET",
				dataType : "text",
				context : this,
				success: function(data){
					$('#like+span').text(data)
					$(this).text('���ƿ� ���')
		            $(this).attr('id','dislike')	
				},
				error: function(){
					alert("��Ž���!")
				}
			})
        });

        $(document).on("click","#dislike",function(){ 
            $.ajax({
				data : {status : "dislike", boardNum : 1},
				url : "LikeAjaxCon",
				method : "GET",
				dataType : "text",
				context : this,
				success: function(data){
						$('#dislike+span').text(data)
			            $(this).text('���ƿ�')
			            $(this).attr('id','like')
				},
				error: function(){
					alert("��Ž���!")
				}
			})
    
        });
        $('.writeCom').click(function(){
            var com = $('input[type=text]').val()
            
            $.ajax({
				data : {boardNum : 1, com : com},
				url : "AddCommentCon",
				method : "POST",
				success: function(data){
					$('#com').prepend('<p>'+com+'<button class="removeCom" id='+data+'>����</button></p>')
		            $('input[type=text]').val("")
				},
				error: function(){
					alert("��Ž���!")
				}
			})    
        })

        $('#com').on("click",".removeCom",function(){ 
        	let commentNum = $(this).attr('id');
            $.ajax({
				data : {commentNum:commentNum},
				url : "DeleteCommentCon",
				method : "post",
				context : this,
				success: function(){
					$(this).parent().remove()
				},
				error: function(){
					alert("��Ž���!")
				}
			}) 
        });
    </script>
</body>
</html>