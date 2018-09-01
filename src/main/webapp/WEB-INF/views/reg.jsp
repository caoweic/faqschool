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
            <h2 class="page-title">注册</h2>
            <div class="layui-form layui-form-pane">
                <form>
                    <div class="layui-form-item">
                        <label class="layui-form-label">身份</label>
                        <div class="layui-input-block">
                            <input type="radio" name="auth" value="0" title="老师" >
                            <input type="radio" name="auth" value="1" title="学生" checked>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">邮箱</label>
                        <div class="layui-input-inline">
                            <input type="text" id="L_email" lay-verify="email" name="account" required autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">将会成为您唯一的登入名</div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_username" class="layui-form-label">昵称</label>
                        <div class="layui-input-inline">
                            <input type="text" id="L_username" name="name" required lay-verify="username" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_pass" class="layui-form-label">密码</label>
                        <div class="layui-input-inline">
                            <input type="password" id="L_pass" name="pwd" required lay-verify="pass" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">6到12个字符</div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label">确认密码</label>
                        <div class="layui-input-inline">
                            <input type="password" id="L_repass" name="repass" required lay-verify="pass" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <button class="layui-btn" lay-filter="*" lay-submit>立即注册</button>
                        <button class="layui-btn layui-btn-danger" type="reset">重置</button>
                    </div>


                </form>
            </div>
        </div>
        <jsp:include page="layoutbbs/footer.jsp"></jsp:include>
        <script src="../blljs/statistics.js"></script>
        <script src="../Resources/jquery.js"></script>
        <script>
            layui.use(['form', 'layedit', 'laydate'], function() {
                var form = layui.form(),
                    layer = layui.layer,
                    laydate = layui.laydate;

                form.verify({
                    username: function(value, item){ //value：表单的值、item：表单的DOM对象
                        if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
                            return '用户名不能有特殊字符';
                        }
                        if(/(^\_)|(\__)|(\_+$)/.test(value)){
                            return '用户名首尾不能出现下划线\'_\'';
                        }
                        if(/^\d+\d+\d$/.test(value)){
                            return '用户名不能全为数字';
                        }
                    }
                    //我们既支持上述函数式的方式，也支持下述数组的形式
                    //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
                    ,pass: [
                        /^[\S]{6,12}$/
                        ,'密码必须6到12位，且不能出现空格'
                    ]
                });

                //监听提交
                form.on('submit(*)', function(data) {
                    $.post("addUser", data.field,
                        function(obj) {
                            if (obj.Status) {
                                location.href = "login";
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