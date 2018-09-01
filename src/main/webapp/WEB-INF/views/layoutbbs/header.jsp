<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
    <script src="../Resources/jquery.js"></script>
    <script src="../Resources/layui/layui.js"></script>
    <div class="header">
        <div class="main">
            <div class="nav">
                <a class="nav-this" href="/club/index">
                    <i class="iconfont icon-wenda"></i>问答
                </a>
            </div>

            <div class="nav-user">
                <div id="view"></div>
            </div>
        </div>
    </div>

    <script id="demo" type="text/html">
        {{# if(d.Status){ }}
        <!-- 登入后的状态 -->

        <a class="avatar" href="/user/index?uid={{d.Result.id}}">
        {{# if(d.Result.pic !=""){}}
           <img src="../Resources/fly/images/avatar/{{= d.Result.pic}}">
            {{# } }}
            
            <cite>{{= d.Result.name}}</cite>
            <i>{{# if(d.Result.rmb>0){}}
            Vip{{= d.Result.rmb}}
            {{# } }}</i>
        </a>
        <div class="nav">
            <a href="/user/message"><i class="iconfont icon-qq" style="top: 0; font-size: 22px;"></i>消息</a>
            <a href="/user/logout"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退了</a>
        </div>
        {{# }else{ }}
        <!-- 未登入状态 -->
        <a class="unlogin" href="user/login"><i class="iconfont icon-touxiang"></i></a>
        <span><a href="/user/login">登入</a><a href="/user/reg">注册</a></span>
        {{# } }}
    </script>

    <script src="../blljs/bbsheader.js">
    </script>