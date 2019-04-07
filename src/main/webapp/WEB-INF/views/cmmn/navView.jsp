<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
    <div class="nano">
        <div class="nano-content">
            <ul>
                <div class="logo"><a href="index.html"><!-- <img src="${pageContext.request.contextPath}/resources/assets/images/logo.png" alt="" /> --><span>LOGO</span></a></div>
                <li class="label">Main</li>
                <li><a class="sidebar-sub-toggle"><i class="ti-home"></i>Dashboard</a></li>
                
                <li class="label">Solr</li>
                
                <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid4-alt"></i>Board<span class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="/boardList">Basic</a></li>
                        <li><a href="#">Statistics</a></li>
                    </ul>
                </li>
                <li><a><i class="ti-close"></i> Logout</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- /# sidebar -->