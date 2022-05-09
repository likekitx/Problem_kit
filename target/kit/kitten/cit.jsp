<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="referrer" content="no-referrer">
    <title>试题</title>
    <link href="${pageContext.request.contextPath}/static/css/layui.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/in.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/commit.css" rel="stylesheet"/>
</head>
<body>
<div class="outer">
    <input id="PageContext" type="hidden" value="${pageContext.request.contextPath}"/>
    <header>
        <div class="headIcon">
            智能创新协会
        </div>
    </header>
    <div class="bodyDiv">
        <div class="bodyTop">
            答题区域
        </div>
        <form class="layui-form">
            <div class="bodyRegister">
                <div class="panel">1、 JAVA所定义的版本中不包括:</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="1" name="1" value="A" title="JAVA2 EE"/>
                        <input type="radio" lay-filter="1" name="1" value="B" title="JAVA2 Card"/>
                        <input type="radio" lay-filter="1" name="1" value="C" title="JAVA2 ME"/>
                        <input type="radio" lay-filter="1" name="1" value="D" title="JAVA2 HE"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">2、下列说法正确的是:</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="2" name="2" value="A" title="JAVA程序的 main 方法必须写在类里面"/>
                        <input type="radio" lay-filter="2" name="2" value="B" title="JAVA程序中可以有多个 main 方法"/>
                        <input type="radio" lay-filter="2" name="2" value="C" title="JAVA程序中类名必须与文件名一样"/>
                        <input type="radio" lay-filter="2" name="2" value="D" title="JAVA程序的 main 方法中如果只有一条语句，可以不用 {}括起来"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">3、下列javaDoc注释正确的是:</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="3" name="3" value="A" title="/∗我爱北京天安门∗/"/>
                        <input type="radio" lay-filter="3" name="3" value="B" title="//我爱北京天安门∗/"/>
                        <input type="radio" lay-filter="3" name="3" value="C" title="/**我爱北京天安门*/"/>
                        <input type="radio" lay-filter="3" name="3" value="D" title="/∗我爱北京天安门∗∗/"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">4、为一个boolean类型变量赋值时，可以使用哪种方式</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="4" name="4" value="A" title="boolean=1 ;"/>
                        <input type="radio" lay-filter="4" name="4" value="B" title="boolean = ( 9 > = 10 ) ;"/>
                        <input type="radio" lay-filter="4" name="4" value="C" title="boolean = ’真‘ ;"/>
                        <input type="radio" lay-filter="4" name="4" value="D" title="boolean == false;"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">5、哪个表达式不可以作为循环条件</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="5" name="5" value="A" title="i++;"/>
                        <input type="radio" lay-filter="5" name="5" value="B" title="i>5;"/>
                        <input type="radio" lay-filter="5" name="5" value="C" title="bEqual = str.equals(“q”);"/>
                        <input type="radio" lay-filter="5" name="5" value="D" title="count == i;"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">6、下列值不为 true 的表达式有</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="6" name="6" value="A" title="“john” == “john”"/>
                        <input type="radio" lay-filter="6" name="6" value="B" title="“john”.equals(“john”)"/>
                        <input type="radio" lay-filter="6" name="6" value="C" title="“john” = “john”"/>
                        <input type="radio" lay-filter="6" name="6" value="D" title="“john”.equals(new String(“john”))"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">7、下面有关 for 循环的描述正确的是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="7" name="7" value="A" title="for 循环体语句中，可以包含多条语句，但要用大括号括起来"/>
                        <input type="radio" lay-filter="7" name="7" value="B" title=" for 循环只能用于循环次数已经确定的情况"/>
                        <input type="radio" lay-filter="7" name="7" value="C" title="在 for 循环中，不能使用 break 语句跳出循环"/>
                        <input type="radio" lay-filter="7" name="7" value="D" title="for 循环体语句中，可以包含多条语句，但要用大括号括起来"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">8、对象的特征在类中表示为变量，称为类的</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="8" name="8" value="A" title="对象"/>
                        <input type="radio" lay-filter="8" name="8" value="B" title="属性"/>
                        <input type="radio" lay-filter="8" name="8" value="C" title="方法"/>
                        <input type="radio" lay-filter="8" name="8" value="D" title="数据类型"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">9、在 java中下列关于自动类型转换说法正确的是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="9" name="9" value="A" title="基本数据类型和 String相加结果一定是字符串型"/>
                        <input type="radio" lay-filter="9" name="9" value="B" title="char 类型和 int 类型相加结果一定是字符"/>
                        <input type="radio" lay-filter="9" name="9" value="C" title="double 类型可以自动转换为 int"/>
                        <input type="radio" lay-filter="9" name="9" value="D" title="char + int + double +'' 结果一定是 double;"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">10、以下哪个代码，能够对数组正确初始化</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="10" name="10" value="A" title="int[] a;"/>
                        <input type="radio" lay-filter="10" name="10" value="B" title="a = {1, 2, 3, 4, 5};"/>
                        <input type="radio" lay-filter="10" name="10" value="C" title="int[] a = new int[5]{1, 2, 3, 4, 5};"/>
                        <input type="radio" lay-filter="10" name="10" value="D" title="int[] a = new int[5];"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">11、下面哪些是对称加密算法</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="11" name="11" value="A" title="DES"/>
                        <input type="radio" lay-filter="11" name="11" value="B" title="MD5"/>
                        <input type="radio" lay-filter="11" name="11" value="C" title="DSA"/>
                        <input type="radio" lay-filter="11" name="11" value="D" title="RSA"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">12、下列哪一种叙述是正确的</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="12" name="12" value="A" title="abstract修饰符可修饰字段、方法和类"/>
                        <input type="radio" lay-filter="12" name="12" value="B" title="抽象方法的body部分必须用一对大括号｛｝包住"/>
                        <input type="radio" lay-filter="12" name="12" value="C" title="声明抽象方法，大括号可有可无"/>
                        <input type="radio" lay-filter="12" name="12" value="D" title="声明抽象方法不可写出大括号"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">13、下列语句正确的是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="13" name="13" value="A" title="形式参数可被视为local variable"/>
                        <input type="radio" lay-filter="13" name="13" value="B" title="形式参数可被字段修饰符修饰"/>
                        <input type="radio" lay-filter="13" name="13" value="C" title="形式参数为方法被调用时，真正被传递的参数"/>
                        <input type="radio" lay-filter="13" name="13" value="D" title="形式参数不可以是对象"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">14、有一段java应用程序，它的主类名是al，那么保存它的源文件可以是？</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="14" name="14" value="A" title="al.java"/>
                        <input type="radio" lay-filter="14" name="14" value="B" title="al.class"/>
                        <input type="radio" lay-filter="14" name="14" value="C" title="al"/>
                        <input type="radio" lay-filter="14" name="14" value="D" title="都对"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">15、Java类可以作为</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="15" name="15" value="A" title="类型定义机制"/>
                        <input type="radio" lay-filter="15" name="15" value="B" title="数据封装机制"/>
                        <input type="radio" lay-filter="15" name="15" value="C" title="类型定义机制和数据封装机制"/>
                        <input type="radio" lay-filter="15" name="15" value="D" title="上述都不对"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">16、在调用方法时，若要使方法改变实参的值，可以</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="16" name="16" value="A" title="用基本数据类型作为参数"/>
                        <input type="radio" lay-filter="16" name="16" value="B" title="用对象作为参数"/>
                        <input type="radio" lay-filter="16" name="16" value="C" title="A和B都对"/>
                        <input type="radio" lay-filter="16" name="16" value="D" title="A和B都不对"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">17、Java语言具有许多优点和特点，哪个反映了java程序并行机制的</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="17" name="17" value="A" title="安全性"/>
                        <input type="radio" lay-filter="17" name="17" value="B" title="多线性"/>
                        <input type="radio" lay-filter="17" name="17" value="C" title="跨平台"/>
                        <input type="radio" lay-filter="17" name="17" value="D" title="可移植"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">18、下关于构造函数的描述错误是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="18" name="18" value="A" title="构造函数的返回类型只能是void型"/>
                        <input type="radio" lay-filter="18" name="18" value="B" title="构造函数是类的一种特殊函数，它的方法名必须与类名相同"/>
                        <input type="radio" lay-filter="18" name="18" value="C" title="构造函数的主要作用是完成对类的对象的初始化工作"/>
                        <input type="radio" lay-filter="18" name="18" value="D" title="一般在创建新对象时，系统会自动调用构造函数"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">19、若需要定义一个类域或类方法，应使用哪种修饰符</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="19" name="19" value="A" title="static"/>
                        <input type="radio" lay-filter="19" name="19" value="B" title="package"/>
                        <input type="radio" lay-filter="19" name="19" value="C" title="private"/>
                        <input type="radio" lay-filter="19" name="19" value="D" title="public"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">20、下面哪几个函数是public void example（）{….}的重载函数</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="20" name="20" value="A" title="public void example（int m）{…}"/>
                        <input type="radio" lay-filter="20" name="20" value="B" title="public int example（int m,byte b）{…}"/>
                        <input type="radio" lay-filter="20" name="20" value="C" title="public void example2（int a,float b,byte c）{…}"/>
                        <input type="radio" lay-filter="20" name="20" value="D" title="public int example（int m，float f）{…}"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">21、下列关于栈的描述错误的是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="21" name="21" value="A" title="栈是先进后出的线性表"/>
                        <input type="radio" lay-filter="21" name="21" value="B" title="栈只能顺序存储"/>
                        <input type="radio" lay-filter="21" name="21" value="C" title="栈具有记忆功能"/>
                        <input type="radio" lay-filter="21" name="21" value="D" title="对栈的插入和删除操作中，不需要改变栈底指针"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">22、对于长度为 n 的线性表，在最坏的情况下，下列个排序法所对应的比较次数中正确的是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="22" name="22" value="A" title="冒泡排序为n/2"/>
                        <input type="radio" lay-filter="22" name="22" value="B" title="冒泡排序为n"/>
                        <input type="radio" lay-filter="22" name="22" value="C" title="快速排序为n"/>
                        <input type="radio" lay-filter="22" name="22" value="D" title="快速排序为n(n-1)/2"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">23、下列不属于持久化的是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="23" name="23" value="A" title="把对象转换成为字符串的形式通过网络传输，在另一端接收到字符串把对象还原出来"/>
                        <input type="radio" lay-filter="23" name="23" value="B" title="把程序数据从数据库中读出来"/>
                        <input type="radio" lay-filter="23" name="23" value="C" title="从XML配置文件中读取程序的配置信息"/>
                        <input type="radio" lay-filter="23" name="23" value="D" title="把程序数据保存为文件"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">24、一个栈的输入序列为 123，则下列序列中不可能是栈输出的序列的是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="24" name="24" value="A" title="2 3 1"/>
                        <input type="radio" lay-filter="24" name="24" value="B" title="3 2 1"/>
                        <input type="radio" lay-filter="24" name="24" value="C" title="3 1 2"/>
                        <input type="radio" lay-filter="24" name="24" value="D" title="1 2 3"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">25、当n = 5时 int foo(int n){ if(n<2) return n; return foo(n-1)+foo(n-2); } 返回的值为</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="25" name="25" value="A" title="1"/>
                        <input type="radio" lay-filter="25" name="25" value="B" title="8"/>
                        <input type="radio" lay-filter="25" name="25" value="C" title="7"/>
                        <input type="radio" lay-filter="25" name="25" value="D" title="5"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">26、编号为1至10的10个果盘都盛有水果共100个,第一盘里有16个,编号相邻三个果盘中水果数的和都相等,求第8盘中水果最多可能有几个</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="26" name="26" value="A" title="11"/>
                        <input type="radio" lay-filter="26" name="26" value="B" title="12"/>
                        <input type="radio" lay-filter="26" name="26" value="C" title="13"/>
                        <input type="radio" lay-filter="26" name="26" value="D" title="14"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">27、一只蜗牛掉进 20 米深的井中，白天往上爬 3 米，晚上有掉下去 2 米，请问要几天才能爬出来</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="27" name="27" value="A" title="9"/>
                        <input type="radio" lay-filter="27" name="27" value="B" title="12"/>
                        <input type="radio" lay-filter="27" name="27" value="C" title="18"/>
                        <input type="radio" lay-filter="27" name="27" value="D" title="20"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">28、下面那些声明是合法的？</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="28" name="28" value="A" title="byte l = 4990"/>
                        <input type="radio" lay-filter="28" name="28" value="B" title="int i = 4L"/>
                        <input type="radio" lay-filter="28" name="28" value="C" title="float f = 1.1"/>
                        <input type="radio" lay-filter="28" name="28" value="D" title="double d = 34.4"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">29、以下选项中选择正确的java表达式</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="29" name="29" value="A" title="int k=new String(“aa”)"/>
                        <input type="radio" lay-filter="29" name="29" value="B" title="String str = String(“bb”)"/>
                        <input type="radio" lay-filter="29" name="29" value="C" title="char c=74;"/>
                        <input type="radio" lay-filter="29" name="29" value="D" title="byte j=8888;"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">30、以下哪些运算符是含有短路运算机制的</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="30" name="30" value="A" title="&"/>
                        <input type="radio" lay-filter="30" name="30" value="B" title="|"/>
                        <input type="radio" lay-filter="30" name="30" value="C" title="&&"/>
                        <input type="radio" lay-filter="30" name="30" value="D" title=">"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">31、在java中，无论测试条件是什么，下列（）循环将至少执行一次</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="31" name="31" value="A" title="for"/>
                        <input type="radio" lay-filter="31" name="31" value="B" title="do...while"/>
                        <input type="radio" lay-filter="31" name="31" value="C" title="while"/>
                        <input type="radio" lay-filter="31" name="31" value="D" title="while...do"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">32、下列哪个方法可用于创建一个可运行的类</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="32" name="32" value="A" title="public class X implements Runnable{public void run() {……}}"/>
                        <input type="radio" lay-filter="32" name="32" value="B" title="public class X implements Runnable{public boolean run() {……}}"/>
                        <input type="radio" lay-filter="32" name="32" value="C" title="public class X extends Thread{public int run() {……}}"/>
                        <input type="radio" lay-filter="32" name="32" value="D" title="public class X implements Runnable{protected void run() {……}}"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">33、在Java多线程中，请用下面哪种方式不会使线程进入阻塞状态</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="33" name="33" value="A" title="sleep()"/>
                        <input type="radio" lay-filter="33" name="33" value="B" title="Suspend()"/>
                        <input type="radio" lay-filter="33" name="33" value="C" title="wait()"/>
                        <input type="radio" lay-filter="33" name="33" value="D" title="yield()"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">34、关于sleep()和wait()，以下描述错误的一项是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="34" name="34" value="A" title="sleep是线程类（Thread）的方法，wait是Object类的方法"/>
                        <input type="radio" lay-filter="34" name="34" value="B" title="Sleep不释放对象锁，wait放弃对象锁"/>
                        <input type="radio" lay-filter="34" name="34" value="C" title="Sleep暂停线程、但监控状态任然保持，结束后会自动恢复"/>
                        <input type="radio" lay-filter="34" name="34" value="D" title="Wait后进入等待锁定池，只针对此对象发出notify方法后获取对象锁进入运行状态"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">35、以下锁机机制中，不能保证线程安全的是</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="35" name="35" value="A" title="Lock"/>
                        <input type="radio" lay-filter="35" name="35" value="B" title="Synchronized"/>
                        <input type="radio" lay-filter="35" name="35" value="C" title="Volatile"/>
                        <input type="radio" lay-filter="35" name="35" value="D" title="null"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">36、天气预报、市场信息都会随时间的推移而变化，这体现了信息的</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="36" name="36" value="A" title="载体依附性"/>
                        <input type="radio" lay-filter="36" name="36" value="B" title="共享性"/>
                        <input type="radio" lay-filter="36" name="36" value="C" title="时效性"/>
                        <input type="radio" lay-filter="36" name="36" value="D" title="持久性"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">37、https://www.tup.com/index.html中的www.tup.com表示</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="37" name="37" value="A" title="访问的主机"/>
                        <input type="radio" lay-filter="37" name="37" value="B" title="所使用的协议"/>
                        <input type="radio" lay-filter="37" name="37" value="C" title="访同主机的域名"/>
                        <input type="radio" lay-filter="37" name="37" value="D" title="请求查看的文档名和域名"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">38、计算机执行程序时，CPU中 （ ）的内容总是一条指令的地址</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="38" name="38" value="A" title="运算器"/>
                        <input type="radio" lay-filter="38" name="38" value="B" title="控制器"/>
                        <input type="radio" lay-filter="38" name="38" value="C" title="程序计数器"/>
                        <input type="radio" lay-filter="38" name="38" value="D" title="通用寄存器"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">39、在寻址方式中，将操作数的地址放在寄存器中的方式称为</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="39" name="39" value="A" title="直接寻址"/>
                        <input type="radio" lay-filter="39" name="39" value="B" title="间接寻址"/>
                        <input type="radio" lay-filter="39" name="39" value="C" title="寄存器寻址"/>
                        <input type="radio" lay-filter="39" name="39" value="D" title="寄存器间接寻址"/>
                    </div>
                </div>
            </div>
            <div class="bodyRegister hid">
                <div class="panel">40、在计算机的存储系统中，（ ）属于外存储器</div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" lay-filter="40" name="40" value="A" title="硬盘"/>
                        <input type="radio" lay-filter="40" name="40" value="B" title="寄存器"/>
                        <input type="radio" lay-filter="40" name="40" value="C" title="高速缓存"/>
                        <input type="radio" lay-filter="40" name="40" value="D" title="主存"/>
                    </div>
                </div>
            </div>
            <div class="layui-submit">
                <button type="button" class="layui-btn last" id="last">上一题</button>
                <button type="button" class="layui-btn next" id="next">下一题</button>
            </div>
        </form>
    </div>
    <div class="card layui-anim layui-anim-fadein" id="card">
        <ul>
            <li value="1">1</li>
            <li value="2">2</li>
            <li value="3">3</li>
            <li value="4">4</li>
            <li value="5">5</li>
            <li value="6">6</li>
            <li value="7">7</li>
            <li value="8">8</li>
            <li value="9">9</li>
            <li value="10">10</li>
            <li value="11">11</li>
            <li value="12">12</li>
            <li value="13">13</li>
            <li value="14">14</li>
            <li value="15">15</li>
            <li value="16">16</li>
            <li value="17">17</li>
            <li value="18">18</li>
            <li value="19">19</li>
            <li value="20">20</li>
            <li value="21">21</li>
            <li value="22">22</li>
            <li value="23">23</li>
            <li value="24">24</li>
            <li value="25">25</li>
            <li value="26">26</li>
            <li value="27">27</li>
            <li value="28">28</li>
            <li value="29">29</li>
            <li value="30">30</li>
            <li value="31">31</li>
            <li value="32">32</li>
            <li value="33">33</li>
            <li value="34">34</li>
            <li value="35">35</li>
            <li value="36">36</li>
            <li value="37">37</li>
            <li value="38">38</li>
            <li value="39">39</li>
            <li value="40">40</li>
        </ul>
        <div class="layui-submit">
            <button type="button" class="layui-btn" id="cmt">提交</button>
        </div>
    </div>
</div>
</body>
<script charset="UTF-8" src="${pageContext.request.contextPath}/static/layui.js" type="text/javascript"></script>
<script charset="UTF-8" src="${pageContext.request.contextPath}/js/commit.js" type="text/javascript"></script>
</html>