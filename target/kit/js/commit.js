layui.use(['form','jquery'],function (form,jquery) {
    let $ = jquery;
    let index = 0;
    let bo = $('.bodyRegister');
    let $ul = $('ul > li');
    let list = "";
    let li = new Array(40);

    for (let i = 0; i <= 40; i++) {
        form.on('radio('+i+')', function (data) {va(data)});
    }

    function va(data) {
        let number = parseInt(data.elem.name);
        console.log(number)
        $ul.eq(number-1).css({
            'background-color':'#3ea6fd',
            'color':'#ffffff'
        })
        li[number-1] = data.elem.value;
        // console.log(li[0])
    }

    $ul.mouseover(function (event) {
        $(this).css({
            'font-size':'20px'
        })
    })
    $ul.mouseout(function (event) {
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
        for (let i = 0; i < 40; i++) {
            if (li[i] === undefined) {
                li[i] = 'E';
            }
        }
        layer.msg('确认提交？',{
            time: 0,
            anim: 4,
            icon: 3,
            shade: [0.4,'#c4d4ff'],
            btn: ['确定'],
            skin: 'layui-demo',
            offset: 'auto',
            yes: function () {
                    // if($('.layui-input-block').eq(i).children('div').hasClass('layui-form-radioed')){
                    //     list+=$('.layui-form-radioed').eq(i).prev().prop('value')+"";
                    // }else {
                    //     list+="Q";
                    // }
                list = li.join('')
                $.ajax({
                    url: $('#PageContext').val()+"/cit?pid=commit",
                    type: 'post',
                    dataType: 'json',
                    data: {list:list},
                    success: function (data){
                        console.log(data)
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
        // let val = $('.layui-input-block').eq(index).children('div').children('i').hasClass('layui-anim-scaleSpring');
        // if(val){
        //     $('.layui-form-radioed').prev().prop('checked',true);
        //     form.render();
        //     $ul.eq(index).css({
        //         'background-color':'#3ea6fd',
        //         'color':'#ffffff'
        //     })
        // }
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
        // let val = $('.layui-input-block').eq(index).children('div').children('i').hasClass('layui-anim-scaleSpring');
        // if(val){
        //     $('.layui-form-radioed').next().prop('checked',true);
        //     form.render();
        //     $ul.eq(index).css({
        //         'background-color':'#3ea6fd',
        //         'color':'#ffffff'
        //     })
        // }
        if(index===0){
            index=40;
        }
        index--
        bo.eq(index).css({
            'display':'inline'
        })
    });
})