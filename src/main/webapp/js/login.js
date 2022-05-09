layui.use(['form','jquery'],function (form,jquery) {
    let $ = jquery;
    //自定义验证规则
    form.verify({
        account:[
            /^\d{10}$/
            ,'10位数字'
        ]
        ,password: [
            /^[a-zA-Z0-9_.]{6,16}$/
            ,'6~16位,且只能是字母、数字、下划线、小数点'
        ]
    });
    //监听提交
    form.on('submit',function (data) {
        let field = data.field;
        let sub={
            "account":field.account,
            "password":field.password,
        }
        $.ajax({
            url: $('#PageContext').val()+"/log?pid=user",
            type: 'post',
            dataType: 'json',
            data: sub,
            success: function (data){
                if(data==='same'){
                    layer.msg('请登陆刚才注册时填写的账号！',{
                        anim: 3,
                        offset: 'auto',
                        skin: 'layui-layer-molv',
                    });
                }else if(data==='null'){
                    layer.msg('账号或密码错误',{
                        anim: 2,
                        offset: 'auto',
                        skin: 'layui-layer-molv',
                    });
                }else {
                    layer.msg('登陆成功',{
                        icon: 6,
                        offset: 'auto',
                        anim: 4,
                        skin: 'layui-layer-molv'
                    });
                    sessionStorage.obj = JSON.stringify(data);
                    setTimeout(location.href = $("#PageContext").val()+'/kitten/cit.jsp',2000)
                }
            },
            error : function (data) {
                layer.msg('密码错误，请重新登陆！', {
                    icon: 2,
                    //弹出位置
                    offset: 'auto',
                })
            }
        })
    })
})