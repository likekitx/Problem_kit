layui.use(['form','jquery'],function (form,jquery) {
    location.reload ();
    let $ = jquery;
    // let attr = $('.layui-input-block > input:eq(0)').attr('value');
    let index = 0;
    let bo = $('.bodyRegister');
    let $ul = $('ul > li');
    let list = "";

    $ul.mouseover(function (event) {
        // console.log($(this).val())
        $(this).css({
            'font-size':'20px'
        })
    })
    $ul.mouseout(function (event) {
        // console.log($(this).val())
        $(this).css({
            'font-size':'16px'
        })
    })
    $ul.click(function (e) {
        let va = $(this).val();
        bo.eq(index).css({
            'display':'none'
        })
        index = --va;
        bo.eq(va).css({
            'display':'inline'
        })
    })
    $('#cmt').click(function (event) {
        layer.msg('确认提交？',{
            time: 0,
            anim: 4,
            icon: 3,
            shade: [0.4,'#c4d4ff'],
            btn: ['确定'],
            skin: 'layui-demo',
            offset: 'auto',
            yes: function () {
                for (let i = 0; i < 40; i++) {
                    // let val = $('.layui-input-block').eq(i).children('div').children('i').hasClass('layui-anim-scaleSpring');
                    // if(val){
                    //   console.log($('.layui-form-radioed').eq(i).prev().prop('value'));
                    // }
                    if($('.layui-input-block').eq(i).children('div').hasClass('layui-form-radioed')){
                        list+=$('.layui-form-radioed').eq(i).prev().prop('value')+"";
                    }else {
                        list+="Q";
                    }
                }

                $.ajax({
                    url: $('#PageContext').val()+"/cit?pid=commit",
                    type: 'post',
                    dataType: 'json',
                    data: {list:list},
                    success: function (data){
                        layer.msg(data+"分",{
                            time: 0,
                            anim: 4,
                            icon: 6,
                            shade: [0.4,'#c4d4ff'],
                            btn: ['确定'],
                            skin: 'layui-demo',
                            offset: 'auto',
                            yes: function () {
                                setTimeout(location.href = 'http://www.xihang.edu.cn/',0);
                            }
                        });
                    },
                })
            }
        });
        list = "";
    });

    $('.next').click(function (event) {
        bo.eq(index).css({
            'display':'none'
        })
        //让右侧答题卡点亮
        // let val = $('.layui-input-block').eq(index).children('div').children('i').prop("className");
        let val = $('.layui-input-block').eq(index).children('div').children('i').hasClass('layui-anim-scaleSpring');
        if(val){
            $('.layui-form-radioed').prev().prop('checked',true);
            form.render();
            $ul.eq(index).css({
                'background-color':'#3ea6fd',
                'color':'#ffffff'
            })
        }
        index++;
        if(index===40){
            index=0;
        }
        bo.eq(index).css({
            'display':'inline'
        })
    });
    $('#last').click(function (event) {
        bo.eq(index).css({
            'display':'none'
        })
        let val = $('.layui-input-block').eq(index).children('div').children('i').hasClass('layui-anim-scaleSpring');
        if(val){
            $('.layui-form-radioed').next().prop('checked',true);
            form.render();
            $ul.eq(index).css({
                'background-color':'#3ea6fd',
                'color':'#ffffff'
            })
        }
        if(index===0){
            index=40;
        }
        index--
        bo.eq(index).css({
            'display':'inline'
        })
    });
    // $(window).bind('beforeunload',function () {
    //     $.ajax({
    //         url: $('#PageContext').val()+"/cit?pid=close",
    //         type: 'post',
    //         dataType: 'json',
    //         data: {close:"close"}
    //     })
    // })
})