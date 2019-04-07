<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="header">
   <div class="container-fluid">
       <div class="row">
           <div class="col-lg-12">
               <div class="float-left">
                   <div class="hamburger sidebar-toggle">
                       <span class="line"></span>
                       <span class="line"></span>
                       <span class="line"></span>
                   </div>
               </div>
               <div class="float-right">
                   <div class="dropdown dib">
                       <div class="header-icon" data-toggle="dropdown">
                           <i class="ti-bell"></i>
                           <div class="drop-down dropdown-menu dropdown-menu-right">
                               <div class="dropdown-content-heading">
                                   <span class="text-left">Recent Notifications</span>
                               </div>
                               <div class="dropdown-content-body">
                                   <ul>
                                       <li>
                                           <a href="#">
                                               <img class="pull-left m-r-10 avatar-img" src="${pageContext.request.contextPath}/resources/assets/images/avatar/3.jpg" alt="" />
                                               <div class="notification-content">
                                                   <small class="notification-timestamp pull-right">02:34 PM</small>
                                                   <div class="notification-heading">Dean</div>
                                                   <div class="notification-text">5 members joined today </div>
                                               </div>
                                           </a>
                                       </li>
                                       <li class="text-center">
                                           <a href="#" class="more-link">See All</a>
                                       </li>
                                   </ul>
                               </div>
                           </div>
                       </div>
                   </div>
                    <div class="dropdown dib">
                        <div class="header-icon" data-toggle="dropdown">
                            <span class="user-avatar">Dean
                                <i class="ti-angle-down f-s-10"></i>
                            </span>
                            <div class="drop-down dropdown-profile dropdown-menu dropdown-menu-right">
                                <div class="dropdown-content-heading">
                                    <span class="text-left">Upgrade Now</span>
                                    <p class="trial-day">30 Days Trail</p>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="#">
                                                <i class="ti-user"></i>
                                                <span>Profile</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="ti-power-off"></i>
                                                <span>Logout</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>