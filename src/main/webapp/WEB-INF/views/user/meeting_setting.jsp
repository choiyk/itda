<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />

<section>
	<div class="container">
		<div class="form">
			<form>
				<div class="form-row">
					<div class="form-group center col-lg-12">
						<input type="text" name="meetingName" class="form-control" placeholder="모임명"/>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group center col-lg-12">
						<textarea name="answer" class="form-control" rows="5">모임 설명</textarea>
					</div>
				</div>
				<div>
					<!-- <button class="btn pull-right" data-url="#">모임 폐쇄</button> -->
					<button class="btn pull-right" data-url="#">저장</button>
				</div>
			</form>
		</div>
	</div>
</section>

<div class="margin"></div>
<div class="margin"></div>

<section>
	<div class="container">
		<p class="text-center">회원 목록</p>
		<div id="more-features" class="row">
			<div class="col-lg-12">
				<div class="box" data-url="#">
					<p class="title">201432036 (최윤경)</p>
					<p class="description">소프트웨어공학과 / 여성  / 가입일: 2018.06.10</p>
					<button class="icon" data-url="#">삭제</button>
				</div>
			</div>
		</div>
		<div class="form">
			<form>
				<div class="form-row">
					<div class="form-group col-10">
						<input type="text" class="form-control" placeholder="회원을 검색하세요.">
					</div>
					<div class="form-group col-2">
						<button type="submit" class="btn pull-right">검색</button>
					</div>
				</div>
			</form>
		</div>
		
		<div id="more-features" class="row">
			<div class="col-lg-12">
				<div class="box">
					<div class="comment">
						<div>검색 결과가 없습니다.</div>
					</div>
					<div class="comment">
						<p class="title">201432036 (최윤경)</p>
						<p class="description">소프트웨어공학과 / 여성  / 가입일: 2018.06.10</p>
						<button class="icon" data-url="#">추가</button>
					</div>	
				</div>
			</div>
		</div>
	</div>
</section>
	
