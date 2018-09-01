<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>JavaEE师生互助平台</title>
        <link rel="stylesheet" href="../Resources/layui/css/layui.css">
        <link rel="stylesheet" href="../Resources/fly/css/global.css">
          <script src="../Resources/layui/layui.js"></script>
    </head>

    <body>

        <jsp:include page="layoutbbs/header.jsp"></jsp:include>

        <div class="main layui-clear">
            <h2 class="page-title">登入</h2>
            <div class="layui-form layui-form-pane">
                <form method="post">
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">邮箱</label>
                        <div class="layui-input-inline">
                            <input type="text" id="L_email" name="account"  required lay-verify="mail" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_pass" class="layui-form-label">密码</label>
                        <div class="layui-input-inline">
                            <input type="password" id="L_pass" name="pwd" required  lay-verify="pass" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <button class="layui-btn" lay-filter="*" lay-submit>立即登录</button>
                        <button class="layui-btn layui-btn-danger" type="reset">重置</button>
                        <span style="padding-left:20px;">

        </span>
                    </div>

                </form>
            </div>
        </div>
        <jsp:include page="layoutbbs/footer.jsp"></jsp:include>
        <script src="../blljs/statistics.js"></script>
      
        <script>
            layui.use(['form', 'layedit', 'laydate'], function() {
                var form = layui.form(),
                    layer = layui.layer,
                    laydate = layui.laydate;

                form.verify({
                    username: function(value, item){ //value：表单的值、item：表单的DOM对象
                        if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
                            return '请输入正确的用户名';
                        }
                        if(/(^\_)|(\__)|(\_+$)/.test(value)){
                            return '请输入正确的用户名\'_\'';
                        }
                        if(/^\d+\d+\d$/.test(value)){
                            return '请输入正确的用户名';
                        }
                    }
                    //我们既支持上述函数式的方式，也支持下述数组的形式
                    //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
                    ,pass: [
                        /^[\S]{6,12}$/
                        ,'请输入正确的密码'
                    ]
                });

                //监听提交
                form.on('submit(*)', function(data) {
                    $.post("/user/check", data.field,
                        function(obj) {
                            if (obj.Status) {
                                location.href = "../club/index";
                            } else {
                                layer.msg(obj.Message);
                            }
                        }, "json");
                    return false;
                });
            });
        </script>
    </body>
</html>