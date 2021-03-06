<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<style> .error {color:red;} </style>
<c:url var="R" value="/" />

<section id="content">
	<div class="container">
		<p class="article-inf">${article.userName } / ${article.date }</p>
		<p class="article-category">${article.cateName }</p>
		<div class="form">
			<div class="form-row">
				<div class="form-group col-lg-12">
					<div class="form-control">${article.title }</div>
				</div>
				<div class="form-group col-lg-12">
					<div class="form-control article-content">
						${article.content }
					</div>
				</div>
			</div>
		</div>
		<div>
			<button class="btn pull-left" data-url="meeting?id=${id}">목록으로</button>
			<c:if test="${article.writer==user.id }">
			<button class="btn pull-right" onclick="my_confirm('${R}article_delete?bd=${article.boardId}&at=${article.id}','삭제하시겠습니까?')">삭제</button>
			<button class="btn pull-right" data-url="${R}article_edit?bd=${article.boardId}&at=${article.id }">수정</button>
			</c:if>
		</div>
	</div>
	<div class="margin"></div>
</section>

<section>
	<div class="container">
		<div id="more-features" class="row">
			<div class="col-lg-12">
				<div class="box">
				
				<c:if test="${empty comments }">
					<div class="comment">
						<div>등록된 댓글이 없습니다.</div>
					</div>
				</c:if>
				
				<c:if test="${!empty comments }">
				<c:forEach var="comment" items="${comments}" varStatus="status">
					<c:if test="${ comment.writer != user.id}">
					<div class="comment">
						<p class="description">${comment.wNickname } / ${comment.date }</p>
						<div>${comment.content }</div>
					</div>	
					</c:if>
					<c:if test="${ comment.writer == user.id}">
					<div class="my comment">
						<i class="ion-close-round pull-right" onclick="my_confirm('${R}comment_delete?bd=${article.boardId}&at=${article.id}&ct=${comment.id }','삭제하시겠습니까?')"></i>
						<i onclick="comment_rewrite_btn(${status.count})" class="comment_rewrite_btn ion-android-create pull-right"></i>
						<p class="description">${comment.wNickname } / ${comment.date }</p>
						<div id="comment_content_${status.count}">${comment.content }</div>
						<div id="comment_rewrite_${status.count}" class="comment_rewrite form">
							<form:form method="post" modelAttribute="commentRegistrationModel" action="comment_edit?bd=${article.boardId}&at=${article.id }&cm=${comment.id }">
								<div class="form-row">
									<div class="form-group col-10">
										<form:input path="content" type="text" class="form-control" value="${comment.content }"/>
										<form:errors path="content" class="error"/>
									</div>
									<div class="form-group col-2">
										<button type="submit" class="btn pull-right">수정</button>
									</div>
								</div>
							</form:form>
						</div>
					</div>
					</c:if>
				</c:forEach>
				</c:if>
					
					<div class="form">
						<form:form method="post" modelAttribute="commentRegistrationModel" action="article?bd=${article.boardId}&at=${article.id }">
							<div class="form-row">
								<div class="form-group col-10">
									<form:input path="content" type="text" class="form-control" placeholder="댓글을 입력하세요."/>
									<form:errors path="content" class="error"/>
								</div>
								<div class="form-group col-2">
									<button type="submit" class="btn pull-right">등록</button>
								</div>
							</div>
						</form:form>
					</div>
	
				</div>
			</div>
		</div>
	</div>
</section>
