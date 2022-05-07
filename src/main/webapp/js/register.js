layui.use(['form','jquery'],function (form,jquery) {
    location.reload ()
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
        ],
        name:[
            /^[\u4e00-\u9fa5]{2,5}$/,
            '必须为2~5个汉字'
        ],
        phone:[
            /0?(13|14|15|17|18)[0-9]{9}/,
            '请输入正确的电话号'
        ]
    });
    //监听提交
    form.on('submit',function (data) {
        let field = data.field;
        let sub={
            "account":field.account,
            "name":field.name,
            "password":field.password,
            "phone":field.phone
        }
        $.ajax({
            url: $('#PageContext').val()+"/reg?pid=register",
            type: 'post',
            dataType: 'json',
            data: sub,
            success: function (data){
                if(data===true){
                    layer.msg('注册成功',{
                        icon: 6,
                        offset: 'auto',
                        anim: 4,
                        skin: 'layui-layer-molv'
                    });
                    setTimeout(location.href = $("#PageContext").val()+'/kitten/lg.jsp',2000)
                }else if(data==='notnull') {
                    layer.msg('该账号已注册，无法重新注册，是否跳转到登陆页？',{
                        time: 0,
                        anim: 3,
                        icon: 3,
                        shade: [0.4,'#c4d4ff'],
                        btn: ['是','否'],
                        skin: 'layui-demo',
                        offset: 'auto',
                        yes: function () {
                            layer.msg('跳转成功',{
                                icon: 6,
                                offset: 'auto',
                                anim: 4,
                                skin: 'layui-layer-molv'
                            });
                            setTimeout(location.href = $("#PageContext").val()+'/kitten/lg.jsp',1800);
                        }
                    });
                }
            },
            error : function (data) {
                layer.msg('输入信息不符合规范，请重新输入！', {
                    icon: 2,
                    //弹出位置
                    offset: 'auto',
                })
            }
        })
    })
})