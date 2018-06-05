<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0125)http://www.youtx.com/payment/Booking/BookingNew.aspx?houseid=144142&livenum=1&begintime=2018-06-05&endtime=2018-06-06&rooms=1 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="static/submit_order/countpv" width="0" height="0"><script charset="utf-8" src="static/submit_order/v.js.下载"></script><script type="text/javascript" async="" src="static/submit_order/load.min.js.下载"></script><script src="static/submit_order/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
        
    <link href="static/submit_order/public.css" rel="stylesheet" type="text/css">
        
    <script type="text/javascript" src="static/submit_order/jQuery.cookie.js.下载"></script>
        
    
    
    <title>订单确认-游天下</title>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <script language="javascript" type="text/javascript" src="static/submit_order/Youtx.Utility.js.下载"></script>
    <script language="javascript" type="text/javascript" src="static/submit_order/Youtx.Verification.js.下载"></script>
    <script language="javascript" type="text/javascript" src="static/submit_order/Youtx.PassprofileNew.js.下载"></script>
    <link href="static/submit_order/login.css" rel="stylesheet" type="text/css">
    <script src="static/submit_order/baidu-head.js.下载" type="text/javascript"></script>
    <link href="static/submit_order/X_NewOrder.css" rel="stylesheet" type="text/css">
    <!--test-->
    
    <!--test-->
    <script src="static/submit_order/popup_layer.js.下载" language="javascript" type="text/javascript"></script>
   <script type="text/javascript" language="javascript">
       var isSelf = 0;
       $(function () {
           //选择外国，隐藏民族选项
           $("#CountryMyOption").change(function () {
               if ($.trim($("#CountryMyOption").find("option:selected").text()) != "中国") {
                   $("#NationMyOption").hide();
               }
               else {
                   $("#NationMyOption").show();
               }
           });
		   $("#CountryOtherOption").change(function () {
                if ($.trim($("#CountryOtherOption").find("option:selected").text()) != "中国") {
                    $("#NationOtherOption").hide();                   
                }
                else {
                    $("#NationOtherOption").show();
                }
            });
       });
       //验证证件
       function CartTest(data) {
           var cardText = $(data).val();
           //var type = $(data).parent().parent().prev().find("select[name='CartOption'] ").val();
           var type = $(data).parent().parent().prev().find("select").val();
           //传递Span Option
           var spanOption = $(data).parent().parent().find("div[name='CardErrorMsg'] span");
           isCardNo(cardText, type, spanOption);
       }

       //
       function ChangeCartOption(data) {
           var cardText = $(data).parent().parent().parent().next().find("input").val();
           // var cardText = $(data).parent().parent().parent().next().find("input[name='IDNumber']").val();
           var type = $(data).val();
           //传递Span Option
           var spanOption = $(data).parent().parent().parent().next().find("div[name='CardErrorMsg'] span");
           isCardNo(cardText, type, spanOption);
       }

       //验证身份证、护照、军官证 是否符合规范
       //111身份证、114军人证、414护照
       function isCardNo(card, type, data) {
           var reg;
           switch (type) {

               case "111":
                   // 身份证号码为18位，18位前17位为数字，最后一位是校验位，可能为数字或字符X  
                   reg = /(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
                   break;
               case "414":
                   //护照格式为一个大写字母加8个数字
                   reg = /^[A-Z]\d{8}$/;
                   break;
               case "114":
                   //军人证号码格式为9个数字
                   reg = /^\d{9}$/;
                   break;
           }


           if (reg.test(card) == false) {
               $(data).html("证件格式不正确");
               //$(data).parent().parent().find("div[name='CardErrorMsg'] span").show();
               $(data).show();
               return;
           }
           else {
               $(data).hide();
           }
       }  
    </script>

   
<script src="static/submit_order/saved_resource"></script><link rel="stylesheet" type="text/css" href="static/submit_order/Youtx_WebIM.css"></head>
<body>
    <div class="wrapper">
       
   
        
                <!--头 已登录 start-->
<script type="text/javascript">
    var HostUrl = 'http://www.youtx.com';
    var HostUrl_En = 'http://en.youtx.com';
    var HostMallShop = 'http://mall.youtx.com';
    var lang = "en-US";
    $(function () {
        $(".HeadLanguage").click(function () {
            $.cookie('LN', lang, { expires: 30, path: '/', domain: 'youtx.com' });
            $.cookie('huobi', "USD", { expires: 30, path: '/', domain: 'youtx.com' });
            location.href = HostUrl_En;
        });
    });

    //140226鼠标滑过手机游天下修改
    $(function () {
        var timerM = null;
        $('.ytxMob').mouseover(function () {
            clearTimeout(timerM);
            $(this).children('.ytxMobCon').show();
        });
        $('.ytxMob').mouseout(function () {
            var thisM = this;
            timerM = setTimeout(function () {
                $(thisM).children('.ytxMobCon').hide();
            }, 300);
        });

    });
    //140226end
</script>
<script type="text/javascript" src="static/submit_order/Login_Cookie.js.下载"></script>
<script type="text/javascript">
    //监控代码请勿删除
    var _dctc = _dctc || {}; _dctc._account = _dctc._account || ['UA-25297079-1']; _dctc.isNorth = _dctc.isNorth || 'Y'; _dctc.bid = '27'; (function () {
        var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true; script.src = 'http://js.soufunimg.com/count/load.min.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s);
    })();
    //监控代码结束

</script>
<!-- ClickTale Top part -->
<script type="text/javascript">
    var WRInitTime = (new Date()).getTime();
</script>
<!-- ClickTale end of Top part -->
<div id="youtxlogin" class="header" style="">
    <p class="logo">
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="static/submit_order/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
    </p>
    <!--2013-5-3修改-->
    <p class="btncz"><a id="A2" style="cursor:default;" target="_blank" rel="nofollow" onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;publish&#39;});}">我是房东</a></p>
    <ul class="HeadLandlord">
        <li class="HeadLandlordNew"><a id="MallShopNum" target="_blank" href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></li>
        <li><a target="_blank" href="http://www.youtx.com/room/new/">我要出租</a></li>
        <li><a target="_blank" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
        <li style="border:none;"><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></li>
    </ul>
    <!--2013-5-3修改-结束-->
    <ul class="subnav">
        <li><a target="_self" href="http://www.youtx.com/help/" rel="nofollow" id="youtx_05">帮助</a></li>
<!--        <li class="PosRe"><a href="http://www.youtx.com/mo/" target="_blank"  rel="nofollow" id="youtx_04">手机游天下</a></li>-->
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/submit_order/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <!--<li><a href="http://guide.youtx.com/" target="_blank" >目的地专家</a>
            <div class="HeaderTiShi"> 出行问答，游记攻略！<span>◆</span> <span class="HeaderTiShiImg">◆</span>
                 <p><img alt="关" src="http://js.youtx.com/images/QuAnTiShiColse.gif" id="imgx" /></p>
            </div>
            <div class="HeaderTiShi02" style="display:none">
            <div id="da">收到<a href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx" id="dacount">0</a>个新回答<a class="PL10" href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx?type=answer">查看</a></div>
            <div id="wen">收到<a href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx?type=answer" id="wencount">0</a>个网友提问<a class="PL10" href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx">查看</a></div>
            <span class="Headerbg01 Headerbg03">◆</span><span class="Headerbg02 Headerbg04">◆</span>
                 <p><img src="http://js.youtx.com/images/HeadOutBox.gif"  class="HeadClose"></p>
            </div>
        </li>-->
        <li><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/" target="_self">English</a></li>
         <li class="ytxMob" id="mobYtx2">
      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A4">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/submit_order/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/submit_order/ewmBNew.jpg" width="102" height="102"></dd>
                <dd>微信公众号：游天下</dd>
            </dl>
            <dl style="border:none;">
            	<dt>手机浏览器访问游天下</dt>
                <dd style="margin-top:45px;"><a href="http://m.youtx.com/" target="_blank" class="mbUrl">m.YouTX.com</a></dd>
            </dl>
        </div>
      </li>

        <!--2013-5-3修改-->
        <li class="first firstNew">
              <span class="FirstSpan FirstSpan02"><a target="_self" href="http://www.youtx.com/home/dashboard/" rel="nofollow">Hi,<span id="liname">卢 祖兴</span></a><span class="JianTouIco"></span></span>
              <div class="UlName UlName02">
                   <div><a target="_self" href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx" rel="nofollow">已预订的房间</a><span id="RoomsNumSpan" class="font_red">(0)</span></div>
                   <div><a target="_self" href="http://www.youtx.com/User/MyMailBox/" rel="nofollow">站内信</a><span id="MsgNumSpan" class="font_red">(0)</span></div>
                   <div><a target="_self" href="http://www.youtx.com/profile/User/MailBox/SystemMail.aspx" rel="nofollow">系统通知</a><span id="SysMsgNumSpan" class="font_red">(2)</span></div>
                   <div id="FavNumLi"><a target="_self" href="http://www.youtx.com/payment/User/MyCollection/Collection.aspx" title="查看我收藏的房间" rel="nofollow">收藏夹</a></div>
                   <div style="border:none;"><a target="_self" href="http://www.youtx.com/user/logout/" rel="nofollow">退出</a></div>
              </div>
        </li>
        <!--<li class="UserName">Hi,<span id="liname">游天下账号</span></li>-->
        <!--2013-5-3修改-结束-->    
    </ul>
</div>
<!--头 已登录 end-->
<!--头 未登录 start-->
<div id="youtxloginw" class="header" style="display: none;">
    <p class="logo">
        <a href="http://www.youtx.com/" target="_blank" id="youtx_01">
            <img src="static/submit_order/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
    </p>
    <!--2013-5-3修改-->
    <p class="btncz"><a id="A3" style="cursor:default;" target="_blank" rel="nofollow" onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;publish&#39;});}">我是房东</a></p>
    <ul class="HeadLandlord">
        <li class="HeadLandlordNew"><a target="_blank" href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></li>
        <li><a target="_blank" href="http://www.youtx.com/room/new/">我要出租</a></li>
        <li><a target="_blank" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
        <li style="border:none;"><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></li>
    </ul>
    <!--2013-5-3修改-结束-->
    <ul class="subnav">
        <li><a target="_self" href="http://www.youtx.com/help/" rel="nofollow" id="youtx_05">帮助</a></li>
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/submit_order/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/submit_order/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/submit_order/ewmBNew.jpg" width="102" height="102"></dd>
                <dd>微信公众号：游天下</dd>
            </dl>
            <dl style="border:none;">
            	<dt>手机浏览器访问游天下</dt>
                <dd style="margin-top:45px;"><a href="http://m.youtx.com/" target="_blank" class="mbUrl">m.YouTX.com</a></dd>
            </dl>
        </div>
      </li>

        <li>
            <a target="_self" href="https://passport.youtx.com/user/login/" rel="nofollow" id="youtx_03" onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;login&#39;});}">登录</a>
        </li>
        <li class="firstNew" id="youtx_02">
            <a target="_self" id="reg" href="https://passport.youtx.com/user/regist/" rel="nofollow" onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;register&#39;});}">注册</a>
        </li>

    </ul>
</div>
<!--头 未登录 end-->
<script type="text/javascript">
    var _bdhm_top = 0;
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    var _bdhm_tim = new Image(1, 1);
    _bdhm_tim.id = "bdhmPerimg";
    _bdhm_tim.src = _bdhmProtocol + "hm.baidu.com/_tt.gif?si=d6a1c2e211265084b7d12bfc8636a282&rnd=" + Math.round(Math.random() * 2147483647);
    _bdhm_tim.onload = function () { _bdhm_top = 1; }


    </script>
    
    <form method="get" id="book_it_form" action="http://www.youtx.com/payment/Booking/BookingNew.aspx" target="_self">
    <div id="cboxOverlay" style="display: none; opacity: 1; z-index: 99; cursor: auto;
        height: 100%; width: 100%; background: none repeat scroll 0 0 #000000; position: absolute;">
        <iframe frameborder="0" class="IE6iframe" src="static/submit_order/saved_resource.html"></iframe>
    </div>
    <!--登录popup5-->
    <div style="width: 347px; display: none;" class="WishlistLogin popup5">
        <h2 class="WishlistHeader">
            <span class="H2Font">登录</span><span class="WishlistClose"><img src="static/submit_order/WishlistClose.gif"></span></h2>
        <div class="Wishlist_tab">
            <div class="W_item_listxt">
                <div class="input_passwrod passwrod_bg290">
                    <label style="display: inline" for="accountid" class="input_labelBlur">
                        电子邮箱/手机号码</label>
                    <input type="text" id="accountid" class="input">
                </div>
                <p id="p_accountid" class="W_item_listxt_error">
                </p>
                <div class="input_passwrod passwrod_bg290">
                    <label style="display: inline" for="password" class="input_labelBlur">
                        请输入密码</label>
                    <input type="password" id="password" class="input">
                </div>
                <p id="p_password" class="W_item_listxt_error">
                </p>
                <div class="Wishlist_btn pt25">
                    <input type="button" value="登  录" class="btn152 FL" id="btnSignIn">
                    <p class="FL">
                        <a style="cursor: pointer" onclick="window.open(&#39;/profile/Passport/EditPassword.aspx?Email=&#39;+$(&#39;#txtmail&#39;).val())">
                            找回密码</a></p>
                </div>
                <p id="spanSignIn" class="W_item_listxt_error">
                </p>
            </div>
        </div>
    </div>
    <!--登录pop5end-->
    <!--交易规则 start-->
    <div class="OutBoxOut popup3" style="width: 430px; display: none;">
        <div class="OutBoxIn">
            <h2 class="OutBoxTit">
                <div class="OutBox_Close" id="pop3close">
                </div>
                交易规则明细</h2>
            <p class="OrderTextPop_p">
                
                
                1.
                房东接受订单后，租客需在线支付￥348元作为订金。<br>
                2. 租客在2018年5月29日的中午12:00前取消交易，从订金中扣除1天房款的10%，余额返还给租客。<br>
                3. 租客在2018年5月29日的中午12:00至入住时间前取消交易，从订金中扣除房款总额的25%（如果订单租期在2天之内，从订金中扣除1天房款的50%），余额返还给租客。<br>
                4. 租客在入住后取消交易，房东从订单总金额中扣除清洁费与实际入住天数的费用，并扣除未入住天数之房费的50%作为罚金，剩余款项返还给租客。<br>
                5. 如果租客在入住后取消交易时已超过当天的退房时间，则需要支付第二天的房款。<br>
                6. 如果任何一方提出投诉，必须在入住24小时内通知我们。如有必要，我们将会进行调解，并对所有争端具有最终决定权。<br>
                7.
                订单的取消时间以游天下系统中记录的订单取消时间为准。如果有疑问请通过邮件（<a href="mailto:urgent@youtx.com">urgent@youtx.com</a>）或电话（400-630-0088）与我们联系。<br>
                
                <br>
                您还可以：<a target="_blank" href="http://www.youtx.com/cancelrule/" onclick="try{_gaq.push([&#39;t0._trackPageview&#39;,&#39;/virtual/order/rule-tuwenban/&#39;]);}catch(e){}">查看交易规则说明图文版</a><br>
                
            </p>
        </div>
    </div>
    <!--交易规则 end-->
    <!--房屋使用规则 start-->
    <div class="OutBoxOut popup8" style="width: 430px; display: none;">
        <div class="OutBoxIn">
            <h2 class="OutBoxTit">
                <div class="OutBox_Close" id="pop8close">
                </div>
                房屋使用规则               </h2>
            <p class="OrderTextPop_p">
                * 请带好您的有效证件办理入住<br>
                * 请爱护房间内的设施和物品<br>
                * 请勿将房间用于违法活动<br>
            </p>
        </div>
    </div>
    <!--房屋使用规则 end-->
    <!--其他联系人 start-->
    <div class="cboxContentNew popup6" style="width: 480px; display: none;">
        <h4>
            添加与管理备用联系人信息</h4>
        <ul class="ReceiveScu_table02">
            <li>
                <p id="noticemsg1">
                    你预订的入住人数是1人还能添加<span class="leftman1">1</span>条备用人信息</p>
                <p id="noticemsg2" style="display: none;">
                    您所能添加的联系人数已达到上限</p>
                <p id="txtnk" style="display: none;">
                    <strong>从已有联系人中勾选</strong>( 您可以在<span>个人中心</span>-<span>租客</span>-<span>联系人</span>页面中编辑这些信息)</p>
            </li>
            <li>
                <div class="ReceiveScu_table03" style="display: none;">
                    <table id="oplinkerList" border="0" width="430">
                    </table>
                </div>
            </li>
            <li>
                <p>
                    <strong>联系人信息</strong>( 交易达成后，房东将会看到以下联系方式 )</p>
                <p>
                    姓名
                    <input type="text" id="MobileMan" class="text01" onchange="try{_gaq.push([&#39;t0._trackPageview&#39;,&#39;/virtual/order/beiyong-name/&#39;]);}catch(e){}" maxlength="20">
                    电话
                    <input type="text" id="MobileNumber" class="text01" onchange="try{_gaq.push([&#39;t0._trackPageview&#39;,&#39;/virtual/order/beiyong-phone/&#39;]);}catch(e){}" maxlength="20">
                    <input id="AddorChange" class="ScuDet" value="确 定" type="button">
                    <input type="hidden" id="MobileState" name="MobileState" value="Add">
                </p>
                <p>
                    <span id="ErrorIco" class="ErrorIco" style="display: none"></span>
                </p>
            </li>
            <li>
                <div class="ReceiveScu_table03 ReceiveScu_table04">
                    <table id="OtherMobile" border="0" width="430">
                    </table>
                </div>
            </li>
        </ul>
        <div class="ReceiveScuBtn">
            <input value="完成" class="closeLink" type="button"></div>
    </div>
    <!--其他联系人 end-->
    <div class="NewOrder">
        <div class="NewOrderLeft">
            <div class="X_order_title">
                <img alt="" src="static/submit_order/OrderTitBg.gif"></div>
            <div class="X_order_step">
                
                <img alt="" src="static/submit_order/X_order_step01.gif" width="645" height="30">
                
            </div>
            <div class="NewOrderContent">
                <div class="NewOrderTit">
                    基本信息</div>
                <div class="NewOrderTxt">
                    <table width="645" border="0" cellspacing="0" cellpadding="0" class="X_Order_Basic">
                        <tbody><tr>
                            <th width="220" scope="col">
                                入住时间
                            </th>
                            <th width="220" scope="col">
                                退房时间
                            </th>
                            <th width="105" scope="col">
                                入住天数
                            </th>
                            <th width="100" scope="col">
                                入住人数
                            </th>
                            <th width="100" scope="col">
                                预订套数
                            </th>
                        </tr>
                        <tr>
                            <td>
                                2018-06-05
                                &nbsp;（星期二）
                                <input name="begintime" type="hidden" value="2018-06-05">
                            </td>
                            <td>
                                2018-06-06&nbsp;（星期三）
                                <input name="endtime" type="hidden" value="2018-06-06">
                            </td>
                            <td>
                                1天
                            </td>
                            <td>
                                1人<input name="livenum" type="hidden" value="1">
                            </td>
                            <td>
                                1
                                套
                                <input type="hidden" id="rooms" name="rooms" value="1">
                            </td>
                        </tr>
                    </tbody></table>
                    <input type="hidden" id="validator" name="validator" value="89D6BC4F60257ECB4CDA40BCAD1B0036134968D1534ACE1019238AB7DEB48B05">
                    <input type="hidden" id="othersLinker" name="othersLinker" value="">
                </div>
            </div>
            <div class="NewOrderContent">
                <div class="NewOrderTit">
                    <!--账单信息-->
                    账单信息
                </div>
                <div class="NewOrderTxt">
                    <!--返现zwh-start-->
                    <script type="text/javascript">
                                $(function () { 
                                if(window.console){
                                    console.log("返现活动id【returnCashID】:" + 0);
                                    console.log("返现天数【returnDays】:" + 0);
                                    console.log("入住天数【liveDays】:" + 1);
                                    console.log("showDiv:" + 0);
                                    console.log("priceIsSame:"+false);
                                    }
                                });
                    </script>
                    
                    <!--2014-11-11修改-->
                    
                    <!--2014-11-11修改-结束-->
                    <!--返现zwh-end-->
                    <input type="hidden" id="ReturnCashID" name="ReturnCashID" value="0"><!--返现活动id-->
                    <div class="OrderTotal">
                        <div class="X_order_pay">
                            <ul>
                                <li class="OrderToTxt01">
                                    订单总金额：</li>
                                <li class="OrderToTxt02"><span class="Orange">
                                    ￥348</span></li>
                                
                                
                                <li class="OrderToTxt_pop"><span class="NewOrderLink" id="billDetail"><a href="javascript:void(0);" class="Billpop">
                                    账单明细</a></span>
                                    <div class="Billpop_up" style="display: none">
                                        <div class="Billpop_Table">
                                            <table width="390" border="0" cellspacing="0" cellpadding="0" class="Billpop_up_table"><tbody><tr><td width="68"><div class="Date_pay_gray"><p class="X_Date_order">06-05</p><p><span class="jiaqianFU">￥</span>348</p></div></td><td width="68"></td><td width="68"></td><td width="68"></td><td width="68"></td></tr></tbody></table>
                                        </div>
                                        <div class="X_orderpageBox">
                                            <ul>
                                                <li><span class="notoColorBl"></span><span>
                                                    周价</span></li>
                                                <li><span class="notoColorRe"></span><span>
                                                    活动价
                                                    </span></li>
                                                <li><span class="notoColorGr"></span><span>特殊价</span></li>
                                            </ul>
                                            
                                        </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                function Style() {
                                                    $(".Billpop_Table table:eq(" + i + ")").show().siblings().hide();
                                                }
                                                var len = $(".Billpop_Table table").length;
                                                var i = 0;
                                                $(".pageDown").click(function () {
                                                    i++;
                                                    if (i >= len) {
                                                        i = len - 1;
                                                    }
                                                    Style();
                                                })
                                                $(".pageUp").click(function () {
                                                    i--;
                                                    if (i <= 0) {
                                                        i = 0;
                                                    }
                                                    Style();
                                                })
                                            })
                                        </script>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="Order_pay_info">
                                            <tbody><tr>
                                                <td class="Pay_line" align="right" width="30%">
                                                    房价总额：
                                                </td>
                                                <td class="Pay_line" align="left">
                                                    ￥348
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    额外客人费用：
                                                </td>
                                                <td align="left">
                                                    ￥0
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    清洁费：
                                                </td>
                                                <td align="left">
                                                    ￥0
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="Pay_line" align="right">
                                                    合计：
                                                </td>
                                                <td class="Pay_line" align="left">
                                                    <span class="Orange FwB">
                                                        ￥348</span>
                                                </td>
                                            </tr>
                                        </tbody></table>
                                    </div>
                                </li>
                                
                                
                            </ul>
                            <script type="text/javascript">
                                var m = 0;
                                $(function () {
                                    $("#billDetail").click(function () {
                                        if (m == 0) {
                                            m = 1;
                                            $(this).toggleClass("X_cur");
                                            $(".Billpop_up").toggle();
                                        }
                                        else {
                                            m = 0;
                                        }
                                        try {
                                            _gaq.push(['t0._trackPageview', '/virtual/order/detail/']);
                                        } catch (e)
                                         { }
                                    })
                                    $(document).mouseup(MouseDownOther);
                                    function MouseDownOther(evt) {
                                        evt = evt || window.event;
                                        var ele = evt.target || evt.srcElement;
                                        if (ele != $(".Billpop_up")[0]) {
                                            $("#billDetail").removeClass("X_cur");
                                            $(".Billpop_up").hide();
                                            m = 0;
                                        }
                                    }
                                    $(".Billpop_up").mouseup(function () { return false; });
                                });
                            </script>
                            <div class="clear">
                            </div>
                        </div>
                        <div class="X_order_pay">
                            <ul>
                                <li class="OrderToTxt01">
                                    线上应付金额：</li>
                                <li class="OrderToTxt02"><span class="Orange">
                                    ￥348</span></li>
                                
                                <li><span class="ML5" style="color: #666;">
                                    （房款总额 + 额外客人费用）*
                                    100% + 清洁费</span>
                                    
                                </li>
                                
                            </ul>
                            <div class="clear">
                            </div>
                        </div>
                        <div class="X_order_pay">
                            <ul>
                                <li class="OrderToTxt01">
                                    线下支付：</li>
                                <li class="OrderToTxt02"><span class="Orange">
                                    ￥0</span></li>
                            </ul>
                            <div class="clear">
                            </div>
                        </div>
                        <div class="X_order_pay_02">
                            <ul>
                                <li class="OrderToTxt01">入住奖励： </li>
                                <li class="OrderToTxt02">
                                    <div class="OrderPrompt">
                                        <div>
                                            入住并评价后，您将获得<strong class="Orange">348</strong>积分和<strong class="Orange">20</strong>元代金券</div>
                                    </div>
                                </li>
                            </ul>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="NewOrderContent">
                <div class="NewOrderTit">
                    交易规则</div>
                <div class="NewOrderTxt">
                    <p class="X_order_rules">
                        
                        
                        1.2018年5月29日（入住7天前）中午12:00前取消订单，无违约金，订金全部退还。<br>
                        2.2018年5月29日中午12:00至入住当天14：00前取消订单，从订金中<span class="Orange">扣除￥348</span>作为违约金。(根据中等取消政策，订单租期在4天内将扣除1天房款作为违约金）<br>
                        3.游天下短租和房东默认租客在2018年6月5日的14:00之后为已入住并扣除当天房费，若入住后提前退房，房东将扣除未入住天数之房费的<span class="Orange">50%</span>与清洁费作为罚金，剩余款项返还。<br>
                        
                    </p>
                </div>
            </div>
            <!--2013-1-9修改-->
            <div class="NewOrderContent PosRe">
                <div class="InforPopUp" style="display: none">
                    <p>
                        本房间正在参加<span class="Orange">"积分付房费"</span>活动：</p>
                    <p>
                        1.50积分=1元房费，您使用的积分数量需是50的倍数。</p>
                    <p>
                        2.您帐户中现在200积分，您最多可使用200积分，抵付4元。</p>
                    <p>
                        3.请在“备注”中填写您要使用的积分数量。</p>
                    <p>
                        4.抵付金额会在您付款时直接抵扣。</p>
                </div>
                <!--2013-1-9修改-结束-->
                <div class="NewOrderTit">
                    用户信息</div>
                <div class="NewOrderTxt">
                    <div class="NewOrderInfor" style="background: none;">
                        <!--右边第二个页面时NewOrderInfor 添加 style="background:none;"去掉背景图片-->
                        <div class="NewOrderInfor_L">
                            <table border="0">
                                <tbody><tr>
                                    <td class="Infor_LTd">
                                        <b>*</b>用户名：
                                    </td>
                                    <td>
                                        <input type="text" class="text" id="txtname" name="txtname" onchange="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/name/&#39;]);}catch(e){}" disabled="disabled">
                                         <span>
                                            <img id="imgname" style="vertical-align: middle;" src="static/submit_order/RoomCorrectBtnNew.gif"></span>
                                        <script language="javascript" type="text/javascript">
                                            var usName = "卢祖兴";
                                            if (usName != "" || usName == null) {
                                                $("#txtname").val(usName);
                                                $("#txtname").attr("disabled", "disabled");
                                            }                                            
                                        </script>
                                        <div class="PromptErrorBox">
                                            <span class="PromptError" style="display:none;">包含不正确的字符，请重新输入
                                         </span>
                                         </div>
                                    </td>
                                </tr>

                                <tr id="nameTr" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>姓 名：
                                    </td>
                                    <td>
                                        <input type="text" class="text" id="textUserName" name="textUserName">
                                        <span>
                                            <img id="imgUsername" style="vertical-align: middle; *vertical-align: baseline; display: none;" src="static/submit_order/RoomCorrectBtnNew.gif"></span>
                                        <p class="ColorGray999 PT5">请与证件上姓名保持一致。</p>
                                        <div class="PromptErrorBox">
                                            <span class="PromptError" style="display: none">
                                                包含不正确的字符，请重新输入</span></div>
                                    </td>
                                </tr>
                                
                                <!--2015-11-26Begin-->
                                 <tr id="countryTr" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>国 籍：
                                    </td>
                                    <td>
                                        <div>
                                       	    <select id="CountryMyOption" name="CountryMyOption" class="text" style="height:24px;font-size:12px;width:100px;padding:3px 0;">
                                              
                                                <option value="2_355">
                                                        阿尔巴尼亚</option>
                                                
                                                <option value="3_213">
                                                        阿尔及利亚</option>
                                                
                                                <option value="1_93">
                                                        阿富汗</option>
                                                
                                                <option value="10_54">
                                                        阿根廷</option>
                                                
                                                <option value="221_971">
                                                        阿拉伯联合酋长国</option>
                                                
                                                <option value="205_963">
                                                        阿拉伯叙利亚共和国</option>
                                                
                                                <option value="12_297">
                                                        阿鲁巴岛</option>
                                                
                                                <option value="159_968">
                                                        阿曼</option>
                                                
                                                <option value="15_994">
                                                        阿塞拜疆</option>
                                                
                                                <option value="62_20">
                                                        埃及</option>
                                                
                                                <option value="67_251">
                                                        埃塞俄比亚</option>
                                                
                                                <option value="101_353">
                                                        爱尔兰</option>
                                                
                                                <option value="66_372">
                                                        爱沙尼亚</option>
                                                
                                                <option value="5_376">
                                                        安道尔</option>
                                                
                                                <option value="6_244">
                                                        安哥拉</option>
                                                
                                                <option value="7_1">
                                                        安圭拉岛</option>
                                                
                                                <option value="9_1">
                                                        安提瓜和巴布达</option>
                                                
                                                <option value="14_43">
                                                        奥地利 </option>
                                                
                                                <option value="13_61">
                                                        澳大利亚</option>
                                                
                                                <option value="122_853">
                                                        澳门</option>
                                                
                                                <option value="19_1">
                                                        巴巴多斯</option>
                                                
                                                <option value="163_675">
                                                        巴布亚新几内亚</option>
                                                
                                                <option value="16_1">
                                                        巴哈马群岛</option>
                                                
                                                <option value="160_92">
                                                        巴基斯坦</option>
                                                
                                                <option value="164_595">
                                                        巴拉圭</option>
                                                
                                                <option value="17_973">
                                                        巴林岛</option>
                                                
                                                <option value="162_507">
                                                        巴拿马</option>
                                                
                                                <option value="30_55">
                                                        巴西</option>
                                                
                                                <option value="20_375">
                                                        白俄罗斯</option>
                                                
                                                <option value="24_1">
                                                        百慕大群岛</option>
                                                
                                                <option value="33_359">
                                                        保加利亚</option>
                                                
                                                <option value="157_1">
                                                        北马里亚诺群岛</option>
                                                
                                                <option value="23_229">
                                                        贝宁</option>
                                                
                                                <option value="21_32">
                                                        比利时</option>
                                                
                                                <option value="96_354">
                                                        冰岛</option>
                                                
                                                <option value="170_1">
                                                        波多黎各</option>
                                                
                                                <option value="168_48">
                                                        波兰</option>
                                                
                                                <option value="27_387">
                                                        波斯尼亚</option>
                                                
                                                <option value="26_591">
                                                        玻利维亚</option>
                                                
                                                <option value="22_501">
                                                        伯利兹</option>
                                                
                                                <option value="28_267">
                                                        博茨瓦纳</option>
                                                
                                                <option value="25_975">
                                                        不丹</option>
                                                
                                                <option value="34_226">
                                                        布基纳法索</option>
                                                
                                                <option value="35_257">
                                                        布隆迪</option>
                                                
                                                <option value="29_">
                                                        布维岛</option>
                                                
                                                <option value="64_240">
                                                        赤道几内亚</option>
                                                
                                                <option value="57_45">
                                                        丹麦</option>
                                                
                                                <option value="79_49">
                                                        德国</option>
                                                
                                                <option value="210_228">
                                                        多哥</option>
                                                
                                                <option value="59_1">
                                                        多米尼加岛</option>
                                                
                                                <option value="60_1">
                                                        多米尼加共和国</option>
                                                
                                                <option value="174_7">
                                                        俄罗斯联邦</option>
                                                
                                                <option value="61_593">
                                                        厄瓜多尔</option>
                                                
                                                <option value="65_291">
                                                        厄立特里亚</option>
                                                
                                                <option value="72_33">
                                                        法国</option>
                                                
                                                <option value="69_298">
                                                        法罗群岛</option>
                                                
                                                <option value="74_689">
                                                        法属波利尼西亚</option>
                                                
                                                <option value="73_594">
                                                        法属圭亚那</option>
                                                
                                                <option value="75_">
                                                        法属南部领地</option>
                                                
                                                <option value="227_379">
                                                        梵蒂冈</option>
                                                
                                                <option value="166_63">
                                                        菲律宾</option>
                                                
                                                <option value="70_679">
                                                        斐济</option>
                                                
                                                <option value="71_358">
                                                        芬兰</option>
                                                
                                                <option value="39_238">
                                                        佛得角</option>
                                                
                                                <option value="68_500">
                                                        福克兰群岛</option>
                                                
                                                <option value="77_220">
                                                        冈比亚</option>
                                                
                                                <option value="49_242">
                                                        刚果</option>
                                                
                                                <option value="47_57">
                                                        哥伦比亚</option>
                                                
                                                <option value="51_506">
                                                        哥斯达黎加</option>
                                                
                                                <option value="84_1">
                                                        格林纳达</option>
                                                
                                                <option value="83_299">
                                                        格陵兰</option>
                                                
                                                <option value="78_995">
                                                        格鲁吉亚</option>
                                                
                                                <option value="54_53">
                                                        古巴</option>
                                                
                                                <option value="85_590">
                                                        瓜德罗普岛</option>
                                                
                                                <option value="86_1">
                                                        关岛</option>
                                                
                                                <option value="90_592">
                                                        圭亚那</option>
                                                
                                                <option value="107_7">
                                                        哈萨克斯坦</option>
                                                
                                                <option value="91_509">
                                                        海地</option>
                                                
                                                <option value="194_82">
                                                        韩国</option>
                                                
                                                <option value="148_31">
                                                        荷兰</option>
                                                
                                                <option value="149_599">
                                                        荷属安的列斯</option>
                                                
                                                <option value="92_">
                                                        赫德岛和麦克唐纳群岛</option>
                                                
                                                <option value="140_382">
                                                        黑山共和国</option>
                                                
                                                <option value="93_504">
                                                        洪都拉斯</option>
                                                
                                                <option value="109_686">
                                                        基里巴斯</option>
                                                
                                                <option value="58_253">
                                                        吉布提</option>
                                                
                                                <option value="112_996">
                                                        吉尔吉斯斯坦</option>
                                                
                                                <option value="88_224">
                                                        几内亚</option>
                                                
                                                <option value="89_245">
                                                        几内亚比绍</option>
                                                
                                                <option value="38_1">
                                                        加拿大</option>
                                                
                                                <option value="80_233">
                                                        加纳</option>
                                                
                                                <option value="76_241">
                                                        加蓬</option>
                                                
                                                <option value="36_855">
                                                        柬埔寨</option>
                                                
                                                <option value="56_420">
                                                        捷克共和国</option>
                                                
                                                <option value="236_263">
                                                        津巴布韦</option>
                                                
                                                <option value="150_687">
                                                        喀里多尼亚</option>
                                                
                                                <option value="37_237">
                                                        喀麦隆</option>
                                                
                                                <option value="171_974">
                                                        卡塔尔</option>
                                                
                                                <option value="40_1">
                                                        开曼群岛</option>
                                                
                                                <option value="46_61">
                                                        科科斯群岛</option>
                                                
                                                <option value="48_269">
                                                        科摩罗</option>
                                                
                                                <option value="110_">
                                                        科索沃</option>
                                                
                                                <option value="52_225">
                                                        科特迪亚</option>
                                                
                                                <option value="111_965">
                                                        科威特</option>
                                                
                                                <option value="53_385">
                                                        克罗地亚</option>
                                                
                                                <option value="108_254">
                                                        肯尼亚</option>
                                                
                                                <option value="50_682">
                                                        库克群岛</option>
                                                
                                                <option value="114_371">
                                                        拉脱维亚</option>
                                                
                                                <option value="116_266">
                                                        莱索托</option>
                                                
                                                <option value="113_856">
                                                        老挝</option>
                                                
                                                <option value="115_961">
                                                        黎巴嫩</option>
                                                
                                                <option value="120_370">
                                                        立陶宛</option>
                                                
                                                <option value="117_231">
                                                        利比里亚</option>
                                                
                                                <option value="118_218">
                                                        利比亚</option>
                                                
                                                <option value="119_423">
                                                        列支敦士登</option>
                                                
                                                <option value="172_262">
                                                        留尼旺岛</option>
                                                
                                                <option value="121_352">
                                                        卢森堡</option>
                                                
                                                <option value="175_250">
                                                        卢旺达</option>
                                                
                                                <option value="173_40">
                                                        罗马尼亚</option>
                                                
                                                <option value="124_261">
                                                        马达加斯加岛</option>
                                                
                                                <option value="127_960">
                                                        马尔代夫</option>
                                                
                                                <option value="125_265">
                                                        马拉维</option>
                                                
                                                <option value="126_60">
                                                        马来西亚</option>
                                                
                                                <option value="128_223">
                                                        马里</option>
                                                
                                                <option value="132_222">
                                                        马里塔尼亚</option>
                                                
                                                <option value="123_389">
                                                        马其顿</option>
                                                
                                                <option value="129_356">
                                                        马其他</option>
                                                
                                                <option value="130_692">
                                                        马绍尔群岛</option>
                                                
                                                <option value="131_596">
                                                        马提尼克</option>
                                                
                                                <option value="134_262">
                                                        马约特岛</option>
                                                
                                                <option value="133_230">
                                                        毛里求斯</option>
                                                
                                                <option value="223_1">
                                                        美国</option>
                                                
                                                <option value="231_1">
                                                        美属维京群岛</option>
                                                
                                                <option value="139_976">
                                                        蒙古</option>
                                                
                                                <option value="141_1">
                                                        蒙特色拉特岛</option>
                                                
                                                <option value="18_880">
                                                        孟加拉国</option>
                                                
                                                <option value="165_51">
                                                        秘鲁</option>
                                                
                                                <option value="136_691">
                                                        密克罗尼西亚</option>
                                                
                                                <option value="144_95">
                                                        缅甸</option>
                                                
                                                <option value="137_373">
                                                        摩尔多瓦</option>
                                                
                                                <option value="142_212">
                                                        摩洛哥</option>
                                                
                                                <option value="138_377">
                                                        摩纳哥</option>
                                                
                                                <option value="143_258">
                                                        莫桑比克</option>
                                                
                                                <option value="135_52">
                                                        墨西哥</option>
                                                
                                                <option value="145_264">
                                                        纳米比亚</option>
                                                
                                                <option value="193_27">
                                                        南非</option>
                                                
                                                <option value="8_">
                                                        南极洲</option>
                                                
                                                <option value="146_674">
                                                        瑙鲁</option>
                                                
                                                <option value="147_977">
                                                        尼泊尔</option>
                                                
                                                <option value="152_505">
                                                        尼加拉瓜</option>
                                                
                                                <option value="153_227">
                                                        尼日尔</option>
                                                
                                                <option value="154_234">
                                                        尼日利亚</option>
                                                
                                                <option value="155_683">
                                                        纽埃</option>
                                                
                                                <option value="158_47">
                                                        挪威</option>
                                                
                                                <option value="156_672">
                                                        诺福克岛</option>
                                                
                                                <option value="161_680">
                                                        帕劳</option>
                                                
                                                <option value="167_">
                                                        皮特克恩岛</option>
                                                
                                                <option value="169_351">
                                                        葡萄牙</option>
                                                
                                                <option value="105_81">
                                                        日本</option>
                                                
                                                <option value="203_46">
                                                        瑞典</option>
                                                
                                                <option value="204_41">
                                                        瑞士</option>
                                                
                                                <option value="63_503">
                                                        萨尔瓦多</option>
                                                
                                                <option value="180_685">
                                                        萨摩亚</option>
                                                
                                                <option value="4_1">
                                                        萨摩亚群岛</option>
                                                
                                                <option value="185_381">
                                                        塞尔维亚</option>
                                                
                                                <option value="187_232">
                                                        塞拉利昂</option>
                                                
                                                <option value="184_221">
                                                        塞内加尔</option>
                                                
                                                <option value="55_357">
                                                        塞浦路斯</option>
                                                
                                                <option value="186_248">
                                                        塞舌尔</option>
                                                
                                                <option value="183_966">
                                                        沙特阿拉伯</option>
                                                
                                                <option value="176_590">
                                                        圣巴托洛缪岛</option>
                                                
                                                <option value="45_61">
                                                        圣诞岛</option>
                                                
                                                <option value="182_239">
                                                        圣多美与普林希比共和国</option>
                                                
                                                <option value="197_290">
                                                        圣赫勒拿岛</option>
                                                
                                                <option value="177_1">
                                                        圣基茨和尼维斯</option>
                                                
                                                <option value="178_1">
                                                        圣卢西亚岛</option>
                                                
                                                <option value="181_378">
                                                        圣马力诺</option>
                                                
                                                <option value="198_508">
                                                        圣皮埃尔和密克隆岛</option>
                                                
                                                <option value="179_1">
                                                        圣文森特及格林纳丁斯</option>
                                                
                                                <option value="196_94">
                                                        斯里兰卡</option>
                                                
                                                <option value="189_421">
                                                        斯洛伐克</option>
                                                
                                                <option value="190_386">
                                                        斯洛文尼亚</option>
                                                
                                                <option value="201_47">
                                                        斯瓦尔巴特和扬马延岛</option>
                                                
                                                <option value="202_268">
                                                        斯威士兰</option>
                                                
                                                <option value="199_249">
                                                        苏丹</option>
                                                
                                                <option value="200_597">
                                                        苏里南</option>
                                                
                                                <option value="191_677">
                                                        所罗门群岛</option>
                                                
                                                <option value="192_252">
                                                        索马里</option>
                                                
                                                <option value="207_992">
                                                        塔吉克斯坦</option>
                                                
                                                <option value="206_886">
                                                        台湾</option>
                                                
                                                <option value="209_66">
                                                        泰国</option>
                                                
                                                <option value="208_255">
                                                        坦桑尼亚</option>
                                                
                                                <option value="212_676">
                                                        汤加</option>
                                                
                                                <option value="217_1">
                                                        特克斯和凯科斯群岛</option>
                                                
                                                <option value="213_1">
                                                        特立尼达和多巴哥</option>
                                                
                                                <option value="214_216">
                                                        突尼斯</option>
                                                
                                                <option value="218_688">
                                                        图瓦卢</option>
                                                
                                                <option value="215_90">
                                                        土耳其</option>
                                                
                                                <option value="216_993">
                                                        土库曼斯坦</option>
                                                
                                                <option value="211_690">
                                                        托克劳群岛</option>
                                                
                                                <option value="232_681">
                                                        瓦利斯群岛和富图纳群岛</option>
                                                
                                                <option value="226_678">
                                                        瓦努阿图</option>
                                                
                                                <option value="87_502">
                                                        危地马拉</option>
                                                
                                                <option value="228_58">
                                                        委内瑞拉</option>
                                                
                                                <option value="32_673">
                                                        文莱达鲁萨兰国</option>
                                                
                                                <option value="219_256">
                                                        乌干达</option>
                                                
                                                <option value="220_380">
                                                        乌克兰</option>
                                                
                                                <option value="224_598">
                                                        乌拉圭</option>
                                                
                                                <option value="225_998">
                                                        乌兹别克斯坦</option>
                                                
                                                <option value="195_34">
                                                        西班牙</option>
                                                
                                                <option value="233_">
                                                        西撒哈拉</option>
                                                
                                                <option value="82_30">
                                                        希腊</option>
                                                
                                                <option value="94_852">
                                                        香港</option>
                                                
                                                <option value="188_65">
                                                        新加坡</option>
                                                
                                                <option value="151_64">
                                                        新西兰</option>
                                                
                                                <option value="95_36">
                                                        匈牙利</option>
                                                
                                                <option value="104_1">
                                                        牙买加</option>
                                                
                                                <option value="11_374">
                                                        亚美尼亚</option>
                                                
                                                <option value="234_967">
                                                        也门</option>
                                                
                                                <option value="100_964">
                                                        伊拉克</option>
                                                
                                                <option value="99_98">
                                                        伊朗</option>
                                                
                                                <option value="102_972">
                                                        以色列</option>
                                                
                                                <option value="103_39">
                                                        意大利</option>
                                                
                                                <option value="97_91">
                                                        印度</option>
                                                
                                                <option value="98_62">
                                                        印度尼西亚</option>
                                                
                                                <option value="222_44">
                                                        英国</option>
                                                
                                                <option value="230_1">
                                                        英属维京群岛</option>
                                                
                                                <option value="31_246">
                                                        英属印度洋领地</option>
                                                
                                                <option value="106_962">
                                                        约旦</option>
                                                
                                                <option value="229_84">
                                                        越南</option>
                                                
                                                <option value="235_260">
                                                        赞比亚</option>
                                                
                                                <option value="42_235">
                                                        乍得</option>
                                                
                                                <option value="81_350">
                                                        直布罗陀</option>
                                                
                                                <option value="43_56">
                                                        智利</option>
                                                
                                                <option value="41_236">
                                                        中非共和国</option>
                                                
                                                <option value="44_86" selected="selected">
                                                        中国</option>
                                                
                                            </select>
                                        	
                                            <select class="text" style="height:24px;font-size:12px;width:57px;padding:3px 0;" id="NationMyOption" name="NationMyOption">
                                            	<option selected="selected">汉族</option>
                                                 
                                                <option value="18">
                                                        阿昌族</option>
                                                
                                                <option value="11">
                                                        白族</option>
                                                
                                                <option value="27">
                                                        保安族</option>
                                                
                                                <option value="7">
                                                        布朗族</option>
                                                
                                                <option value="6">
                                                        布依族</option>
                                                
                                                <option value="54">
                                                        藏族</option>
                                                
                                                <option value="39">
                                                        朝鲜族</option>
                                                
                                                <option value="13">
                                                        达斡尔族</option>
                                                
                                                <option value="41">
                                                        傣族</option>
                                                
                                                <option value="52">
                                                        德昂族</option>
                                                
                                                <option value="8">
                                                        东乡族</option>
                                                
                                                <option value="22">
                                                        侗族</option>
                                                
                                                <option value="29">
                                                        独龙族</option>
                                                
                                                <option value="28">
                                                        俄罗斯族</option>
                                                
                                                <option value="34">
                                                        鄂伦春族</option>
                                                
                                                <option value="35">
                                                        鄂温克族</option>
                                                
                                                <option value="32">
                                                        高山族</option>
                                                
                                                <option value="25">
                                                        哈尼族</option>
                                                
                                                <option value="26">
                                                        哈萨克族</option>
                                                
                                                <option value="12" selected="selected">
                                                        汉族</option>
                                                
                                                <option value="50">
                                                        赫哲族</option>
                                                
                                                <option value="14">
                                                        回族</option>
                                                
                                                <option value="33">
                                                        基诺族</option>
                                                
                                                <option value="23">
                                                        京族</option>
                                                
                                                <option value="40">
                                                        景颇族</option>
                                                
                                                <option value="24">
                                                        柯尔克孜族</option>
                                                
                                                <option value="20">
                                                        拉祜族</option>
                                                
                                                <option value="53">
                                                        黎族</option>
                                                
                                                <option value="42">
                                                        傈僳族</option>
                                                
                                                <option value="31">
                                                        珞巴族</option>
                                                
                                                <option value="48">
                                                        满族</option>
                                                
                                                <option value="4">
                                                        毛南族</option>
                                                
                                                <option value="2">
                                                        门巴族</option>
                                                
                                                <option value="46">
                                                        蒙古族</option>
                                                
                                                <option value="21">
                                                        苗族</option>
                                                
                                                <option value="10">
                                                        仫佬族</option>
                                                
                                                <option value="19">
                                                        纳西族</option>
                                                
                                                <option value="30">
                                                        怒族</option>
                                                
                                                <option value="44">
                                                        普米族</option>
                                                
                                                <option value="17">
                                                        羌族</option>
                                                
                                                <option value="51">
                                                        撒拉族</option>
                                                
                                                <option value="43">
                                                        畲族</option>
                                                
                                                <option value="3">
                                                        水族</option>
                                                
                                                <option value="37">
                                                        塔吉克族</option>
                                                
                                                <option value="38">
                                                        塔塔尔族</option>
                                                
                                                <option value="56">
                                                        土家族</option>
                                                
                                                <option value="1">
                                                        土族</option>
                                                
                                                <option value="15">
                                                        佤族</option>
                                                
                                                <option value="36">
                                                        维吾尔族</option>
                                                
                                                <option value="5">
                                                        乌孜别克族</option>
                                                
                                                <option value="47">
                                                        锡伯族</option>
                                                
                                                <option value="49">
                                                        瑶族</option>
                                                
                                                <option value="55">
                                                        彝族</option>
                                                
                                                <option value="9">
                                                        仡佬族</option>
                                                
                                                <option value="45">
                                                        裕固族</option>
                                                
                                                <option value="16">
                                                        壮族</option>
                                                
                                               
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                
                                 <tr id="cardTypeTr" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>证件类型：
                                    </td>
                                    <td>
                                        <div>
                                            <select name="CartMyOption" id="CartMyOption" onchange="ChangeCartOption(this)" class="text" style="height:24px;font-size:12px;width:163px;padding:3px 0;">
                                            	<option selected="selected" value="111">身份证</option>
                                                <option value="414">护照</option>
                                                <option value="114">军人证</option> 
                                            </select>
                                        </div>
                                    </td>
                                </tr>

                                 <tr id="cardTr" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>证件号码：
                                    </td>
                                    <td>
                                         <input type="text" class="text" id="IDNumber" name="IDNumber" onblur="CartTest(this)">
                                        <span>
                                            <img style="vertical-align: middle;*vertical-align:baseline; display:none;" src="static/submit_order/RoomCorrectBtnNew.gif">
                                        </span>
                                        <p class="ColorGray999 PT5">请您放心，身份信息不会对外公开。</p>
                                        <div class="PromptErrorBox" id="CardErrorMsg" name="CardErrorMsg">
                                        	<span class="PromptError" style="display:none">信息错误，请重新填写</span>
                                        </div>
                                    </td>
                                </tr>                                
                                <!--2015-11-26End-->
                                <tr>
                                <td class="Infor_LTd">
                                        <b>*</b>手 机：
                                    </td>
                                    <td>
                                        <div>
                                            <div class="MB10">
                                                <select class="text" style="height: 24px; font-size: 12px; width: 163px; padding: 3px 0;" id="countryselect" name="countryselect">
                                                    
                                                    <option value="2_355">
                                                        阿尔巴尼亚</option>
                                                    
                                                    <option value="3_213">
                                                        阿尔及利亚</option>
                                                    
                                                    <option value="1_93">
                                                        阿富汗</option>
                                                    
                                                    <option value="10_54">
                                                        阿根廷</option>
                                                    
                                                    <option value="221_971">
                                                        阿拉伯联合酋长国</option>
                                                    
                                                    <option value="205_963">
                                                        阿拉伯叙利亚共和国</option>
                                                    
                                                    <option value="12_297">
                                                        阿鲁巴岛</option>
                                                    
                                                    <option value="159_968">
                                                        阿曼</option>
                                                    
                                                    <option value="15_994">
                                                        阿塞拜疆</option>
                                                    
                                                    <option value="62_20">
                                                        埃及</option>
                                                    
                                                    <option value="67_251">
                                                        埃塞俄比亚</option>
                                                    
                                                    <option value="101_353">
                                                        爱尔兰</option>
                                                    
                                                    <option value="66_372">
                                                        爱沙尼亚</option>
                                                    
                                                    <option value="5_376">
                                                        安道尔</option>
                                                    
                                                    <option value="6_244">
                                                        安哥拉</option>
                                                    
                                                    <option value="7_1">
                                                        安圭拉岛</option>
                                                    
                                                    <option value="9_1">
                                                        安提瓜和巴布达</option>
                                                    
                                                    <option value="14_43">
                                                        奥地利 </option>
                                                    
                                                    <option value="13_61">
                                                        澳大利亚</option>
                                                    
                                                    <option value="122_853">
                                                        澳门</option>
                                                    
                                                    <option value="19_1">
                                                        巴巴多斯</option>
                                                    
                                                    <option value="163_675">
                                                        巴布亚新几内亚</option>
                                                    
                                                    <option value="16_1">
                                                        巴哈马群岛</option>
                                                    
                                                    <option value="160_92">
                                                        巴基斯坦</option>
                                                    
                                                    <option value="164_595">
                                                        巴拉圭</option>
                                                    
                                                    <option value="17_973">
                                                        巴林岛</option>
                                                    
                                                    <option value="162_507">
                                                        巴拿马</option>
                                                    
                                                    <option value="30_55">
                                                        巴西</option>
                                                    
                                                    <option value="20_375">
                                                        白俄罗斯</option>
                                                    
                                                    <option value="24_1">
                                                        百慕大群岛</option>
                                                    
                                                    <option value="33_359">
                                                        保加利亚</option>
                                                    
                                                    <option value="157_1">
                                                        北马里亚诺群岛</option>
                                                    
                                                    <option value="23_229">
                                                        贝宁</option>
                                                    
                                                    <option value="21_32">
                                                        比利时</option>
                                                    
                                                    <option value="96_354">
                                                        冰岛</option>
                                                    
                                                    <option value="170_1">
                                                        波多黎各</option>
                                                    
                                                    <option value="168_48">
                                                        波兰</option>
                                                    
                                                    <option value="27_387">
                                                        波斯尼亚</option>
                                                    
                                                    <option value="26_591">
                                                        玻利维亚</option>
                                                    
                                                    <option value="22_501">
                                                        伯利兹</option>
                                                    
                                                    <option value="28_267">
                                                        博茨瓦纳</option>
                                                    
                                                    <option value="25_975">
                                                        不丹</option>
                                                    
                                                    <option value="34_226">
                                                        布基纳法索</option>
                                                    
                                                    <option value="35_257">
                                                        布隆迪</option>
                                                    
                                                    <option value="29_">
                                                        布维岛</option>
                                                    
                                                    <option value="64_240">
                                                        赤道几内亚</option>
                                                    
                                                    <option value="57_45">
                                                        丹麦</option>
                                                    
                                                    <option value="79_49">
                                                        德国</option>
                                                    
                                                    <option value="210_228">
                                                        多哥</option>
                                                    
                                                    <option value="59_1">
                                                        多米尼加岛</option>
                                                    
                                                    <option value="60_1">
                                                        多米尼加共和国</option>
                                                    
                                                    <option value="174_7">
                                                        俄罗斯联邦</option>
                                                    
                                                    <option value="61_593">
                                                        厄瓜多尔</option>
                                                    
                                                    <option value="65_291">
                                                        厄立特里亚</option>
                                                    
                                                    <option value="72_33">
                                                        法国</option>
                                                    
                                                    <option value="69_298">
                                                        法罗群岛</option>
                                                    
                                                    <option value="74_689">
                                                        法属波利尼西亚</option>
                                                    
                                                    <option value="73_594">
                                                        法属圭亚那</option>
                                                    
                                                    <option value="75_">
                                                        法属南部领地</option>
                                                    
                                                    <option value="227_379">
                                                        梵蒂冈</option>
                                                    
                                                    <option value="166_63">
                                                        菲律宾</option>
                                                    
                                                    <option value="70_679">
                                                        斐济</option>
                                                    
                                                    <option value="71_358">
                                                        芬兰</option>
                                                    
                                                    <option value="39_238">
                                                        佛得角</option>
                                                    
                                                    <option value="68_500">
                                                        福克兰群岛</option>
                                                    
                                                    <option value="77_220">
                                                        冈比亚</option>
                                                    
                                                    <option value="49_242">
                                                        刚果</option>
                                                    
                                                    <option value="47_57">
                                                        哥伦比亚</option>
                                                    
                                                    <option value="51_506">
                                                        哥斯达黎加</option>
                                                    
                                                    <option value="84_1">
                                                        格林纳达</option>
                                                    
                                                    <option value="83_299">
                                                        格陵兰</option>
                                                    
                                                    <option value="78_995">
                                                        格鲁吉亚</option>
                                                    
                                                    <option value="54_53">
                                                        古巴</option>
                                                    
                                                    <option value="85_590">
                                                        瓜德罗普岛</option>
                                                    
                                                    <option value="86_1">
                                                        关岛</option>
                                                    
                                                    <option value="90_592">
                                                        圭亚那</option>
                                                    
                                                    <option value="107_7">
                                                        哈萨克斯坦</option>
                                                    
                                                    <option value="91_509">
                                                        海地</option>
                                                    
                                                    <option value="194_82">
                                                        韩国</option>
                                                    
                                                    <option value="148_31">
                                                        荷兰</option>
                                                    
                                                    <option value="149_599">
                                                        荷属安的列斯</option>
                                                    
                                                    <option value="92_">
                                                        赫德岛和麦克唐纳群岛</option>
                                                    
                                                    <option value="140_382">
                                                        黑山共和国</option>
                                                    
                                                    <option value="93_504">
                                                        洪都拉斯</option>
                                                    
                                                    <option value="109_686">
                                                        基里巴斯</option>
                                                    
                                                    <option value="58_253">
                                                        吉布提</option>
                                                    
                                                    <option value="112_996">
                                                        吉尔吉斯斯坦</option>
                                                    
                                                    <option value="88_224">
                                                        几内亚</option>
                                                    
                                                    <option value="89_245">
                                                        几内亚比绍</option>
                                                    
                                                    <option value="38_1">
                                                        加拿大</option>
                                                    
                                                    <option value="80_233">
                                                        加纳</option>
                                                    
                                                    <option value="76_241">
                                                        加蓬</option>
                                                    
                                                    <option value="36_855">
                                                        柬埔寨</option>
                                                    
                                                    <option value="56_420">
                                                        捷克共和国</option>
                                                    
                                                    <option value="236_263">
                                                        津巴布韦</option>
                                                    
                                                    <option value="150_687">
                                                        喀里多尼亚</option>
                                                    
                                                    <option value="37_237">
                                                        喀麦隆</option>
                                                    
                                                    <option value="171_974">
                                                        卡塔尔</option>
                                                    
                                                    <option value="40_1">
                                                        开曼群岛</option>
                                                    
                                                    <option value="46_61">
                                                        科科斯群岛</option>
                                                    
                                                    <option value="48_269">
                                                        科摩罗</option>
                                                    
                                                    <option value="110_">
                                                        科索沃</option>
                                                    
                                                    <option value="52_225">
                                                        科特迪亚</option>
                                                    
                                                    <option value="111_965">
                                                        科威特</option>
                                                    
                                                    <option value="53_385">
                                                        克罗地亚</option>
                                                    
                                                    <option value="108_254">
                                                        肯尼亚</option>
                                                    
                                                    <option value="50_682">
                                                        库克群岛</option>
                                                    
                                                    <option value="114_371">
                                                        拉脱维亚</option>
                                                    
                                                    <option value="116_266">
                                                        莱索托</option>
                                                    
                                                    <option value="113_856">
                                                        老挝</option>
                                                    
                                                    <option value="115_961">
                                                        黎巴嫩</option>
                                                    
                                                    <option value="120_370">
                                                        立陶宛</option>
                                                    
                                                    <option value="117_231">
                                                        利比里亚</option>
                                                    
                                                    <option value="118_218">
                                                        利比亚</option>
                                                    
                                                    <option value="119_423">
                                                        列支敦士登</option>
                                                    
                                                    <option value="172_262">
                                                        留尼旺岛</option>
                                                    
                                                    <option value="121_352">
                                                        卢森堡</option>
                                                    
                                                    <option value="175_250">
                                                        卢旺达</option>
                                                    
                                                    <option value="173_40">
                                                        罗马尼亚</option>
                                                    
                                                    <option value="124_261">
                                                        马达加斯加岛</option>
                                                    
                                                    <option value="127_960">
                                                        马尔代夫</option>
                                                    
                                                    <option value="125_265">
                                                        马拉维</option>
                                                    
                                                    <option value="126_60">
                                                        马来西亚</option>
                                                    
                                                    <option value="128_223">
                                                        马里</option>
                                                    
                                                    <option value="132_222">
                                                        马里塔尼亚</option>
                                                    
                                                    <option value="123_389">
                                                        马其顿</option>
                                                    
                                                    <option value="129_356">
                                                        马其他</option>
                                                    
                                                    <option value="130_692">
                                                        马绍尔群岛</option>
                                                    
                                                    <option value="131_596">
                                                        马提尼克</option>
                                                    
                                                    <option value="134_262">
                                                        马约特岛</option>
                                                    
                                                    <option value="133_230">
                                                        毛里求斯</option>
                                                    
                                                    <option value="223_1">
                                                        美国</option>
                                                    
                                                    <option value="231_1">
                                                        美属维京群岛</option>
                                                    
                                                    <option value="139_976">
                                                        蒙古</option>
                                                    
                                                    <option value="141_1">
                                                        蒙特色拉特岛</option>
                                                    
                                                    <option value="18_880">
                                                        孟加拉国</option>
                                                    
                                                    <option value="165_51">
                                                        秘鲁</option>
                                                    
                                                    <option value="136_691">
                                                        密克罗尼西亚</option>
                                                    
                                                    <option value="144_95">
                                                        缅甸</option>
                                                    
                                                    <option value="137_373">
                                                        摩尔多瓦</option>
                                                    
                                                    <option value="142_212">
                                                        摩洛哥</option>
                                                    
                                                    <option value="138_377">
                                                        摩纳哥</option>
                                                    
                                                    <option value="143_258">
                                                        莫桑比克</option>
                                                    
                                                    <option value="135_52">
                                                        墨西哥</option>
                                                    
                                                    <option value="145_264">
                                                        纳米比亚</option>
                                                    
                                                    <option value="193_27">
                                                        南非</option>
                                                    
                                                    <option value="8_">
                                                        南极洲</option>
                                                    
                                                    <option value="146_674">
                                                        瑙鲁</option>
                                                    
                                                    <option value="147_977">
                                                        尼泊尔</option>
                                                    
                                                    <option value="152_505">
                                                        尼加拉瓜</option>
                                                    
                                                    <option value="153_227">
                                                        尼日尔</option>
                                                    
                                                    <option value="154_234">
                                                        尼日利亚</option>
                                                    
                                                    <option value="155_683">
                                                        纽埃</option>
                                                    
                                                    <option value="158_47">
                                                        挪威</option>
                                                    
                                                    <option value="156_672">
                                                        诺福克岛</option>
                                                    
                                                    <option value="161_680">
                                                        帕劳</option>
                                                    
                                                    <option value="167_">
                                                        皮特克恩岛</option>
                                                    
                                                    <option value="169_351">
                                                        葡萄牙</option>
                                                    
                                                    <option value="105_81">
                                                        日本</option>
                                                    
                                                    <option value="203_46">
                                                        瑞典</option>
                                                    
                                                    <option value="204_41">
                                                        瑞士</option>
                                                    
                                                    <option value="63_503">
                                                        萨尔瓦多</option>
                                                    
                                                    <option value="180_685">
                                                        萨摩亚</option>
                                                    
                                                    <option value="4_1">
                                                        萨摩亚群岛</option>
                                                    
                                                    <option value="185_381">
                                                        塞尔维亚</option>
                                                    
                                                    <option value="187_232">
                                                        塞拉利昂</option>
                                                    
                                                    <option value="184_221">
                                                        塞内加尔</option>
                                                    
                                                    <option value="55_357">
                                                        塞浦路斯</option>
                                                    
                                                    <option value="186_248">
                                                        塞舌尔</option>
                                                    
                                                    <option value="183_966">
                                                        沙特阿拉伯</option>
                                                    
                                                    <option value="176_590">
                                                        圣巴托洛缪岛</option>
                                                    
                                                    <option value="45_61">
                                                        圣诞岛</option>
                                                    
                                                    <option value="182_239">
                                                        圣多美与普林希比共和国</option>
                                                    
                                                    <option value="197_290">
                                                        圣赫勒拿岛</option>
                                                    
                                                    <option value="177_1">
                                                        圣基茨和尼维斯</option>
                                                    
                                                    <option value="178_1">
                                                        圣卢西亚岛</option>
                                                    
                                                    <option value="181_378">
                                                        圣马力诺</option>
                                                    
                                                    <option value="198_508">
                                                        圣皮埃尔和密克隆岛</option>
                                                    
                                                    <option value="179_1">
                                                        圣文森特及格林纳丁斯</option>
                                                    
                                                    <option value="196_94">
                                                        斯里兰卡</option>
                                                    
                                                    <option value="189_421">
                                                        斯洛伐克</option>
                                                    
                                                    <option value="190_386">
                                                        斯洛文尼亚</option>
                                                    
                                                    <option value="201_47">
                                                        斯瓦尔巴特和扬马延岛</option>
                                                    
                                                    <option value="202_268">
                                                        斯威士兰</option>
                                                    
                                                    <option value="199_249">
                                                        苏丹</option>
                                                    
                                                    <option value="200_597">
                                                        苏里南</option>
                                                    
                                                    <option value="191_677">
                                                        所罗门群岛</option>
                                                    
                                                    <option value="192_252">
                                                        索马里</option>
                                                    
                                                    <option value="207_992">
                                                        塔吉克斯坦</option>
                                                    
                                                    <option value="206_886">
                                                        台湾</option>
                                                    
                                                    <option value="209_66">
                                                        泰国</option>
                                                    
                                                    <option value="208_255">
                                                        坦桑尼亚</option>
                                                    
                                                    <option value="212_676">
                                                        汤加</option>
                                                    
                                                    <option value="217_1">
                                                        特克斯和凯科斯群岛</option>
                                                    
                                                    <option value="213_1">
                                                        特立尼达和多巴哥</option>
                                                    
                                                    <option value="214_216">
                                                        突尼斯</option>
                                                    
                                                    <option value="218_688">
                                                        图瓦卢</option>
                                                    
                                                    <option value="215_90">
                                                        土耳其</option>
                                                    
                                                    <option value="216_993">
                                                        土库曼斯坦</option>
                                                    
                                                    <option value="211_690">
                                                        托克劳群岛</option>
                                                    
                                                    <option value="232_681">
                                                        瓦利斯群岛和富图纳群岛</option>
                                                    
                                                    <option value="226_678">
                                                        瓦努阿图</option>
                                                    
                                                    <option value="87_502">
                                                        危地马拉</option>
                                                    
                                                    <option value="228_58">
                                                        委内瑞拉</option>
                                                    
                                                    <option value="32_673">
                                                        文莱达鲁萨兰国</option>
                                                    
                                                    <option value="219_256">
                                                        乌干达</option>
                                                    
                                                    <option value="220_380">
                                                        乌克兰</option>
                                                    
                                                    <option value="224_598">
                                                        乌拉圭</option>
                                                    
                                                    <option value="225_998">
                                                        乌兹别克斯坦</option>
                                                    
                                                    <option value="195_34">
                                                        西班牙</option>
                                                    
                                                    <option value="233_">
                                                        西撒哈拉</option>
                                                    
                                                    <option value="82_30">
                                                        希腊</option>
                                                    
                                                    <option value="94_852">
                                                        香港</option>
                                                    
                                                    <option value="188_65">
                                                        新加坡</option>
                                                    
                                                    <option value="151_64">
                                                        新西兰</option>
                                                    
                                                    <option value="95_36">
                                                        匈牙利</option>
                                                    
                                                    <option value="104_1">
                                                        牙买加</option>
                                                    
                                                    <option value="11_374">
                                                        亚美尼亚</option>
                                                    
                                                    <option value="234_967">
                                                        也门</option>
                                                    
                                                    <option value="100_964">
                                                        伊拉克</option>
                                                    
                                                    <option value="99_98">
                                                        伊朗</option>
                                                    
                                                    <option value="102_972">
                                                        以色列</option>
                                                    
                                                    <option value="103_39">
                                                        意大利</option>
                                                    
                                                    <option value="97_91">
                                                        印度</option>
                                                    
                                                    <option value="98_62">
                                                        印度尼西亚</option>
                                                    
                                                    <option value="222_44">
                                                        英国</option>
                                                    
                                                    <option value="230_1">
                                                        英属维京群岛</option>
                                                    
                                                    <option value="31_246">
                                                        英属印度洋领地</option>
                                                    
                                                    <option value="106_962">
                                                        约旦</option>
                                                    
                                                    <option value="229_84">
                                                        越南</option>
                                                    
                                                    <option value="235_260">
                                                        赞比亚</option>
                                                    
                                                    <option value="42_235">
                                                        乍得</option>
                                                    
                                                    <option value="81_350">
                                                        直布罗陀</option>
                                                    
                                                    <option value="43_56">
                                                        智利</option>
                                                    
                                                    <option value="41_236">
                                                        中非共和国</option>
                                                    
                                                    <option value="44_86" selected="selected">
                                                        中国</option>
                                                    
                                                </select>
                                            </div>
                                            <div id="yanzhengmatanceng" style="padding-left: 207px; top: -110px; position: absolute;
                                                display: none;">
                                            </div>
                                            <div>
                                                <input type="text" disabled="disabled" class="text" value="+86" style="color: #333;
                                                    background-color: #ece9d8; width: 50px; margin-right: -1px;" id="telcode"><input style="width: 98px;" type="text" class="text" id="txttel" name="txttel" onchange="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/phone/&#39;]);}catch(e){}"><input name="telhide" type="hidden" id="telhide"><input name="telCodehide" type="hidden" id="telCodehide">
                                                <span>
                                                    <img alt="" id="imgtel" style="vertical-align: middle;" src="static/submit_order/RoomCorrectBtnNew.gif"></span>
                                                <span class="VerificationBtn">
                                                    <input style="display: none;" type="button" id="getYanZhengMa" value="获取验证码">
                                                </span>
                                            </div>
                                            <div id="teltip" class="PromptErrorBox">
                                                <span class="PromptError" style="display: none;"></span>
                                            </div>
                                            <div id="ThirdPartyLogin" style="display: none;" class="X_formActions">
                                                也可用第三方登录： <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/qq/&#39;]);}catch(e){}" class="ActionsTeng" href="http://openapi.qzone.qq.com/oauth/show?which=Login&amp;response_type=code&amp;client_id=100235923&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dqq%26fromurl%3Dhttp%253a%252f%252fwww.youtx.com%252fpayment%252fbooking%252fbookingnew.aspx%253fhouseid%253d144142%2526livenum%253d1%2526begintime%253d2018-06-05%2526endtime%253d2018-06-06%2526rooms%253d1%2523txtname&amp;scope=get_user_info,get_fanslist,get_idollist">
                                                    QQ</a> <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/weibo/&#39;]);}catch(e){}" class="ActionsXin" href="https://api.weibo.com/oauth2/authorize?client_id=3568509101&amp;with_offical_account=1&amp;response_type=code&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dsina%26fromurl%3Dhttp%253a%252f%252fwww.youtx.com%252fpayment%252fbooking%252fbookingnew.aspx%253fhouseid%253d144142%2526livenum%253d1%2526begintime%253d2018-06-05%2526endtime%253d2018-06-06%2526rooms%253d1%2523txtname">
                                                        新浪微博</a> <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/taobao/&#39;]);}catch(e){}" class="ActionsTao" href="https://oauth.taobao.com/authorize?response_type=code&amp;client_id=21036824&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dtaobao%26fromurl%3Dhttp%25253a%25252f%25252fwww.youtx.com%25252fpayment%25252fbooking%25252fbookingnew.aspx%25253fhouseid%25253d144142%252526livenum%25253d1%252526begintime%25253d2018-06-05%252526endtime%25253d2018-06-06%252526rooms%25253d1%252523txtname&amp;state=1212&amp;scope=item,promotion,item,usergrade">
                                                            淘宝</a> <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/soufun/&#39;]);}catch(e){}" class="ActionsSou" href="https://passport.youtx.com/profile/soufun.aspx?response_type=code&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dsoufun%26fromurl%3Dhttp%253a%252f%252fwww.youtx.com%252fpayment%252fbooking%252fbookingnew.aspx%253fhouseid%253d144142%2526livenum%253d1%2526begintime%253d2018-06-05%2526endtime%253d2018-06-06%2526rooms%253d1%2523txtname">
                                                                房天下</a> <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/renren/&#39;]);}catch(e){}" class="ActionsRen" href="https://graph.renren.com/oauth/authorize?client_id=d8c6fc1a674c4307a00c7e7d95526143&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Drenren%26fromurl%3Dhttp%253a%252f%252fwww.youtx.com%252fpayment%252fbooking%252fbookingnew.aspx%253fhouseid%253d144142%2526livenum%253d1%2526begintime%253d2018-06-05%2526endtime%253d2018-06-06%2526rooms%253d1%2523txtname&amp;response_type=code&amp;scope=publish_feed">
                                                                    人人网</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr id="YanZhengMa" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>验证码：
                                    </td>
                                    <td>
                                        <input type="text" class="text" id="txtYanZhengMa" name="txtYanZhengMa" onchange="_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/yanzhengma/&#39;]);">
                                        <span>
                                            <img alt="" id="imgYanZhengMa" style="vertical-align: middle; *vertical-align: baseline;
                                                display: none;" src="static/submit_order/RoomCorrectBtnNew.gif"></span>
                                        <div class="PromptErrorBox">
                                            <span class="PromptError" style="display: none;"></span><span class="CorrectPass" style="display: none;">验证码已发送，请正确输入</span>
                                        </div>
                                        <div id="TelVerify" class="TelVerify" style="display: none;">
                                            若1分钟内收不到验证码，请点击 <span class="VerifBtn">
                                                <input id="dianhuayanzheng" type="button" value="电话验证"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr id="EMail" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>邮 箱：
                                    </td>
                                    <td>
                                        <input type="text" class="text" id="txtmail" name="txtmail" onchange="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/mail/&#39;]);}catch(e){}">
                                        <span>
                                            <img alt="" id="imgmail" style="vertical-align: middle;" src="static/submit_order/RoomCorrectBtnNew.gif"></span>
                                        <div class="PromptErrorBox">
                                            <span class="PromptError" style=""></span> <span class="PromptError02" style="display: none;">该邮箱已注册，请<a href="javascript:void(0);" onclick="mailSighIn()">登录</a>或<a style="cursor: pointer" onclick="window.open(&#39;/profile/Passport/EditPassword.aspx?Email=&#39;+$(&#39;#txtmail&#39;).val())">找回密码</a></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Infor_LTd" style="padding: 5px 0;">
                                        入住人：
                                    </td>
                                    <td class="middle_radio" style="padding: 5px 0;">
                                        <label>
                                            <input type="radio" class="inputcheckbox" name="rd" id="rd1" checked="checked" value="0" onclick="RdChkChange()"><span>本人</span></label>
                                        <label>
                                            <input type="radio" class="inputcheckbox" name="rd" id="rd2" value="1" onclick="RdChkChange()"><span>非本人</span></label>
                                    </td>
                                </tr>
                                <tr class="CheckIn" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>姓 名：
                                    </td>
                                    <td>
                                        <input type="text" class="text" id="txtcheckinname" name="txtcheckinname" onchange="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/othername/&#39;]);}catch(e){}">
                                        <span>
                                            <img id="imgcheckinname" style="vertical-align: middle; display: none;" src="static/submit_order/RoomCorrectBtnNew.gif"></span>
                                        <div class="PromptErrorBox">
                                            <span class="PromptError" style="display: none">请输入姓名</span></div>
                                    </td>
                                </tr>

                                    <!--2015-11-26Begin-->
                                   <tr class="CheckIn" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>国 籍：
                                    </td>
                                    <td>
                                        <div>
                                       		   <select id="CountryOtherOption" name="CountryOtherOption" class="text" style="height:24px;font-size:12px;width:100px;padding:3px 0;">
                                        
                                                <option value="2_355">
                                                        阿尔巴尼亚</option>
                                                
                                                <option value="3_213">
                                                        阿尔及利亚</option>
                                                
                                                <option value="1_93">
                                                        阿富汗</option>
                                                
                                                <option value="10_54">
                                                        阿根廷</option>
                                                
                                                <option value="221_971">
                                                        阿拉伯联合酋长国</option>
                                                
                                                <option value="205_963">
                                                        阿拉伯叙利亚共和国</option>
                                                
                                                <option value="12_297">
                                                        阿鲁巴岛</option>
                                                
                                                <option value="159_968">
                                                        阿曼</option>
                                                
                                                <option value="15_994">
                                                        阿塞拜疆</option>
                                                
                                                <option value="62_20">
                                                        埃及</option>
                                                
                                                <option value="67_251">
                                                        埃塞俄比亚</option>
                                                
                                                <option value="101_353">
                                                        爱尔兰</option>
                                                
                                                <option value="66_372">
                                                        爱沙尼亚</option>
                                                
                                                <option value="5_376">
                                                        安道尔</option>
                                                
                                                <option value="6_244">
                                                        安哥拉</option>
                                                
                                                <option value="7_1">
                                                        安圭拉岛</option>
                                                
                                                <option value="9_1">
                                                        安提瓜和巴布达</option>
                                                
                                                <option value="14_43">
                                                        奥地利 </option>
                                                
                                                <option value="13_61">
                                                        澳大利亚</option>
                                                
                                                <option value="122_853">
                                                        澳门</option>
                                                
                                                <option value="19_1">
                                                        巴巴多斯</option>
                                                
                                                <option value="163_675">
                                                        巴布亚新几内亚</option>
                                                
                                                <option value="16_1">
                                                        巴哈马群岛</option>
                                                
                                                <option value="160_92">
                                                        巴基斯坦</option>
                                                
                                                <option value="164_595">
                                                        巴拉圭</option>
                                                
                                                <option value="17_973">
                                                        巴林岛</option>
                                                
                                                <option value="162_507">
                                                        巴拿马</option>
                                                
                                                <option value="30_55">
                                                        巴西</option>
                                                
                                                <option value="20_375">
                                                        白俄罗斯</option>
                                                
                                                <option value="24_1">
                                                        百慕大群岛</option>
                                                
                                                <option value="33_359">
                                                        保加利亚</option>
                                                
                                                <option value="157_1">
                                                        北马里亚诺群岛</option>
                                                
                                                <option value="23_229">
                                                        贝宁</option>
                                                
                                                <option value="21_32">
                                                        比利时</option>
                                                
                                                <option value="96_354">
                                                        冰岛</option>
                                                
                                                <option value="170_1">
                                                        波多黎各</option>
                                                
                                                <option value="168_48">
                                                        波兰</option>
                                                
                                                <option value="27_387">
                                                        波斯尼亚</option>
                                                
                                                <option value="26_591">
                                                        玻利维亚</option>
                                                
                                                <option value="22_501">
                                                        伯利兹</option>
                                                
                                                <option value="28_267">
                                                        博茨瓦纳</option>
                                                
                                                <option value="25_975">
                                                        不丹</option>
                                                
                                                <option value="34_226">
                                                        布基纳法索</option>
                                                
                                                <option value="35_257">
                                                        布隆迪</option>
                                                
                                                <option value="29_">
                                                        布维岛</option>
                                                
                                                <option value="64_240">
                                                        赤道几内亚</option>
                                                
                                                <option value="57_45">
                                                        丹麦</option>
                                                
                                                <option value="79_49">
                                                        德国</option>
                                                
                                                <option value="210_228">
                                                        多哥</option>
                                                
                                                <option value="59_1">
                                                        多米尼加岛</option>
                                                
                                                <option value="60_1">
                                                        多米尼加共和国</option>
                                                
                                                <option value="174_7">
                                                        俄罗斯联邦</option>
                                                
                                                <option value="61_593">
                                                        厄瓜多尔</option>
                                                
                                                <option value="65_291">
                                                        厄立特里亚</option>
                                                
                                                <option value="72_33">
                                                        法国</option>
                                                
                                                <option value="69_298">
                                                        法罗群岛</option>
                                                
                                                <option value="74_689">
                                                        法属波利尼西亚</option>
                                                
                                                <option value="73_594">
                                                        法属圭亚那</option>
                                                
                                                <option value="75_">
                                                        法属南部领地</option>
                                                
                                                <option value="227_379">
                                                        梵蒂冈</option>
                                                
                                                <option value="166_63">
                                                        菲律宾</option>
                                                
                                                <option value="70_679">
                                                        斐济</option>
                                                
                                                <option value="71_358">
                                                        芬兰</option>
                                                
                                                <option value="39_238">
                                                        佛得角</option>
                                                
                                                <option value="68_500">
                                                        福克兰群岛</option>
                                                
                                                <option value="77_220">
                                                        冈比亚</option>
                                                
                                                <option value="49_242">
                                                        刚果</option>
                                                
                                                <option value="47_57">
                                                        哥伦比亚</option>
                                                
                                                <option value="51_506">
                                                        哥斯达黎加</option>
                                                
                                                <option value="84_1">
                                                        格林纳达</option>
                                                
                                                <option value="83_299">
                                                        格陵兰</option>
                                                
                                                <option value="78_995">
                                                        格鲁吉亚</option>
                                                
                                                <option value="54_53">
                                                        古巴</option>
                                                
                                                <option value="85_590">
                                                        瓜德罗普岛</option>
                                                
                                                <option value="86_1">
                                                        关岛</option>
                                                
                                                <option value="90_592">
                                                        圭亚那</option>
                                                
                                                <option value="107_7">
                                                        哈萨克斯坦</option>
                                                
                                                <option value="91_509">
                                                        海地</option>
                                                
                                                <option value="194_82">
                                                        韩国</option>
                                                
                                                <option value="148_31">
                                                        荷兰</option>
                                                
                                                <option value="149_599">
                                                        荷属安的列斯</option>
                                                
                                                <option value="92_">
                                                        赫德岛和麦克唐纳群岛</option>
                                                
                                                <option value="140_382">
                                                        黑山共和国</option>
                                                
                                                <option value="93_504">
                                                        洪都拉斯</option>
                                                
                                                <option value="109_686">
                                                        基里巴斯</option>
                                                
                                                <option value="58_253">
                                                        吉布提</option>
                                                
                                                <option value="112_996">
                                                        吉尔吉斯斯坦</option>
                                                
                                                <option value="88_224">
                                                        几内亚</option>
                                                
                                                <option value="89_245">
                                                        几内亚比绍</option>
                                                
                                                <option value="38_1">
                                                        加拿大</option>
                                                
                                                <option value="80_233">
                                                        加纳</option>
                                                
                                                <option value="76_241">
                                                        加蓬</option>
                                                
                                                <option value="36_855">
                                                        柬埔寨</option>
                                                
                                                <option value="56_420">
                                                        捷克共和国</option>
                                                
                                                <option value="236_263">
                                                        津巴布韦</option>
                                                
                                                <option value="150_687">
                                                        喀里多尼亚</option>
                                                
                                                <option value="37_237">
                                                        喀麦隆</option>
                                                
                                                <option value="171_974">
                                                        卡塔尔</option>
                                                
                                                <option value="40_1">
                                                        开曼群岛</option>
                                                
                                                <option value="46_61">
                                                        科科斯群岛</option>
                                                
                                                <option value="48_269">
                                                        科摩罗</option>
                                                
                                                <option value="110_">
                                                        科索沃</option>
                                                
                                                <option value="52_225">
                                                        科特迪亚</option>
                                                
                                                <option value="111_965">
                                                        科威特</option>
                                                
                                                <option value="53_385">
                                                        克罗地亚</option>
                                                
                                                <option value="108_254">
                                                        肯尼亚</option>
                                                
                                                <option value="50_682">
                                                        库克群岛</option>
                                                
                                                <option value="114_371">
                                                        拉脱维亚</option>
                                                
                                                <option value="116_266">
                                                        莱索托</option>
                                                
                                                <option value="113_856">
                                                        老挝</option>
                                                
                                                <option value="115_961">
                                                        黎巴嫩</option>
                                                
                                                <option value="120_370">
                                                        立陶宛</option>
                                                
                                                <option value="117_231">
                                                        利比里亚</option>
                                                
                                                <option value="118_218">
                                                        利比亚</option>
                                                
                                                <option value="119_423">
                                                        列支敦士登</option>
                                                
                                                <option value="172_262">
                                                        留尼旺岛</option>
                                                
                                                <option value="121_352">
                                                        卢森堡</option>
                                                
                                                <option value="175_250">
                                                        卢旺达</option>
                                                
                                                <option value="173_40">
                                                        罗马尼亚</option>
                                                
                                                <option value="124_261">
                                                        马达加斯加岛</option>
                                                
                                                <option value="127_960">
                                                        马尔代夫</option>
                                                
                                                <option value="125_265">
                                                        马拉维</option>
                                                
                                                <option value="126_60">
                                                        马来西亚</option>
                                                
                                                <option value="128_223">
                                                        马里</option>
                                                
                                                <option value="132_222">
                                                        马里塔尼亚</option>
                                                
                                                <option value="123_389">
                                                        马其顿</option>
                                                
                                                <option value="129_356">
                                                        马其他</option>
                                                
                                                <option value="130_692">
                                                        马绍尔群岛</option>
                                                
                                                <option value="131_596">
                                                        马提尼克</option>
                                                
                                                <option value="134_262">
                                                        马约特岛</option>
                                                
                                                <option value="133_230">
                                                        毛里求斯</option>
                                                
                                                <option value="223_1">
                                                        美国</option>
                                                
                                                <option value="231_1">
                                                        美属维京群岛</option>
                                                
                                                <option value="139_976">
                                                        蒙古</option>
                                                
                                                <option value="141_1">
                                                        蒙特色拉特岛</option>
                                                
                                                <option value="18_880">
                                                        孟加拉国</option>
                                                
                                                <option value="165_51">
                                                        秘鲁</option>
                                                
                                                <option value="136_691">
                                                        密克罗尼西亚</option>
                                                
                                                <option value="144_95">
                                                        缅甸</option>
                                                
                                                <option value="137_373">
                                                        摩尔多瓦</option>
                                                
                                                <option value="142_212">
                                                        摩洛哥</option>
                                                
                                                <option value="138_377">
                                                        摩纳哥</option>
                                                
                                                <option value="143_258">
                                                        莫桑比克</option>
                                                
                                                <option value="135_52">
                                                        墨西哥</option>
                                                
                                                <option value="145_264">
                                                        纳米比亚</option>
                                                
                                                <option value="193_27">
                                                        南非</option>
                                                
                                                <option value="8_">
                                                        南极洲</option>
                                                
                                                <option value="146_674">
                                                        瑙鲁</option>
                                                
                                                <option value="147_977">
                                                        尼泊尔</option>
                                                
                                                <option value="152_505">
                                                        尼加拉瓜</option>
                                                
                                                <option value="153_227">
                                                        尼日尔</option>
                                                
                                                <option value="154_234">
                                                        尼日利亚</option>
                                                
                                                <option value="155_683">
                                                        纽埃</option>
                                                
                                                <option value="158_47">
                                                        挪威</option>
                                                
                                                <option value="156_672">
                                                        诺福克岛</option>
                                                
                                                <option value="161_680">
                                                        帕劳</option>
                                                
                                                <option value="167_">
                                                        皮特克恩岛</option>
                                                
                                                <option value="169_351">
                                                        葡萄牙</option>
                                                
                                                <option value="105_81">
                                                        日本</option>
                                                
                                                <option value="203_46">
                                                        瑞典</option>
                                                
                                                <option value="204_41">
                                                        瑞士</option>
                                                
                                                <option value="63_503">
                                                        萨尔瓦多</option>
                                                
                                                <option value="180_685">
                                                        萨摩亚</option>
                                                
                                                <option value="4_1">
                                                        萨摩亚群岛</option>
                                                
                                                <option value="185_381">
                                                        塞尔维亚</option>
                                                
                                                <option value="187_232">
                                                        塞拉利昂</option>
                                                
                                                <option value="184_221">
                                                        塞内加尔</option>
                                                
                                                <option value="55_357">
                                                        塞浦路斯</option>
                                                
                                                <option value="186_248">
                                                        塞舌尔</option>
                                                
                                                <option value="183_966">
                                                        沙特阿拉伯</option>
                                                
                                                <option value="176_590">
                                                        圣巴托洛缪岛</option>
                                                
                                                <option value="45_61">
                                                        圣诞岛</option>
                                                
                                                <option value="182_239">
                                                        圣多美与普林希比共和国</option>
                                                
                                                <option value="197_290">
                                                        圣赫勒拿岛</option>
                                                
                                                <option value="177_1">
                                                        圣基茨和尼维斯</option>
                                                
                                                <option value="178_1">
                                                        圣卢西亚岛</option>
                                                
                                                <option value="181_378">
                                                        圣马力诺</option>
                                                
                                                <option value="198_508">
                                                        圣皮埃尔和密克隆岛</option>
                                                
                                                <option value="179_1">
                                                        圣文森特及格林纳丁斯</option>
                                                
                                                <option value="196_94">
                                                        斯里兰卡</option>
                                                
                                                <option value="189_421">
                                                        斯洛伐克</option>
                                                
                                                <option value="190_386">
                                                        斯洛文尼亚</option>
                                                
                                                <option value="201_47">
                                                        斯瓦尔巴特和扬马延岛</option>
                                                
                                                <option value="202_268">
                                                        斯威士兰</option>
                                                
                                                <option value="199_249">
                                                        苏丹</option>
                                                
                                                <option value="200_597">
                                                        苏里南</option>
                                                
                                                <option value="191_677">
                                                        所罗门群岛</option>
                                                
                                                <option value="192_252">
                                                        索马里</option>
                                                
                                                <option value="207_992">
                                                        塔吉克斯坦</option>
                                                
                                                <option value="206_886">
                                                        台湾</option>
                                                
                                                <option value="209_66">
                                                        泰国</option>
                                                
                                                <option value="208_255">
                                                        坦桑尼亚</option>
                                                
                                                <option value="212_676">
                                                        汤加</option>
                                                
                                                <option value="217_1">
                                                        特克斯和凯科斯群岛</option>
                                                
                                                <option value="213_1">
                                                        特立尼达和多巴哥</option>
                                                
                                                <option value="214_216">
                                                        突尼斯</option>
                                                
                                                <option value="218_688">
                                                        图瓦卢</option>
                                                
                                                <option value="215_90">
                                                        土耳其</option>
                                                
                                                <option value="216_993">
                                                        土库曼斯坦</option>
                                                
                                                <option value="211_690">
                                                        托克劳群岛</option>
                                                
                                                <option value="232_681">
                                                        瓦利斯群岛和富图纳群岛</option>
                                                
                                                <option value="226_678">
                                                        瓦努阿图</option>
                                                
                                                <option value="87_502">
                                                        危地马拉</option>
                                                
                                                <option value="228_58">
                                                        委内瑞拉</option>
                                                
                                                <option value="32_673">
                                                        文莱达鲁萨兰国</option>
                                                
                                                <option value="219_256">
                                                        乌干达</option>
                                                
                                                <option value="220_380">
                                                        乌克兰</option>
                                                
                                                <option value="224_598">
                                                        乌拉圭</option>
                                                
                                                <option value="225_998">
                                                        乌兹别克斯坦</option>
                                                
                                                <option value="195_34">
                                                        西班牙</option>
                                                
                                                <option value="233_">
                                                        西撒哈拉</option>
                                                
                                                <option value="82_30">
                                                        希腊</option>
                                                
                                                <option value="94_852">
                                                        香港</option>
                                                
                                                <option value="188_65">
                                                        新加坡</option>
                                                
                                                <option value="151_64">
                                                        新西兰</option>
                                                
                                                <option value="95_36">
                                                        匈牙利</option>
                                                
                                                <option value="104_1">
                                                        牙买加</option>
                                                
                                                <option value="11_374">
                                                        亚美尼亚</option>
                                                
                                                <option value="234_967">
                                                        也门</option>
                                                
                                                <option value="100_964">
                                                        伊拉克</option>
                                                
                                                <option value="99_98">
                                                        伊朗</option>
                                                
                                                <option value="102_972">
                                                        以色列</option>
                                                
                                                <option value="103_39">
                                                        意大利</option>
                                                
                                                <option value="97_91">
                                                        印度</option>
                                                
                                                <option value="98_62">
                                                        印度尼西亚</option>
                                                
                                                <option value="222_44">
                                                        英国</option>
                                                
                                                <option value="230_1">
                                                        英属维京群岛</option>
                                                
                                                <option value="31_246">
                                                        英属印度洋领地</option>
                                                
                                                <option value="106_962">
                                                        约旦</option>
                                                
                                                <option value="229_84">
                                                        越南</option>
                                                
                                                <option value="235_260">
                                                        赞比亚</option>
                                                
                                                <option value="42_235">
                                                        乍得</option>
                                                
                                                <option value="81_350">
                                                        直布罗陀</option>
                                                
                                                <option value="43_56">
                                                        智利</option>
                                                
                                                <option value="41_236">
                                                        中非共和国</option>
                                                
                                                <option value="44_86" selected="selected">
                                                        中国</option>
                                                
                                    </select>
                                        	
                                            <select id="NationOtherOption" name="NationOtherOption" class="text" style="height:24px;font-size:12px;width:57px;padding:3px 0;">
                                            	<option selected="selected">汉族</option>
                                                 
                                                <option value="18">
                                                        阿昌族</option>
                                                
                                                <option value="11">
                                                        白族</option>
                                                
                                                <option value="27">
                                                        保安族</option>
                                                
                                                <option value="7">
                                                        布朗族</option>
                                                
                                                <option value="6">
                                                        布依族</option>
                                                
                                                <option value="54">
                                                        藏族</option>
                                                
                                                <option value="39">
                                                        朝鲜族</option>
                                                
                                                <option value="13">
                                                        达斡尔族</option>
                                                
                                                <option value="41">
                                                        傣族</option>
                                                
                                                <option value="52">
                                                        德昂族</option>
                                                
                                                <option value="8">
                                                        东乡族</option>
                                                
                                                <option value="22">
                                                        侗族</option>
                                                
                                                <option value="29">
                                                        独龙族</option>
                                                
                                                <option value="28">
                                                        俄罗斯族</option>
                                                
                                                <option value="34">
                                                        鄂伦春族</option>
                                                
                                                <option value="35">
                                                        鄂温克族</option>
                                                
                                                <option value="32">
                                                        高山族</option>
                                                
                                                <option value="25">
                                                        哈尼族</option>
                                                
                                                <option value="26">
                                                        哈萨克族</option>
                                                
                                                <option value="12" selected="selected">
                                                        汉族</option>
                                                
                                                <option value="50">
                                                        赫哲族</option>
                                                
                                                <option value="14">
                                                        回族</option>
                                                
                                                <option value="33">
                                                        基诺族</option>
                                                
                                                <option value="23">
                                                        京族</option>
                                                
                                                <option value="40">
                                                        景颇族</option>
                                                
                                                <option value="24">
                                                        柯尔克孜族</option>
                                                
                                                <option value="20">
                                                        拉祜族</option>
                                                
                                                <option value="53">
                                                        黎族</option>
                                                
                                                <option value="42">
                                                        傈僳族</option>
                                                
                                                <option value="31">
                                                        珞巴族</option>
                                                
                                                <option value="48">
                                                        满族</option>
                                                
                                                <option value="4">
                                                        毛南族</option>
                                                
                                                <option value="2">
                                                        门巴族</option>
                                                
                                                <option value="46">
                                                        蒙古族</option>
                                                
                                                <option value="21">
                                                        苗族</option>
                                                
                                                <option value="10">
                                                        仫佬族</option>
                                                
                                                <option value="19">
                                                        纳西族</option>
                                                
                                                <option value="30">
                                                        怒族</option>
                                                
                                                <option value="44">
                                                        普米族</option>
                                                
                                                <option value="17">
                                                        羌族</option>
                                                
                                                <option value="51">
                                                        撒拉族</option>
                                                
                                                <option value="43">
                                                        畲族</option>
                                                
                                                <option value="3">
                                                        水族</option>
                                                
                                                <option value="37">
                                                        塔吉克族</option>
                                                
                                                <option value="38">
                                                        塔塔尔族</option>
                                                
                                                <option value="56">
                                                        土家族</option>
                                                
                                                <option value="1">
                                                        土族</option>
                                                
                                                <option value="15">
                                                        佤族</option>
                                                
                                                <option value="36">
                                                        维吾尔族</option>
                                                
                                                <option value="5">
                                                        乌孜别克族</option>
                                                
                                                <option value="47">
                                                        锡伯族</option>
                                                
                                                <option value="49">
                                                        瑶族</option>
                                                
                                                <option value="55">
                                                        彝族</option>
                                                
                                                <option value="9">
                                                        仡佬族</option>
                                                
                                                <option value="45">
                                                        裕固族</option>
                                                
                                                <option value="16">
                                                        壮族</option>
                                                
                                               
                                            </select> 
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr class="CheckIn" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>证件类型：
                                    </td>
                                    <td>
                                        <div>
                                            <select id="CartOtherOption" name="CartOtherOption" onchange="ChangeCartOption(this)" class="text" style="height:24px;font-size:12px;width:163px;padding:3px 0;">
                                            	<option selected="selected" value="111">身份证</option>
                                                <option value="414">护照</option>
                                                <option value="114">军人证</option> 
                                                
                                               
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="CheckIn" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>证件号码：
                                    </td>
                                    <td>
                                         <input type="text" class="text" id="IDOtherNumber" name="IDOtherNumber" onblur="CartTest(this)">
                                        <span>
                                            <img style="vertical-align: middle;*vertical-align:baseline; display:none;" src="static/submit_order/RoomCorrectBtnNew.gif">
                                        </span>
                                        <p class="ColorGray999 PT5">请您放心，身份信息不会对外公开。</p>
                                        <div class="PromptErrorBox" name="CardErrorMsg" id="CardErrorOtherMsg">
                                        	<span class="PromptError" style="display:none">信息错误，请重新填写</span>
                                        </div>
                                    </td>
                                </tr>
                                
                                
                                <!--2015-11-26End-->
                                <tr class="CheckIn" style="display: none;">
                                    <td class="Infor_LTd">
                                        <b>*</b>手 机：
                                    </td>
                                    <td>
                                       
                                         <div>
                                            <div class="MB5">
                                                <select class="text" style="height:24px;font-size:12px;width:163px;padding:3px 0;" id="countryOtherselect" name="countryOtherselect">
                                        
                                                <option value="2_355">
                                                        阿尔巴尼亚</option>
                                                
                                                <option value="3_213">
                                                        阿尔及利亚</option>
                                                
                                                <option value="1_93">
                                                        阿富汗</option>
                                                
                                                <option value="10_54">
                                                        阿根廷</option>
                                                
                                                <option value="221_971">
                                                        阿拉伯联合酋长国</option>
                                                
                                                <option value="205_963">
                                                        阿拉伯叙利亚共和国</option>
                                                
                                                <option value="12_297">
                                                        阿鲁巴岛</option>
                                                
                                                <option value="159_968">
                                                        阿曼</option>
                                                
                                                <option value="15_994">
                                                        阿塞拜疆</option>
                                                
                                                <option value="62_20">
                                                        埃及</option>
                                                
                                                <option value="67_251">
                                                        埃塞俄比亚</option>
                                                
                                                <option value="101_353">
                                                        爱尔兰</option>
                                                
                                                <option value="66_372">
                                                        爱沙尼亚</option>
                                                
                                                <option value="5_376">
                                                        安道尔</option>
                                                
                                                <option value="6_244">
                                                        安哥拉</option>
                                                
                                                <option value="7_1">
                                                        安圭拉岛</option>
                                                
                                                <option value="9_1">
                                                        安提瓜和巴布达</option>
                                                
                                                <option value="14_43">
                                                        奥地利 </option>
                                                
                                                <option value="13_61">
                                                        澳大利亚</option>
                                                
                                                <option value="122_853">
                                                        澳门</option>
                                                
                                                <option value="19_1">
                                                        巴巴多斯</option>
                                                
                                                <option value="163_675">
                                                        巴布亚新几内亚</option>
                                                
                                                <option value="16_1">
                                                        巴哈马群岛</option>
                                                
                                                <option value="160_92">
                                                        巴基斯坦</option>
                                                
                                                <option value="164_595">
                                                        巴拉圭</option>
                                                
                                                <option value="17_973">
                                                        巴林岛</option>
                                                
                                                <option value="162_507">
                                                        巴拿马</option>
                                                
                                                <option value="30_55">
                                                        巴西</option>
                                                
                                                <option value="20_375">
                                                        白俄罗斯</option>
                                                
                                                <option value="24_1">
                                                        百慕大群岛</option>
                                                
                                                <option value="33_359">
                                                        保加利亚</option>
                                                
                                                <option value="157_1">
                                                        北马里亚诺群岛</option>
                                                
                                                <option value="23_229">
                                                        贝宁</option>
                                                
                                                <option value="21_32">
                                                        比利时</option>
                                                
                                                <option value="96_354">
                                                        冰岛</option>
                                                
                                                <option value="170_1">
                                                        波多黎各</option>
                                                
                                                <option value="168_48">
                                                        波兰</option>
                                                
                                                <option value="27_387">
                                                        波斯尼亚</option>
                                                
                                                <option value="26_591">
                                                        玻利维亚</option>
                                                
                                                <option value="22_501">
                                                        伯利兹</option>
                                                
                                                <option value="28_267">
                                                        博茨瓦纳</option>
                                                
                                                <option value="25_975">
                                                        不丹</option>
                                                
                                                <option value="34_226">
                                                        布基纳法索</option>
                                                
                                                <option value="35_257">
                                                        布隆迪</option>
                                                
                                                <option value="29_">
                                                        布维岛</option>
                                                
                                                <option value="64_240">
                                                        赤道几内亚</option>
                                                
                                                <option value="57_45">
                                                        丹麦</option>
                                                
                                                <option value="79_49">
                                                        德国</option>
                                                
                                                <option value="210_228">
                                                        多哥</option>
                                                
                                                <option value="59_1">
                                                        多米尼加岛</option>
                                                
                                                <option value="60_1">
                                                        多米尼加共和国</option>
                                                
                                                <option value="174_7">
                                                        俄罗斯联邦</option>
                                                
                                                <option value="61_593">
                                                        厄瓜多尔</option>
                                                
                                                <option value="65_291">
                                                        厄立特里亚</option>
                                                
                                                <option value="72_33">
                                                        法国</option>
                                                
                                                <option value="69_298">
                                                        法罗群岛</option>
                                                
                                                <option value="74_689">
                                                        法属波利尼西亚</option>
                                                
                                                <option value="73_594">
                                                        法属圭亚那</option>
                                                
                                                <option value="75_">
                                                        法属南部领地</option>
                                                
                                                <option value="227_379">
                                                        梵蒂冈</option>
                                                
                                                <option value="166_63">
                                                        菲律宾</option>
                                                
                                                <option value="70_679">
                                                        斐济</option>
                                                
                                                <option value="71_358">
                                                        芬兰</option>
                                                
                                                <option value="39_238">
                                                        佛得角</option>
                                                
                                                <option value="68_500">
                                                        福克兰群岛</option>
                                                
                                                <option value="77_220">
                                                        冈比亚</option>
                                                
                                                <option value="49_242">
                                                        刚果</option>
                                                
                                                <option value="47_57">
                                                        哥伦比亚</option>
                                                
                                                <option value="51_506">
                                                        哥斯达黎加</option>
                                                
                                                <option value="84_1">
                                                        格林纳达</option>
                                                
                                                <option value="83_299">
                                                        格陵兰</option>
                                                
                                                <option value="78_995">
                                                        格鲁吉亚</option>
                                                
                                                <option value="54_53">
                                                        古巴</option>
                                                
                                                <option value="85_590">
                                                        瓜德罗普岛</option>
                                                
                                                <option value="86_1">
                                                        关岛</option>
                                                
                                                <option value="90_592">
                                                        圭亚那</option>
                                                
                                                <option value="107_7">
                                                        哈萨克斯坦</option>
                                                
                                                <option value="91_509">
                                                        海地</option>
                                                
                                                <option value="194_82">
                                                        韩国</option>
                                                
                                                <option value="148_31">
                                                        荷兰</option>
                                                
                                                <option value="149_599">
                                                        荷属安的列斯</option>
                                                
                                                <option value="92_">
                                                        赫德岛和麦克唐纳群岛</option>
                                                
                                                <option value="140_382">
                                                        黑山共和国</option>
                                                
                                                <option value="93_504">
                                                        洪都拉斯</option>
                                                
                                                <option value="109_686">
                                                        基里巴斯</option>
                                                
                                                <option value="58_253">
                                                        吉布提</option>
                                                
                                                <option value="112_996">
                                                        吉尔吉斯斯坦</option>
                                                
                                                <option value="88_224">
                                                        几内亚</option>
                                                
                                                <option value="89_245">
                                                        几内亚比绍</option>
                                                
                                                <option value="38_1">
                                                        加拿大</option>
                                                
                                                <option value="80_233">
                                                        加纳</option>
                                                
                                                <option value="76_241">
                                                        加蓬</option>
                                                
                                                <option value="36_855">
                                                        柬埔寨</option>
                                                
                                                <option value="56_420">
                                                        捷克共和国</option>
                                                
                                                <option value="236_263">
                                                        津巴布韦</option>
                                                
                                                <option value="150_687">
                                                        喀里多尼亚</option>
                                                
                                                <option value="37_237">
                                                        喀麦隆</option>
                                                
                                                <option value="171_974">
                                                        卡塔尔</option>
                                                
                                                <option value="40_1">
                                                        开曼群岛</option>
                                                
                                                <option value="46_61">
                                                        科科斯群岛</option>
                                                
                                                <option value="48_269">
                                                        科摩罗</option>
                                                
                                                <option value="110_">
                                                        科索沃</option>
                                                
                                                <option value="52_225">
                                                        科特迪亚</option>
                                                
                                                <option value="111_965">
                                                        科威特</option>
                                                
                                                <option value="53_385">
                                                        克罗地亚</option>
                                                
                                                <option value="108_254">
                                                        肯尼亚</option>
                                                
                                                <option value="50_682">
                                                        库克群岛</option>
                                                
                                                <option value="114_371">
                                                        拉脱维亚</option>
                                                
                                                <option value="116_266">
                                                        莱索托</option>
                                                
                                                <option value="113_856">
                                                        老挝</option>
                                                
                                                <option value="115_961">
                                                        黎巴嫩</option>
                                                
                                                <option value="120_370">
                                                        立陶宛</option>
                                                
                                                <option value="117_231">
                                                        利比里亚</option>
                                                
                                                <option value="118_218">
                                                        利比亚</option>
                                                
                                                <option value="119_423">
                                                        列支敦士登</option>
                                                
                                                <option value="172_262">
                                                        留尼旺岛</option>
                                                
                                                <option value="121_352">
                                                        卢森堡</option>
                                                
                                                <option value="175_250">
                                                        卢旺达</option>
                                                
                                                <option value="173_40">
                                                        罗马尼亚</option>
                                                
                                                <option value="124_261">
                                                        马达加斯加岛</option>
                                                
                                                <option value="127_960">
                                                        马尔代夫</option>
                                                
                                                <option value="125_265">
                                                        马拉维</option>
                                                
                                                <option value="126_60">
                                                        马来西亚</option>
                                                
                                                <option value="128_223">
                                                        马里</option>
                                                
                                                <option value="132_222">
                                                        马里塔尼亚</option>
                                                
                                                <option value="123_389">
                                                        马其顿</option>
                                                
                                                <option value="129_356">
                                                        马其他</option>
                                                
                                                <option value="130_692">
                                                        马绍尔群岛</option>
                                                
                                                <option value="131_596">
                                                        马提尼克</option>
                                                
                                                <option value="134_262">
                                                        马约特岛</option>
                                                
                                                <option value="133_230">
                                                        毛里求斯</option>
                                                
                                                <option value="223_1">
                                                        美国</option>
                                                
                                                <option value="231_1">
                                                        美属维京群岛</option>
                                                
                                                <option value="139_976">
                                                        蒙古</option>
                                                
                                                <option value="141_1">
                                                        蒙特色拉特岛</option>
                                                
                                                <option value="18_880">
                                                        孟加拉国</option>
                                                
                                                <option value="165_51">
                                                        秘鲁</option>
                                                
                                                <option value="136_691">
                                                        密克罗尼西亚</option>
                                                
                                                <option value="144_95">
                                                        缅甸</option>
                                                
                                                <option value="137_373">
                                                        摩尔多瓦</option>
                                                
                                                <option value="142_212">
                                                        摩洛哥</option>
                                                
                                                <option value="138_377">
                                                        摩纳哥</option>
                                                
                                                <option value="143_258">
                                                        莫桑比克</option>
                                                
                                                <option value="135_52">
                                                        墨西哥</option>
                                                
                                                <option value="145_264">
                                                        纳米比亚</option>
                                                
                                                <option value="193_27">
                                                        南非</option>
                                                
                                                <option value="8_">
                                                        南极洲</option>
                                                
                                                <option value="146_674">
                                                        瑙鲁</option>
                                                
                                                <option value="147_977">
                                                        尼泊尔</option>
                                                
                                                <option value="152_505">
                                                        尼加拉瓜</option>
                                                
                                                <option value="153_227">
                                                        尼日尔</option>
                                                
                                                <option value="154_234">
                                                        尼日利亚</option>
                                                
                                                <option value="155_683">
                                                        纽埃</option>
                                                
                                                <option value="158_47">
                                                        挪威</option>
                                                
                                                <option value="156_672">
                                                        诺福克岛</option>
                                                
                                                <option value="161_680">
                                                        帕劳</option>
                                                
                                                <option value="167_">
                                                        皮特克恩岛</option>
                                                
                                                <option value="169_351">
                                                        葡萄牙</option>
                                                
                                                <option value="105_81">
                                                        日本</option>
                                                
                                                <option value="203_46">
                                                        瑞典</option>
                                                
                                                <option value="204_41">
                                                        瑞士</option>
                                                
                                                <option value="63_503">
                                                        萨尔瓦多</option>
                                                
                                                <option value="180_685">
                                                        萨摩亚</option>
                                                
                                                <option value="4_1">
                                                        萨摩亚群岛</option>
                                                
                                                <option value="185_381">
                                                        塞尔维亚</option>
                                                
                                                <option value="187_232">
                                                        塞拉利昂</option>
                                                
                                                <option value="184_221">
                                                        塞内加尔</option>
                                                
                                                <option value="55_357">
                                                        塞浦路斯</option>
                                                
                                                <option value="186_248">
                                                        塞舌尔</option>
                                                
                                                <option value="183_966">
                                                        沙特阿拉伯</option>
                                                
                                                <option value="176_590">
                                                        圣巴托洛缪岛</option>
                                                
                                                <option value="45_61">
                                                        圣诞岛</option>
                                                
                                                <option value="182_239">
                                                        圣多美与普林希比共和国</option>
                                                
                                                <option value="197_290">
                                                        圣赫勒拿岛</option>
                                                
                                                <option value="177_1">
                                                        圣基茨和尼维斯</option>
                                                
                                                <option value="178_1">
                                                        圣卢西亚岛</option>
                                                
                                                <option value="181_378">
                                                        圣马力诺</option>
                                                
                                                <option value="198_508">
                                                        圣皮埃尔和密克隆岛</option>
                                                
                                                <option value="179_1">
                                                        圣文森特及格林纳丁斯</option>
                                                
                                                <option value="196_94">
                                                        斯里兰卡</option>
                                                
                                                <option value="189_421">
                                                        斯洛伐克</option>
                                                
                                                <option value="190_386">
                                                        斯洛文尼亚</option>
                                                
                                                <option value="201_47">
                                                        斯瓦尔巴特和扬马延岛</option>
                                                
                                                <option value="202_268">
                                                        斯威士兰</option>
                                                
                                                <option value="199_249">
                                                        苏丹</option>
                                                
                                                <option value="200_597">
                                                        苏里南</option>
                                                
                                                <option value="191_677">
                                                        所罗门群岛</option>
                                                
                                                <option value="192_252">
                                                        索马里</option>
                                                
                                                <option value="207_992">
                                                        塔吉克斯坦</option>
                                                
                                                <option value="206_886">
                                                        台湾</option>
                                                
                                                <option value="209_66">
                                                        泰国</option>
                                                
                                                <option value="208_255">
                                                        坦桑尼亚</option>
                                                
                                                <option value="212_676">
                                                        汤加</option>
                                                
                                                <option value="217_1">
                                                        特克斯和凯科斯群岛</option>
                                                
                                                <option value="213_1">
                                                        特立尼达和多巴哥</option>
                                                
                                                <option value="214_216">
                                                        突尼斯</option>
                                                
                                                <option value="218_688">
                                                        图瓦卢</option>
                                                
                                                <option value="215_90">
                                                        土耳其</option>
                                                
                                                <option value="216_993">
                                                        土库曼斯坦</option>
                                                
                                                <option value="211_690">
                                                        托克劳群岛</option>
                                                
                                                <option value="232_681">
                                                        瓦利斯群岛和富图纳群岛</option>
                                                
                                                <option value="226_678">
                                                        瓦努阿图</option>
                                                
                                                <option value="87_502">
                                                        危地马拉</option>
                                                
                                                <option value="228_58">
                                                        委内瑞拉</option>
                                                
                                                <option value="32_673">
                                                        文莱达鲁萨兰国</option>
                                                
                                                <option value="219_256">
                                                        乌干达</option>
                                                
                                                <option value="220_380">
                                                        乌克兰</option>
                                                
                                                <option value="224_598">
                                                        乌拉圭</option>
                                                
                                                <option value="225_998">
                                                        乌兹别克斯坦</option>
                                                
                                                <option value="195_34">
                                                        西班牙</option>
                                                
                                                <option value="233_">
                                                        西撒哈拉</option>
                                                
                                                <option value="82_30">
                                                        希腊</option>
                                                
                                                <option value="94_852">
                                                        香港</option>
                                                
                                                <option value="188_65">
                                                        新加坡</option>
                                                
                                                <option value="151_64">
                                                        新西兰</option>
                                                
                                                <option value="95_36">
                                                        匈牙利</option>
                                                
                                                <option value="104_1">
                                                        牙买加</option>
                                                
                                                <option value="11_374">
                                                        亚美尼亚</option>
                                                
                                                <option value="234_967">
                                                        也门</option>
                                                
                                                <option value="100_964">
                                                        伊拉克</option>
                                                
                                                <option value="99_98">
                                                        伊朗</option>
                                                
                                                <option value="102_972">
                                                        以色列</option>
                                                
                                                <option value="103_39">
                                                        意大利</option>
                                                
                                                <option value="97_91">
                                                        印度</option>
                                                
                                                <option value="98_62">
                                                        印度尼西亚</option>
                                                
                                                <option value="222_44">
                                                        英国</option>
                                                
                                                <option value="230_1">
                                                        英属维京群岛</option>
                                                
                                                <option value="31_246">
                                                        英属印度洋领地</option>
                                                
                                                <option value="106_962">
                                                        约旦</option>
                                                
                                                <option value="229_84">
                                                        越南</option>
                                                
                                                <option value="235_260">
                                                        赞比亚</option>
                                                
                                                <option value="42_235">
                                                        乍得</option>
                                                
                                                <option value="81_350">
                                                        直布罗陀</option>
                                                
                                                <option value="43_56">
                                                        智利</option>
                                                
                                                <option value="41_236">
                                                        中非共和国</option>
                                                
                                                <option value="44_86" selected="selected">
                                                        中国</option>
                                                
                                    </select>
                                            </div>
                                            <div id="Div1" style="padding-left: 207px; top: -110px; position: absolute;display:none;">
                                            </div>
                                            <div>
                                                <input type="text" disabled="disabled" class="text" value="+86" style="color:#333;background-color:#ece9d8;width:50px;margin-right:-1px;" id="telOthercode"><input style="width:100px;" type="text" class="text" id="txtOthertel" name="txtOthertel" onchange="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/phone/&#39;]);}catch(e){}"><input name="telhide" type="hidden" id="Hidden1"><input name="telCodehide" type="hidden" id="Hidden2">
                                                <span><img alt="" id="imgOthertel" style="vertical-align: middle; *vertical-align: baseline; display: none;" src="static/submit_order/RoomCorrectBtnNew.gif"></span>
                                                <span class="VerificationBtn"><input style="display:none;" type="button" id="Button1" value="获取验证码"></span>
                                            </div>
                                            <div id="Div2" class="PromptErrorBox">
                                                <span class="PromptError" style="display:none;"></span>
                                            </div>
                                            <div id="Div3" style="display:none;" class="X_formActions">也可用第三方登录：
                                                <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/qq/&#39;]);}catch(e){}" class="ActionsTeng" href="http://openapi.qzone.qq.com/oauth/show?which=Login&amp;response_type=code&amp;client_id=100235923&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dqq%26fromurl%3Dhttp%253a%252f%252fwww.youtx.com%252fpayment%252fbooking%252fbookingnew.aspx%253fhouseid%253d144142%2526livenum%253d1%2526begintime%253d2018-06-05%2526endtime%253d2018-06-06%2526rooms%253d1%2523txtname&amp;scope=get_user_info,get_fanslist,get_idollist">QQ</a>
                                                <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/weibo/&#39;]);}catch(e){}" class="ActionsXin" href="https://api.weibo.com/oauth2/authorize?client_id=3568509101&amp;with_offical_account=1&amp;response_type=code&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dsina%26fromurl%3Dhttp%253a%252f%252fwww.youtx.com%252fpayment%252fbooking%252fbookingnew.aspx%253fhouseid%253d144142%2526livenum%253d1%2526begintime%253d2018-06-05%2526endtime%253d2018-06-06%2526rooms%253d1%2523txtname">新浪微博</a>
                                                <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/taobao/&#39;]);}catch(e){}" class="ActionsTao" href="https://oauth.taobao.com/authorize?response_type=code&amp;client_id=21036824&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dtaobao%26fromurl%3Dhttp%25253a%25252f%25252fwww.youtx.com%25252fpayment%25252fbooking%25252fbookingnew.aspx%25253fhouseid%25253d144142%252526livenum%25253d1%252526begintime%25253d2018-06-05%252526endtime%25253d2018-06-06%252526rooms%25253d1%252523txtname&amp;state=1212&amp;scope=item,promotion,item,usergrade">淘宝</a>
                                                <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/soufun/&#39;]);}catch(e){}" class="ActionsSou" href="https://passport.youtx.com/profile/soufun.aspx?response_type=code&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dsoufun%26fromurl%3Dhttp%253a%252f%252fwww.youtx.com%252fpayment%252fbooking%252fbookingnew.aspx%253fhouseid%253d144142%2526livenum%253d1%2526begintime%253d2018-06-05%2526endtime%253d2018-06-06%2526rooms%253d1%2523txtname">房天下</a>
                                                <a onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/renren/&#39;]);}catch(e){}" class="ActionsRen" href="https://graph.renren.com/oauth/authorize?client_id=d8c6fc1a674c4307a00c7e7d95526143&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Drenren%26fromurl%3Dhttp%253a%252f%252fwww.youtx.com%252fpayment%252fbooking%252fbookingnew.aspx%253fhouseid%253d144142%2526livenum%253d1%2526begintime%253d2018-06-05%2526endtime%253d2018-06-06%2526rooms%253d1%2523txtname&amp;response_type=code&amp;scope=publish_feed">人人网</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Infor_LTd">
                                        &nbsp;&nbsp;备 注：
                                    </td>
                                    <td>
                                        <textarea cols="" rows="" class="Order_textarea" id="txtRemark" name="txtRemark" style="height: 54px; color: rgb(153, 153, 153);" onchange="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/otherremark/&#39;]);}catch(e){}"></textarea>
                                        <div class="PromptErrorBox">
                                            <span class="PromptError" style="display: none">备注内容不能超过100字</span></div>
                                    </td>
                                </tr>
                            </tbody></table>
                        </div>
                        <div style="display: none;">
                            <a class="pop5" onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/login/&#39;]);}catch(e){}">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="OrderCoEnd">
                <p class="OrderCheckBox">
                    <label>
                        <input type="checkbox" checked="checked" id="agrees_to_terms">
                        我接受
                        <a href="javascript:void(0);" class="pop3" onclick="try{_gaq.push([&#39;t0._trackPageview&#39;,&#39;/virtual/order/rule-jy/&#39;]);}catch(e){}">
                            交易规则</a>、
                        <a href="javascript:void(0);" class="pop8" onclick="try{_gaq.push([&#39;t0._trackPageview&#39;,&#39;/virtual/order/rule-fw/&#39;]);}catch(e){}">
                            房屋使用规则</a>
                        及
                        <a target="_blank" href="http://www.youtx.com/service_agreement/" onclick="try{_gaq.push([&#39;t0._trackPageview&#39;,&#39;/virtual/order/xieyi/&#39;]);}catch(e){}">
                            网站服务协议</a></label></p>
                <p class="OrderCoBtn">
                    <input type="button" value="提交我的订单" id="btnConfirmOrder" name="btnConfirmOrder">
                    <span id="divTicketIsUsed" style="color: Red; display: none">您所选择的代金劵已使用，请重新选择。</span>
                </p>
            </div>
        </div>
        <div class="cboxContentNew" style="width: 480px; left: 200px; top: 50px; display: none">
            <h4>
                房屋使用规则</h4>
            <ul class="ReceiveScu_table02">
                <li>
                    <p>
                        * 请带好您的有效证件办理入住</p>
                    <p>
                        * 请爱护房间内的设施和物品</p>
                    <p>
                        * 请勿将房间用于违法活动</p>
                </li>
            </ul>
            <div class="ReceiveScuBtn">
                <input type="button" value="确 定" class="popclose">
            </div>
            <div class="closeNew_btn popclose">
                close</div>
        </div>
        
        <div class="NewOrderSiderBar">
            <div class="SiderBarBox">
                <div class="SiderBarBoxTit">
                    房源详情</div>
                <div class="SiderBarBoxTxt">
                    <div class="X_OrderRoom_info">
                        <p class="X_OrderRoom_title">
                            <a target="_blank" href="http://www.youtx.com/room/144142/" onclick="try{_gaq.push([&#39;t0._trackPageview&#39;, &#39;/virtual/order/title/&#39;]);}catch(e){}">
                                市中心公寓 7号线长寿路站温馨一居室</a></p>
                        <div>
                            <img alt="市中心公寓 7号线长寿路站温馨一居室" src="static/submit_order/210x140c.jpg"></div>
                        <input name="houseID" type="hidden" value="144142">
                        
                            <p>
                                
                                <span class="FwB">房间编号：</span>144142</p>
                            
                            <p>
                                公寓，整套出租，双人床</p>
                            <p>
                                中国上海市静安区人民广场 南京路步行街 近静安寺 普陀区 外滩</p>
                    </div>
                </div>
            </div>
            <div class="SiderBarBox SiderBarBoxEnd">
                <div class="SiderBarBoxTit">
                    联系客服</div>
                <div class="SiderBarBoxTxt" style="position: relative;">
                    <h3>
                        游天下客服电话：</h3>
                    <div class="SiderBarBoxTel">
                        400-630-0088</div>
                    <h3>
                        游天下在线客服：<span class="BoxTime">( 周一至周日8:00-24:00 )</span></h3>
                    <p class="Contact">
                        <a target="_blank" href="http://qiao.baidu.com/v3/?module=default&amp;controller=im&amp;action=index&amp;ucid=3540858&amp;type=n&amp;siteid=4553352">
                            联系客服</a></p>
                </div>
            </div>
        </div>
        
        <script type="text/javascript">
            var remark = "选填，告诉房东您的特殊需求";
            var loginID = "2600363";
            var userName = "卢祖兴";
            var mail = "";
            var phoneCheck = "1";
            var tel = "17602172096";
            var telcodeshow = "44_86";
            var fangdongID = "7302";
            var userIDNum = "";
         
//            'https://passport.youtx.com'
            var interfacePassport =   "/payment/Ajax/AjaxPassport.aspx";
            ///userType 用户类型；1=个人用户；2=企业用户；0=未注册或未登录的用户
            var userType = 0;
            var isfirst = 0;
            var checkname = false;
            var checkUsername = true;
            var checkmail = false;
            var checktel = false;
            var checkremark = false;
            var checkciname = true;
            var checkcitel = true;
            var checkforeigntel = false;
            var regist = 0; //0代表请求未完成，1代表请求结果成功，2代表请求结果为失败
            var haveClick = false; //标志位，只能点击一次提交订单
            var errMsg = "";
            var timeIDNei = "";
            var timeIDWai = "";
            var timeVer = "";
            var currentTel = "";

            var TextUserName = "";
            var CountryId2 = "";
            var NationaLities = "";
            //标志用户本人在输入身份信息时，提交订单 是否验证
            var PaperCheck = "True";
            //标志是否进入初始化订单时  身份信息 是否验证（如果已验证，则不显示）
            var isInitPaperCheck = "True";
            $(document).ready(function () {
                if (!isNaN(loginID) && loginID != "0") {
                    othermobile = new Youtx.OtherMobile(loginID);
                }
                checkRemark();
                $("#txtRemark").focus(function () {
                    if ($("#txtRemark").val() == remark) {
                        $("#txtRemark").val("").css("color", "#333");
                    }
                });
                $("#txtRemark").blur(function () {
                    checkRemark();
                });

                $("#accountid").focus(function () {
                    $("#p_accountid").removeClass("W_item_listxt_error_visible").addClass("W_item_listxt_error");
                    try {
                        _gaq.push(['t0._trackPageview', '/virtual/order/account/']);
                    } catch (e) { }
                })
                $("#password").focus(function () {
                    $("#p_password").removeClass("W_item_listxt_error_visible").addClass("W_item_listxt_error");
                    try {
                        _gaq.push(['t0._trackPageview', '/virtual/order/password/']);
                    } catch (e) { }
                })

                $("#textCAPTCHA").focus(function () {
                    $("#capError").hide();
                })

                var allinput = $("input");
                for (i = 0; i < allinput.length; i++) {
                    var id = allinput[i].id;
                    if (id != "") {
                        var label = $("[for='" + id + "'].labelBlur").text();
                        if (label != "") {
                            if ($("#" + id).val() == "") {
                                $("[for='" + id + "'].labelBlur").css("display", "inline");
                            }
                            $("#" + id).blur(function () {
                                if ($("#" + this.id).val() == "") {
                                    $("[for='" + this.id + "'].labelBlur").css("display", "inline");
                                }
                            });
                        }
                    }
                }
            });

            $(function () {
                $(".input").focus(function () {
                    $(this).siblings("label").hide();
                })
                $(".input").blur(function () {
                    if ($(this).val() == "") {
                        $(this).siblings("label").show();
                    }
                });
                ///登录部分的邮箱和密码文本框的回车事件，最后return false;是为了截断表单提交
                $("#accountid").keypress(function (e) {
                    var key = window.event ? e.keyCode : e.which;
                    if (key == '13') {
                        return false;
                    }
                });
                $("#password").keypress(function (e) {
                    var key = window.event ? e.keyCode : e.which;
                    if (key == '13') {
                        btnSignInClick();
                        return false;
                    }
                });
                //document.domain = "youtx.com";
                //登录判断
                if (loginID == 0) {
                    $(".NewOrderInfor_Rtxt02").hide();
                    $(".InforPopUp").hide();
                    $(".NewOrderInfor_Rtxt").show();
                    if ($("#txtname").val() != "") {
                        checkTxtName();
                    } else {
                        $("#imgname").hide();
                        $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text("").hide();
                    }
                    //新增
                    if ($("#textUserName").val() != "") {
                        checkTxtName();
                    } else {
                        $("#imgUsername").hide();
                        $("#textUserName").siblings(".PromptErrorBox").children(".PromptError").text("").hide();
                    }

                    if ($("#txttel").val() != "") {
                        checkTxtTel();
                    } else {
                        $("#imgtel").hide();
                        $("#teltip").children(".PromptError").text("").hide();
                    }
                    $("#getYanZhengMa").hide();
                    $("#TelVerify").hide();
                    if ($('#countryselect').val() == "44_86") {
                        $("#YanZhengMa").show();
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text("").hide();
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").hide();
                        $("#EMail").hide();
                        //$("#getYanZhengMa").val("获取验证码").removeAttr("disabled").show();
                    } else {
                        $("#YanZhengMa").hide();
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text("").hide();
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").hide();
                        //$("#EMail").show();
                        $("#txtmail").siblings(".PromptErrorBox").children(".PromptError").text("").hide();
                    }
                }
                else {
                    $(".NewOrderInfor_Rtxt02").show();
                    if (1 == "0") {
                        $(".InforPopUp").show();
                    } else {
                        $(".InforPopUp").hide();
                    }
                    $(".NewOrderInfor_Rtxt").hide();
                    $("#txtname").val(userName);
                    //新增
                    $("#txtname").attr("disabled", true);
                    $("#imgname").show();

                    //12-11 新增
                    //如果已验证，身份验证信息不显示
                    if (PaperCheck == "True") {
                        $("#countryTr").hide();
                        $("#cardTypeTr").hide();
                        $("#cardTr").hide();
                        $("#nameTr").hide();
                    }
                    $("#txtname").siblings(".PromptErrorBox").children(".PromptError").hide();
                    $("#countryselect").val(telcodeshow);
                    $("#telcode").val("+" + telcodeshow.split('_')[1]).show();
                    //$("#getYanZhengMa").hide();
                    if (telcodeshow != "44_86") {
                        //$("#EMail").show();
                        $("#YanZhengMa").hide();
                        $("#txttel").val(tel);
                        checkTxtTel();
                    }
                    else {
                        //$("#EMail").hide();
                        if (phoneCheck == "1") {
                            $("#teltip").children().hide();
                            $("#txttel").val(tel);
                            $("#imgtel").show();
                            $(".PromptCorrect").text('已验证').show();
                            checktel = true;
                            $("#YanZhengMa").hide();
                        } else {
                            //$("#getYanZhengMa").val("获取验证码").removeAttr("disabled").show();
                            $("#YanZhengMa").show();
                            $("#txtYanZhengMa").siblings(".PromptErrorBox").children().hide();
                            if (tel != "") {
                                $("#txttel").val(tel);
                                checkTxtTel();
                                //$("#getYanZhengMa").val("获取验证码").removeAttr("disabled").show();
                            } else {
                                $("#imgtel").hide();
                                $("#teltip").children().hide();
                            }
                        }
                    }
                    if (mail != "") {
                        $("#txtmail").val(mail).attr("disabled", "disabled");
                        $("#imgmail").show();
                        $("#txtmail").siblings(".PromptErrorBox").children().hide();
                    } else {
                        $("#txtmail").val(mail).removeAttr("disabled");
                        $("#imgmail").show();
                        $("#txtmail").siblings(".PromptErrorBox").children(".PromptError").text("").show();
                    }
                    checkTxtName();
                    checkmail = true;
                };
                $(window).scroll(function () {
                    var height = (document.documentElement.scrollTop + document.body.scrollTop + (screen.availHeight - 400) / 2);
                    $(".popup7").css('top', height);
                });
                //绑定验证事件
                //验证姓名格式
                $("#txtname").blur(function () {
                    checkTxtName();
                });

                //12-10添加 
                $("#textUserName").blur(function () {
                    checkTextUserName();
                });

                //验证邮箱格式
                $("#txtmail").blur(function () {
                    checkTxtMail();
                });
                //验证手机格式
                $("#txttel").blur(function () {
                    checkTxtTel();
                });
                //验证入住人姓名格式
                $("#txtcheckinname").blur(function () {
                    checkTxtCheckInName();
                });
                //验证入住人手机格式
                $("#txtcheckintel").blur(function () {
                    checkTxtCheckInTel();
                });
                $("#txttel").focus(function () {
                    $("#teltip").children(".PromptError").hide();
                    $("#teltip").children(".PromptError02").hide();
                    $("#ThirdPartyLogin").hide();
                });
                //接受协议
                $("#agrees_to_terms").bind("click", function () {
                    if ($(this).attr("checked")) {
                        $("#btnConfirmOrder").removeAttr("disabled");
                    }
                    else {
                        $("#btnConfirmOrder").attr("disabled", "disabled");
                    }
                });
                $("#editTel").click(function () {
                    $("#txttel").val("").siblings(".PromptCorrect").hide();
                    $("#imgtel").hide();
                    $("#teltip").children().hide();
                    $("#txttel").prop("disabled", false);
                    $("#telhide").val("");
                    $("#telCodehide").val("");
                    try {
                        _gaq.push(['t0._trackPageview', '/virtual/order/xiugai/']);
                    } catch (e) { }
                });
                $("#aeditTel").click(function () {
                    $("#txttel").val("").siblings(".PromptCorrect").hide();
                    $("#imgtel").hide();
                    $("#teltip").hide();
                    $("#txttel").prop("disabled", false).focus();
                    $("#telhide").val("");
                });
                $("a.pop5").click(function () {
                    cboxOverlayShow();
                    $(".popup5").css({
                        position: "absolute",
                        top: (document.documentElement.scrollTop + document.body.scrollTop + (screen.availHeight - 400) / 2),
                        left: (document.body.offsetWidth - 350) / 2
                    }).show();
                });
                $("a.pop3").click(function () {
                    cboxOverlayShow();
                    $(".popup3").css({
                        position: "absolute",
                        top: (document.documentElement.scrollTop + document.body.scrollTop + (screen.availHeight - 500) / 2),
                        left: (document.body.offsetWidth - 430) / 2
                    }).show();
                });
                $("a.pop8").click(function () {
                    cboxOverlayShow();
                    $(".popup8").css({
                        position: "absolute",
                        top: (document.documentElement.scrollTop + document.body.scrollTop + (screen.availHeight - 300) / 2),
                        left: (document.body.offsetWidth - 430) / 2
                    }).show();
                });
                $("a.pop6").click(function () {
                    cboxOverlayShow();
                    $(".popup6").css({
                        position: "absolute",
                        top: (document.documentElement.scrollTop + document.body.scrollTop + (screen.availHeight - 600) / 2),
                        left: (document.body.offsetWidth - 480) / 2
                    }).show();
                });
                $("input.send").click(function () {
                    $("input.send").hide();
                    $("input.reset").val('正在发送验证码...').show()
                    var cellphonenum = $("#txttel").val();
                    var telecode = $("#countryselect").val();
                    $.getJSON("/payment/Ajax/VerifyPost.aspx", { "telcode": telecode, "action": "check_cellphone_num_and_send_message_not_register", "cellphonenum": cellphonenum }, function (data) {
                        if (data["result"] != "0") {
                            $("input.send").show();
                        }
                        else {
                            var leftsecond = 60;
                            $("input.send").hide();
                            var reSend = '(X)秒重试';
                            $("input.reset").val(reSend.replace("X", leftsecond));
                            timeIDNei = setInterval(function () {
                                if (leftsecond > 0) {
                                    leftsecond--;
                                    $("input.reset").val(reSend.replace("X", leftsecond));
                                }
                                else {
                                    clearInterval(timeIDNei);
                                    $("input.send").val('重新发送验证码').show();
                                    $("input.reset").val("").hide();
                                }
                            }, 1000);
                        }
                    })
                })
                $("input.btnCheckSpaSucceedClick").click(function () {
                    $(".popup5").hide();
                });
                //页面登陆
                $("#btnSignIn").click(function () {
                    try {
                        _gaq.push(['t0._trackPageview', '/virtual/order/login2/']);
                    }
                    finally {
                        return btnSignInClick();
                    }
                });
                ///提交我的订单按钮单击事件
                $("#btnConfirmOrder").click(function () {
                    if (!haveClick) {
                        haveClick = true;
                        $("#btnConfirmOrder").val('提交中...').addClass("OrderCoBtn02");
                        return btnConfirmOrderClick();
                    }
                    try {
                        _gaq.push(['t0._trackPageview', '/virtual/order/submit/']);
                    }
                    catch (e) {

                    }
                });
                $("#countryselect").change(function () {
                    $("#telcode").val("+" + $('#countryselect').val().split('_')[1]).show();
                    //                    if ($('#countryselect').val() == "44_86") {
                    $("#EMail").hide();
                    if (phoneCheck == "1" && $("#telcode").val() == tel) {
                        $("#YanZhengMa").hide();
                    } else {
                        $("#YanZhengMa").show();
                    }
                    //                    } else {
                    //                        $("#EMail").show();
                    //                        $("#YanZhengMa").hide();
                    //                        $("#txtmail").siblings(".PromptErrorBox").children().text("").hide();
                    //                        if (mail == "") {
                    //                            $("#imgmail").hide();
                    //                        } else {
                    //                            $("#imgmail").show();
                    //                        }
                    //                    }
                    if ($("#txttel").val() == "") {
                        $("#teltip").children().html("").hide();
                        return;
                    }
                    checkTxtTel();
                    try {
                        _gaq.push(['t0._trackPageview', '/virtual/order/abroad-area/']);
                    } catch (e) { }
                    var btnval = $("#getYanZhengMa").val();
                    if (btnval == "获取验证码" || btnval == "0秒后获取验证码") {
                        $("#getYanZhengMa").removeAttr("disabled");
                        $("#dianhuayanzheng").removeAttr("disabled");
                    } else {
                        $("#getYanZhengMa").attr("disabled", "disabled");
                        $("#dianhuayanzheng").attr("disabled", "disabled");
                    }
                });
                $(".WishlistClose").click(function () {
                    cboxOverlayHide();
                    $(".popup5").hide();
                });
                $("#pop3close").click(function () {
                    cboxOverlayHide();
                    $(".popup3").hide();
                });
                $("#pop8close").click(function () {
                    cboxOverlayHide();
                    $(".popup8").hide();
                });
                $(".closeLink").click(function () {
                    cboxOverlayHide();
                    $(".popup6").hide();
                });
                $("#txtYanZhengMa").blur(function () {
                    var yanzhengma = $("#txtYanZhengMa").val();
                    var telcode = $("#countryselect").val();
                    if (yanzhengma.length == 6 && !isNaN(yanzhengma)) {
                        $.getJSON("/payment/Ajax/VerifyPost.aspx", {"telcode":telcode, "action": "verifyphoneyanzhengma", "cellphonenum": $("#txttel").val(), "cellphonecode": $("#txtYanZhengMa").val() }, function (data) {
                            if (data["result"] == "1") {
                                checkTxtTel();
                            } else if (data["result"] == "2" || data["result"] == "100") {
                                $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text("验证码错误，请正确输入").show();
                                $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").hide();
                                $("#imgYanZhengMa").hide();
                            } else if (data["result"] == "0") {
                                currentTel = $("#txttel").val();
                                $("#txttel").removeAttr("disabled");
                                $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text("").hide();
                                $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").hide();
                                $("#imgYanZhengMa").show();
                            }
                        });
                    } else {
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text("验证码错误，请正确输入").show();
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").hide();
                        $("#imgYanZhengMa").hide();
                    }
                });
                //国内手机发送验证码
                $("#getYanZhengMa").click(function () {
                    SendYanZhengMa(0);
                });
                $("#dianhuayanzheng").click(function () {
                    SendYanZhengMa(1);
                });
                RdChkChange();
            });
            function SendYanZhengMa(obj) {

                
                if ($("#getYanZhengMa").attr("disabled") == "disabled") {
                    return false;
                }
                try {
                    if (obj == 0) { _gaq.push(['t0._trackPageview', '/virtual/order/verifyphone/']); }
                }
                finally {
                    $("#teltip").children(".PromptError").text("").hide();
                    if ($("#getYanZhengMa").attr("disabled") != "disabled") {
                        clearInterval(timeVer);
                    }
                    if ($("#txttel").val() != "") {
                        var telc = DelSpace($("#txttel").val());
                        //新增针对国内手机判断
                        var objExp = '';
                        if ($('#countryselect').val() == "44_86") {
                            objExp = new RegExp(/^(18[0-9]|13[0-9]|15[0-9]|14[0-9])\d{8}$/g);
                        }
                        else {
                            objExp = new RegExp(/^\d{5,20}$/g);
                        }
                        if (!objExp.test(telc)) {
                                $("#teltip").children(".PromptError").text("请输入正确的手机号码").show();
                                $("#getYanZhengMa").val("获取验证码").removeAttr("disabled");
                                $("#dianhuayanzheng").val("电话验证").removeAttr("disabled");
                                return false;
                         }
                        
                    } else {
                        $("#teltip").children(".PromptError").text("请输入正确的手机号码").show();
                        $("#getYanZhengMa").val("获取验证码").removeAttr("disabled");
                        $("#dianhuayanzheng").val("电话验证").removeAttr("disabled");
                        return false;
                    }
                    //对手机号的验证
                    //获取CountryID、NationName值
                    var NationName = $("#countryselect").val().split('_')[1];
                    var CountryID = $("#countryselect").val().split('_')[0];

                    var type = "checkTel";
//                    if ($('#countryselect').val() != "44_86") {
//                        type = "checkTelEn";
//                    }
                    $.ajax({
                        url: interfacePassport + "?tel=" + $("#txttel").val() + "&type=" + type + "&CountryID=" + CountryID + "&NationName=" + NationName + "&callback=?",
                        dataType: "jsonp",
                        type: "POST",
                        crossDomain: true,
                        success: function (data) {
                            if (null != data && data != "") {
                                if (data.result == "1") {
                                    $("#teltip").children(".PromptError").text("").hide();
                                    $.get("/payment/Booking/GetVerificationCode.aspx", { "flag": "0", "isvoice": obj, "r": Math.random() }, function (resault) {
                                        resault = resault.replace(new RegExp(/\n/g), "").replace(new RegExp(/\r/g), "");
                                        $("#yanzhengmatanceng").show().html(resault);
                                        if (obj == 1) {
                                            var css1 = $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").css("display");
                                            var css2 = $("#teltip").children(".PromptError").css("display");
                                            if (css1 != "none" && css2 != "none") {
                                                $("#yanzhengmatanceng").css("top", "0px").css("padding-left", "172px");
                                            } else if (css1 == "none" && css2 == "none") {
                                                $("#yanzhengmatanceng").css("top", "-35px").css("padding-left", "172px");
                                            } else {
                                                $("#yanzhengmatanceng").css("top", "-14px").css("padding-left", "172px");
                                            }
                                        } else if (obj == 0) {
                                            $("#yanzhengmatanceng").css("top", "40px").css("padding-left", "195px");
                                        }
                                        VerificationCode();
                                    });
                                }
                                else if (data.result == "2") {
                                    $("#teltip").children(".PromptError").html(data.msg).show();
                                    $("#getYanZhengMa").hide();
                                    $("#TelVerify").hide();
                                    return false;
                                }
                                else if (data.result == "3") {
                                    clearInterval(timeVer);
                                    $("#teltip").children(".PromptError").text("").hide();
                                    $("#getYanZhengMa").val("获取验证码").hide().removeAttr("disabled");
                                    $("#dianhuayanzheng").val("电话验证").removeAttr("disabled");
                                    $("#TelVerify").hide();
                                    $("#YanZhengMa").hide();
                                    return false;
                                }
                            }
                        }
                    });
                }
            }

            //RD改变触发事件
            function RdChkChange() {
                if (document.getElementById("rd2").checked == true) {
                    $(".CheckIn").show();
                    isSelf = 1;
                    try {
                        _gaq.push(['t0._trackPageview', '/virtual/order/other/']);
                    }
                    catch (e) { }
                }
                else {
                    $(".CheckIn").hide();
                    isSelf = 0;
                    try {
                        _gaq.push(['t0._trackPageview', '/virtual/order/self/']);
                    } catch (e) { }
                }
            }
            //验证国外手机号
            function checkForeignTel() {
                if ($("#txtForeignTel").val() != "") {
                    var telf = DelSpace($("#txtForeignTel").val());
                    var objExp = '';
                    if ($('#countryselect').val().split('_')[0] == "44") {
                        objExp = new RegExp(/^(18[0-9]|13[0-9]|15[0-9]|14[0-9])\d{8}$/g);
                    } else {
                        objExp = new RegExp(/^(0|[1-9]\d*)$/g);
                    }
                    if (objExp.test(telf)) {
                        $("#foreignTelTip").hide();
                        checkforeigntel = true;
                    }
                    else {
                        if ($('#countryselect').val().split('_')[0] == "44") {
                            $("#foreignTelTip").text("请输入正确的手机号").show();
                        } else {
                            $("#foreignTelTip").text("请输入正确的手机号").show();
                        }
                        checkforeigntel = false;
                    }
                } else {
                    checkforeigntel = false;
                    $("#foreignTelTip").show().text("请输入正确的手机号");
                }
            }
            ///页面登录按钮单击事件
            function btnSignInClick() {
                var check = true;
                var reg = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,5}){1,2})$/;
                var regMbl = /^1[3-9]\d{9}$/;
                var signin_email = $.trim($("#accountid").val());
                //var bl = signin_email.indexOf("@");
                //判断邮箱或手机的格式
                if (signin_email == "" || signin_email == "电子邮箱/手机号码") {
                    $("#p_accountid").text('邮箱/手机号不能为空').removeClass("W_item_listxt_error").addClass("W_item_listxt_error_visible");
                    check = false;
                }
                else if (reg.test(signin_email) || regMbl.test(signin_email)) {
                    $("#p_accountid").removeClass("W_item_listxt_error_visible").addClass("W_item_listxt_error");
                }
                else {
                    $("#p_accountid").text('您输入的邮箱/手机号格式不正确').removeClass("W_item_listxt_error").addClass("W_item_listxt_error_visible");
                    check = false;
                }
                reg = new RegExp("^[\\A-Za-z0-9_\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");
                var signin_password = $("#password").val();
                if (signin_password == "") {
                    $("#p_password").text('密码不能为空，请输入密码').removeClass("W_item_listxt_error").addClass("W_item_listxt_error_visible");
                    check = false;
                }
                else if (!reg.test(signin_password)) {
                    $("#p_password").text('密码由5-18位数字、字母组成').removeClass("W_item_listxt_error").addClass("W_item_listxt_error_visible");
                    check = false;
                }
                else {
                    $("#p_password").removeClass("W_item_listxt_error_visible").addClass("W_item_listxt_error");
                }
                if (check) {
                    $("#btnSignIn").attr("disabled", "disabled");
                    var remember_me = "";
                    //2012-5-7 李松峰修改提交地址为https
                    $.ajax({
                        url: interfacePassport + "?type=checkLogin&emailorMbl=" + signin_email + "&password=" + signin_password + "&fangdongID=" + fangdongID + "&tip=" + Math.random() + "&callback=?",
                        dataType: "jsonp",
                        type: "GET",
                        crossDomain: true,
                        success: function (data) {
                            $("#btnSignIn").removeAttr("disabled");
                            if (data.Message == "") {
                                $("#spanSignIn").text("登录过程中发生错误，请重试！").removeClass("W_item_listxt_error").addClass("W_item_listxt_error_visible");
                            }
                            if (data.Result != "1") {
                                $("#spanSignIn").text(data.Message).removeClass("W_item_listxt_error").addClass("W_item_listxt_error_visible");
                                return false;
                            }
                            else {
                                $("#spanSignIn").text(data.Message).removeClass("W_item_listxt_error_visible").addClass("W_item_listxt_error");
                                $("#validator").val("");
                                //$("#book_it_form").submit();
                                //锚点
                                var href_url = location.href;
                                if (href_url.indexOf("#txtname") > 0) {
                                } else {
                                    href_url += "#txtname";
                                    location.href = href_url;
                                }
                                window.location.reload();
                            }
                        }
                    });
                }
                else {
                    return false;
                }
            }
            ///提交我的订单按钮单击事件
            function btnConfirmOrderClick() {
                if ($("#txtname").val() == "") {
                    $("#imgname").hide();
                    $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text("请输入姓名").show();
                    checkname = false;
                } else {
                    if (getBytesLength($("#txtname").val()) > 20) {
                        $("#imgname").hide();
                        $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text("最多只能输入20个字符").show();
                        checkname = false;
                    } else if (getBytesLength($("#txtname").val()) < 2) {
                        $("#imgname").hide();
                        $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text("请至少输入两个字符").show();
                        checkname = false;
                    }
                }
                if ($("#txtmail").val() == "") {
                    if ($("#countryselect").val() == "44_86") {
                        checkmail = true;
                    } else {
                        $("#imgmail").hide();
                        $("#txtmail").siblings(".PromptErrorBox").children(".PromptError").text('请输入邮箱').show();
                        $("#txtmail").siblings(".PromptErrorBox").children(".PromptError02").hide();
                        checkmail = false;
                    }
                }
                if ($("#txttel").val() == "") {
                    $("#teltip").children(".PromptError02").hide();
                    $("#txttel").siblings(".PromptCorrect").hide();
                    $("#imgtel").hide();
                    $("#teltip").children(".PromptError").show().text("请输入正确的手机号");
                    checktel = false;
                }
                checkRemark();
                if (document.getElementById("rd2").checked == true) {
                    if ($("#txtcheckinname").val() == "") {
                        $("#imgcheckinname").hide();
                        $("#txtcheckinname").siblings(".PromptErrorBox").children(".PromptError").text('请输入入住人姓名').show();
                        checkciname = false;
                    }
                    if ($("#txtcheckintel").val() == "") {
                        $("#imgcheckintel").hide();
                        $("#txtcheckintel").siblings(".PromptErrorBox").children(".PromptError").show().text('请输入入住人的手机号');
                        checkcitel = false;
                    }
                    if (!checkciname || !checkcitel) {
                        haveClick = false;
                        $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                        return false;
                    }
                }
                if ($("#agrees_to_terms").attr("checked") != "checked") {
                    haveClick = false;
                    $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                    return false;
                }
                if ($("#btnConfirmOrder").attr("disabled") == "disabled") {
                    haveClick = false;
                    $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                    return false;
                }
                if ($('#countryselect').val() == "44_86" && ($("#txtYanZhengMa").val() == "" || $("#txtYanZhengMa").val().length != 6 || isNaN($("#txtYanZhengMa").val()))) {
                    if ((loginID == 0) || (!isNaN(loginID) && loginID != "0" && phoneCheck != 1)) {
                        haveClick = false;
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text("验证码错误，请正确输入").show();
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").hide();
                        $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                        return false;
                    }
                }

                //增加证件验证判断 begin
                //如果身份证信息为空，则return
                var cardCheck = true;
                var cardOtherCheck = true;
                if (isInitPaperCheck != "True") {
                    if ($("#textUserName").val() == "") {
                        checkUsername = false;
                    }

                    if ($("#IDNumber").val() == "") {
                        $("#CardErrorMsg span").html("请填写证件信息");
                        $("#CardErrorMsg span").show();
                        cardCheck = false;
                    }
                    if ($("#CardErrorMsg span").css("display") != "none") {
                        cardCheck = false;
                    }
                }
                    if (isSelf == 1 && $("#IDOtherNumber").val() == "") {
                        $("#CardErrorOtherMsg span").html("请填写证件信息");
                        $("#CardErrorOtherMsg span").show();
                        cardOtherCheck = false;
                    }
                    if ($("#CardErrorOtherMsg span").css("display") != "none") {
                        cardOtherCheck = false;
                    }

                    //2015-12-15 用户身份验证 begin                                    
                         

                    //end
               

                if (!checkname || !checktel || !checkremark || !cardCheck || !cardOtherCheck || !checkUsername) {
                    haveClick = false;
                    $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                    return false;
                }
                if (!isNaN(loginID) && loginID != "0") {
                    ///信息有改动，则更新成功后提交
                    //2015-12-21 如果是已登录的已身份验证的用户，无需对比身份信息是否一致
                    var judgeCondition = true;
                    if (isInitPaperCheck == "True") {
                        judgeCondition = DelSpaceLR($("#txtname").val()) != userName
                    || DelSpaceLR($("#txttel").val()) != tel
                    || telcodeshow != $("#countryselect").val();
                    }
                    else {
                        judgeCondition = DelSpaceLR($("#txtname").val()) != userName
                    || DelSpaceLR($("#txttel").val()) != tel
                    || telcodeshow != $("#countryselect").val()
                    || userIDNum != $("#IDNumber").val()
                    || TextUserName != $("#textUserName").val()
                    || CountryId2 != $("#CountryMyOption").val()
                    || NationaLities != $("#NationMyOption").val()
                    }


                    if (judgeCondition) {
                        //2015-12-21 如果身份信息有更改，先验证本人身份
                        if (userIDNum != $("#IDNumber").val() || TextUserName != $("#textUserName").val() || CountryId2 != $("#CountryMyOption").val()
                        || NationaLities != $("#NationMyOption").val()) {

                            var result = CheckCardForData(0);
                            if (result == false) {
                                $("#btnConfirmOrder").val('提交我的订单').removeClass("OrderCoBtn02");
                                haveClick = false;
                                return false;
                            }
                        }
                        $.ajax({
                            url: interfacePassport + "?userid=" + loginID
          + "&name=" + DelSpaceLR($("#txtname").val())
//          + "&mail=" + DelSpaceLR($("#txtmail").val())
          + "&tel=" + DelSpaceLR($("#txttel").val())
          + "&code=" + $("#countryselect").val()
          + "&IDNumber=" + $("#IDNumber").val()
          + "&IDType=" + $("#CartMyOption").val()
          + "&yanzhengma=" + $("#txtYanZhengMa").val()
          + "&textUserName =" + DelSpaceLR($("#textUserName").val())
          + "&type=changeUserInfo&callback=?",
                            dataType: "jsonp",
                            type: "GET",
                            crossDomain: true,
                            success: function (data) {
                                if (null != data && data != "") {
                                    if (data.result == "1") {
                                        regist = 1;
                                        IsSubmit();
                                    }
                                    else if (data.result == "2") {
                                        $("#YanZhengMa").show();
                                        $("#imgYanZhengMa").hide();
                                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text(data.msg).show();
                                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").hide();
                                        //checktel = false;
                                        haveClick = false;
                                        $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                                        return false;
                                    } else {
                                        $("#YanZhengMa").hide();
                                        $("#imgname").hide();
                                        $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text(data.msg).show();
                                        //checkname = false;
                                        haveClick = false;
                                        $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                                        return false;
                                    }
                                }
                            }
                        });
                    } else {
                        //$('#countryselect').val() == "44_86" &&
                        var telcode = $('#countryselect').val();
                        if (phoneCheck == 0) {
                            $("#txttelcheck").val($("#txttel").val());
                            $.getJSON("/payment/Ajax/VerifyPost.aspx", {"telcode":telcode, "action": "verifyphoneyanzhengma", "cellphonenum": $("#txttel").val(), "cellphonecode": $("#txtYanZhengMa").val(), "flag": "1" }, function (data) {
                                if (data["result"] == "1") {
                                    checkTxtTel();
                                    haveClick = false;
                                    $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                                } else if (data["result"] == "2" || data["result"] == "100") {
                                    $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text("验证码错误，请正确输入").show();
                                    $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").hide();
                                    $("#imgYanZhengMa").hide();
                                    haveClick = false;
                                    $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                                } else if (data["result"] == "0") {
                                    ajaxSynchronizer(registTelDo, IsSubmit);
                                }
                            });
                            return false;
                        } else {
                            regist = 1;
                            IsSubmit();
                        }
                    }
                }
                else {
                    ajaxSynchronizer(registUser, IsSubmit);
                }
            }

            //验证身份证
            function CheckCard(realusername, countryid2, nationalities, papertype, idcode, isSelf) {
                var result = "";
                $.ajax({
                   
                    url: interfacePassport + "?type=checkUserID&realusername=" + escape(realusername) + "&countryid2=" + countryid2 + "&nationalities=" + nationalities + "&papertype=" + papertype + "&userid=" + loginID + "&idcode=" + idcode + "&isSelf=" + isSelf + "&callback=?",
                    type: "GET",
                    async: false,     //是否同步执行
                    //data: { "type": "checkLogin", "emailorMbl": signin_email, "password": signin_password, "fangdongID": fangdongID, "tip": Math.random() },
                    success: function (data) {
                        //如果成功，返回true
                        result = data.result;
                    }
                });
                return result;
            }

            //如果已验证手机号，则第一步先验证是否验证次数到达8次，如果到达，不予验证
            function CheckCardCountError() {
                var CheckCount = CheckCardCount(loginID);

                return CheckCount;
            }


            //获取身份证验证的次数
            function CheckCardCount(UserID) {
                var count = 0;
                $.ajax({
                    //url: interfacePassport + "?type=IDVerifyCount&UserID=" + UserID + "&callback=?",
                    url: interfacePassport,
                    data: { "type": "IDVerifyCount", "UserID": UserID, "callback": "?" },
                    type: "GET",
                    async: false,     //是否同步执行    
                    dataType: "json",
                    //data: { "type": "checkLogin", "emailorMbl": signin_email, "password": signin_password, "fangdongID": fangdongID, "tip": Math.random() },
                    success: function (data) {
                        //如果成功，返回true
                        if (data.result == "1") {
                            count = data.msg;
                        }
                    }
                });
                return count;
            }

            //前提条件：已登录(已注册)。验证本人身份证号，如果验证成功后，入住的是非本人，则继续验证非本人的身份证
            function CheckCardForData(otherPeopleCheck) {

                if (isInitPaperCheck == "True" && isSelf == 0) { return true; }
                var CheckCount = CheckCardCountError();
                if (CheckCount >= 8 ) {
				  if(PaperCheck != "True"){
                    $("#CardErrorMsg span").html("验证次数已达上限，如需继续验证，请联系客服");
                    $("#CardErrorMsg span").show();
                    return false;
					}
				  else {	
				   $("#CardErrorOtherMsg span").html("验证次数已达上限，如需继续验证，请联系客服");
                   $("#CardErrorOtherMsg span").show();
                   return false;
				    }
                }
				
                var CheckLeftCount = 8 - CheckCount;
                //得到本人的验证信息

                if (PaperCheck != "True" || otherPeopleCheck == 0 ) {
                    var realusername = $("#textUserName").val();
                    var countryid2 = $("#CountryMyOption").val();
                    var nationalities = $("#NationMyOption").val();
                    var papertype = $("#CartMyOption").val();
                    var idcode = $("#IDNumber").val();
                    var msg = CheckCard(realusername, countryid2, nationalities, papertype, idcode, 0);
                    if (msg != "1") {
                        if (CheckLeftCount > 0) {
                            //$("#CardErrorMsg span").html("信息错误，请重新填写，您还有" + CheckLeftCount + "次机会");
                            $("#CardErrorMsg span").html("账户身份信息错误，验证失败");
                            $("#CardErrorMsg span").show();
                            return false;
                        }
                        else {
                            $("#CardErrorMsg").html("验证次数已达上限，如需继续验证，请联系客服");
                            $("#CardErrorMsg").show();
                            return false;
                        }
                      }
					else{
					    PaperCheck = "True";
					    //2015-12-21 本人身份验证成功，赋值变量，以确保更新本人信息后进行对比验证
					    userIDNum = $("#IDNumber").val();
					    TextUserName = $("#textUserName").val();
					    CountryId2 = $("#CountryMyOption").val();
					    NationaLities = $("#NationMyOption").val();
					     }
                    }


                        if (isSelf == 1 && otherPeopleCheck == 1) {
                        //得到非本人的验证信息
                        var realusername_Other = $("#txtcheckinname").val();
                        var countryid2_Other = $("#CountryOtherOption").val();
                        var nationalities_Other = $("#NationOtherOption").val();
                        var papertype_Other = $("#CartOtherOption").val();
                        var idcode_Other = $("#IDOtherNumber").val();
                        var msg_Other = CheckCard(realusername_Other, countryid2_Other, nationalities_Other, papertype_Other, idcode_Other, isSelf);
                        if (msg_Other != "1") {
                            if (CheckLeftCount > 0) {
                                $("#CardErrorOtherMsg span").html("入住人身份信息错误，验证失败");
                                $("#CardErrorOtherMsg span").show();
                                return false;
                            }
                            else {
                                $("#CardErrorOtherMsg span").html("验证次数已达上限，如需继续验证，请联系客服");
                                $("#CardErrorOtherMsg span").show();
                                return false;
                            }
                        }
                    }
                
                return true;
            }


            //提交订单
            function IsSubmit() {
                if (regist == 1) {
                    var result = CheckCardForData(1);
                    if (result == false) {
                        $("#btnConfirmOrder").val('提交我的订单').removeClass("OrderCoBtn02");
                        haveClick = false;
                        return false;
                    }
                    if (loginID != 0) {
                           
                        var youtx = new Youtx.OtherMobile(loginID);
                        youtx.AddModel();
                    }

                    //判断代金券是否已使用 start
                    //                    var ids = $("#ticketCollect input:checked");
                    //                    if (ids.length > 0) {
                    //                        //console.log("判断代金券是否已使用start");
                    //                        var ticketIds = '';
                    //                        $("#ticketCollect input:checked").each(function () {
                    //                            ticketIds += this.value + "|";
                    //                        });
                    //                        ticketIds = window.escape(ticketIds);
                    //                        $.post("../Ajax/AjaxCheckTicketIsUsed.ashx", { 'ticketIds': ticketIds }, function (data) {
                    //                            //判断选中的代金券时候有已经使用过的
                    //                            if (data == 1)
                    //                                $("#book_it_form").submit();
                    //                            else {
                    //                                //您所选择的代金劵已使用，请重新选择。
                    //                                $("#divTicketIsUsed").css("display", "block");
                    //                                //3 秒后刷新页面
                    //                                //console.log("3秒后刷新当前页start");
                    //                                setTimeout(function () {
                    //                                    //console.log("3秒后刷新当前页end");
                    //                                    window.location.reload();
                    //                                }, 3000);
                    //                                return;
                    //                            }
                    //                        });
                    //                        //console.log("判断代金券是否已使用end");
                    //                    } else {
                    //                        $("#book_it_form").submit();
                    //                    }
                    //判断代金券是否已使用 end                    
                    $("#book_it_form").submit();
                }
                else {
                    if (loginID != 0) {
                        $("#teltip").removeClass("PromptNoError").addClass("PromptError");
                    }
                    haveClick = false;
                    $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                }
            }
            function registTelDo() {
                if ($("#txttel").val() != "") {
                    var name = DelSpaceLR($("#txtname").val());
                    if (name == userName) {
                        name = '';
                    }
                    $.ajax({
                        cache: false,
                        type: "POST",
                        url: interfacePassport + "?type=registTel&telnum=" + $("#txttel").val() + "&telcode=" + $('#countryselect').val() + "&name=" + name + "&userid=" + loginID + "&callback=?",
                        async: false,
                        dataType: "jsonp",
                        crossDomain: true,
                        success: function (data) {
                            if (null != data && data != "") {
                                if (data.result == "1") {
                                    regist = 1;
                                }
                                else {
                                    regist = 2;
                                    errMsg = data.msg;
                                }
                            }
                        }
                    })
                }
                else {
                    regist = 2;
                }
            }
            //注册用户并登录
            function registUser() {
                if ($("#telhide").val() == "") {
                    $("#teltip").children("PromptError").show().text('请验证您的手机号');
                }
                //&& checkmail
                if (checkname  && checktel) {
                    var first_name = $("#txtname").val();
                    var last_name = $("#txtname").val();
                    var email = $("#txtmail").val();
                    var CellphoneNumber = $("#txttel").val();
                    var phonecode = $("#countryselect").val();
                    var yanzhengma2 = $("#txtYanZhengMa").val();

                  
                    ///李松峰2012-5-7修改提交https
                    ///生成用户，差给用户发短信内容
                    $.ajax({
                        url: interfacePassport + "?type=registUser&last_name=" + last_name + "&email=" + email + "&CellphoneNumber=" + CellphoneNumber + "&telcode=" + phonecode + "&yanzhengma=" + yanzhengma2 + "&isForeign=0&callback=?",
                        cache: false,
                        type: "POST",
                        async: false,
                        crossDomain: true,
                        dataType: "jsonp",
                        success: function (data) {
                            if (data.result == "1") {
                                regist = 1;
								loginID=$.cookie("new_loginid");
                            }
                            else {
                                regist = 2;
                                errMsg = data.msg;
                            }
                        }
                    })
                }
                else {
                    regist = 2;
                }
            }
            //实现跨域同步请求
            function ajaxSynchronizer(ajaxCompleteFlagCallback, synchronizedCallback) {
                var intervalId = null;
                ajaxCompleteFlagCallback();
                function waitAjaxCompleteFlag() {
                    if (regist != 0) {
                        synchronizedCallback();
                        clearInterval(intervalId);
                        intervalId = null;
                    }
                }
                if (regist == 0) {
                    intervalId = setInterval(waitAjaxCompleteFlag, 150);
                } else {
                    synchronizedCallback();
                }
            }

            //12-10 新增
            function checkTextUserName() {
                var txtnamenos = DelSpaceLR($("#textUserName").val());
                if (txtnamenos == "") {
                    $("#imgUsername").hide();
                    $("#textUserName").siblings(".PromptErrorBox").children(".PromptError").text("请输入姓名").show();
                    checkUsername = false;
                }
                else if (isUserName(txtnamenos)) {
                    if (getBytesLength(txtnamenos) > 20) {
                        $("#imgUsername").hide();
                        $("#textUserName").siblings(".PromptErrorBox").children(".PromptError").text("最多只能输入20个字符").show();
                        checkUsername = false;
                    } else if (getBytesLength(txtnamenos) < 2) {
                        $("#imgUsername").hide();
                        $("#textUserName").siblings(".PromptErrorBox").children(".PromptError").text("请至少输入两个字符").show();
                        checkUsername = false;
                    } else {
                        $("#imgUsername").show();
                        $("#textUserName").siblings(".PromptErrorBox").children(".PromptError").hide();
                        checkUsername = true;
                    }
                }
                else {
                    $("#imgUsername").hide();
                    $("#textUserName").siblings(".PromptErrorBox").children(".PromptError").text("包含不正确的字符，请重新输入").show();
                    checkUsername = false;
                }
            }

            function checkTxtName() {
                var txtnamenos = DelSpaceLR($("#txtname").val());
                if (txtnamenos == "") {
                    $("#imgname").hide();
                    $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text("请输入姓名").show();
                    checkname = false;
                }
                else if (isUserName(txtnamenos)) {
                    if (getBytesLength(txtnamenos) > 20) {
                        $("#imgname").hide();
                        $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text("最多只能输入20个字符").show();
                        checkname = false;
                    } else if (getBytesLength(txtnamenos) < 2) {
                        $("#imgname").hide();
                        $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text("请至少输入两个字符").show();
                        checkname = false;
                    } else {
                        $("#imgname").show();
                        $("#txtname").siblings(".PromptErrorBox").children(".PromptError").hide();
                        checkname = true;
                    }
                }
                else {
                    $("#imgname").hide();
                    $("#txtname").siblings(".PromptErrorBox").children(".PromptError").text("包含不正确的字符，请重新输入").show();
                    checkname = false;
                }
            }
            function checkTxtCheckInName() {
                var txtcheckinnamens = DelSpaceLR($("#txtcheckinname").val());
                if (txtcheckinnamens == "") {
                    $("#imgcheckinname").hide();
                    $("#txtcheckinname").siblings(".PromptErrorBox").children(".PromptError").text('请输入入住人姓名').show();
                    checkciname = false;
                }
                else if (isUserName(txtcheckinnamens)) {
                    $("#imgcheckinname").show();
                    $("#txtcheckinname").siblings(".PromptErrorBox").children(".PromptError").hide();
                    checkciname = true;
                }
                else {
                    $("#imgcheckinname").hide();
                    $("#txtcheckinname").siblings(".PromptErrorBox").children(".PromptError").text("包含不正确的字符，请重新输入").show();
                    checkciname = false;
                }
            }
            function checkTxtCheckInTel() {
                if ($("#txtcheckintel").val() != "") {
                    //objExp = new RegExp(/^(0|[1-9]\d*)$/g);
                    objExp = new RegExp(/^(18[0-9]|13[0-9]|15[0-9]|14[0-9])\d{8}$/g);
                    if (objExp.test($("#txtcheckintel").val())) {
                        $("#txtcheckintel").siblings(".PromptErrorBox").children(".PromptError").hide();
                        $("#imgcheckintel").show();
                        checkcitel = true;
                    }
                    else {
                        $("#imgcheckintel").hide();
                        $("#txtcheckintel").siblings(".PromptErrorBox").children(".PromptError").text('手机格式有误，请输入正确的大陆手机号').show();
                        checkcitel = false;
                    }
                } else {
                    $("#imgcheckintel").hide();
                    $("#txtcheckintel").siblings(".PromptErrorBox").children(".PromptError").show().text('请输入入住人的手机号');
                    checkcitel = false;
                }
            };
            function checkTxtMail() {
                if ($("#txtmail").val() != "") {
                    //判断邮箱格式
                    var objExp = new RegExp(/^[a-zA-Z0-9_\-.]{1,}@[a-zA-Z0-9_\-]{1,}\.[a-zA-Z0-9_\-.]/g);

                    if (objExp.test($("#txtmail").val()) == true) {
                        $.ajax({
                            url: interfacePassport + "?email=" + $("#txtmail").val() + "&telcode=" + $('#countryselect').val() + "&type=checkMail&callback=?",
                            dataType: "jsonp",
                            type: "GET",
                            crossDomain: true,
                            success: function (data) {
                                if (null != data && data != "") {
                                    if (data.result == "1") {
                                        $("#imgmail").show();
                                        $("#txtmail").siblings(".PromptErrorBox").children().text("").hide();
                                        checkmail = true;
                                    }
                                    else if (data.result == "2") {
                                        $("#imgmail").hide();
                                        if (loginID == 0) {
                                            $("#txtmail").siblings(".PromptErrorBox").children(".PromptError").html(data.message).show();
                                        } else {
                                            $("#txtmail").siblings(".PromptErrorBox").children(".PromptError").html("该邮箱已经注册，请换填一个邮箱").show();
                                        }
                                        checkmail = false;
                                        haveClick = false;
                                        $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                                    }
                                    else {
                                        $("#imgmail").hide();
                                        $("#txtmail").siblings(".PromptErrorBox").children(".PromptError").html(data.message).show();
                                        checkmail = false;
                                        haveClick = false;
                                        $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                                    }
                                }
                            }
                        });
                    }
                    else {
                        $("#imgmail").hide();
                        $("#txtmail").siblings(".PromptErrorBox").children(".PromptError").text("请输入正确邮箱").show();
                        checkmail = false;
                    }
                }
                else {
                    if ($('#countryselect').val() == "44_86") {
                        $("#imgmail").show();
                        $("#txtmail").siblings(".PromptErrorBox").children().text("").hide();
                        checkmail = true;
                    } else {
                        $("#imgmail").hide();
                        $("#txtmail").siblings(".PromptErrorBox").children(".PromptError").text("请输入正确邮箱").show();
                        checkmail = false;
                    }
                }
            }
            function checkRemark() {
                if ($("#txtRemark").val() == "" || $("#txtRemark").val() == remark) {
                    $("#txtRemark").val(remark).css("color", "#999");
                    $("#txtRemark").siblings(".PromptErrorBox").children(".PromptError").hide();
                }
                if ($("#txtRemark").val() != "" && $("#txtRemark").val().length > 100) {
                    $("#txtRemark").siblings(".PromptErrorBox").children(".PromptError").text("备注内容不能超过100字").show();
                    checkremark = false;
                }
                else {
                    $.post("/payment/Ajax/xuci.aspx", { content: $("#txtRemark").val(), rand: Math.random() }, function (date) {
                        if (date == "False" || date == "false") {
                            $("#txtRemark").siblings(".PromptErrorBox").children(".PromptError").text("备注信息中不能包含手机、邮箱等联系方式").show();
                            checkremark = false;
                        } else {
                            $("#txtRemark").siblings(".PromptErrorBox").children(".PromptError").hide();
                            checkremark = true;
                            try {
                                _gaq.push(['t0._trackPageview', '/virtual/order/remark/']);
                            } catch (e) { }
                        }
                    });
                }
            }
            //验证大陆手机号是否已验证
            function checktelregist() {
                //对手机号的验证
                $.ajax({
                    url: interfacePassport + "?tel=" + $("#txttel").val() + "&type=checkTel&isSubmit=1&callback=?",
                    dataType: "jsonp",
                    cache: false,
                    type: "POST",
                    async: false,
                    crossDomain: true,
                    success: function (data) {
                        if (null != data && data != "") {
                            if (data.result == "100") {
                                regist = 1;

                            }
                            else if (data.result == "1" || data.result == "3") {
                                regist = 0;
                            }
                            else if (data.result == "2") {
                                regist = 0;
                                //已绑定
                                $("#imgtel").hide();
                                if (!isNaN(loginID) && loginID != "0") {//登录状态的提示
                                    $("#teltip").children(".PromptError02").hide();
                                    $("#teltip").children(".PromptError").text("该手机号已与其他账号绑定，请更换号码").show();
                                }
                                else {//为登录状态的提示
                                    $("#teltip").children(".PromptError").hide();
                                    $("#teltip").children(".PromptError02").show();
                                }
                            }
                            else {
                                regist = 0;
                                //不合法
                                $("#imgtel").hide();
                                $("#teltip").children(".PromptError02").hide();
                                $("#teltip").children(".PromptError").text(data.msg).show();
                            }
                        }

                        haveClick = false;
                        $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                    }
                });
            }
            //验证非大陆手机号是否已验证
            function checktelregistf() {
                //对海外手机号的验证
                $.ajax({
                    url: interfacePassport + "?tel=" + $("#txttel").val() + "&code=" + $('#countryselect').val().split('_')[1] + "&type=checkTelEn&callback=?",
                    dataType: "jsonp",
                    type: "GET",
                    crossDomain: true,
                    success: function (data) {
                        if (null != data && data != "") {
                            if (data.result == "1") {
                                checktel = true;
                                if (!isNaN(loginID) && loginID != "0") {
                                    ajaxSynchronizer(registTelDo, IsSubmit);
                                }
                                else {
                                    ajaxSynchronizer(registUser, IsSubmit);
                                }
                            }
                            else if (data.result == "2") {
                                $("#imgtel").hide();
                                $("#teltip").children(".PromptError02").hide();
                                $("#teltip").children(".PromptError").text("该手机号已与其他账号绑定，请更换号码").show();
                                haveClick = false;
                                $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                            }
                            else {
                                //不合法
                                $("#imgtel").hide();
                                $("#teltip").children(".PromptError02").hide();
                                $("#teltip").children(".PromptError").text(data.msg).show();
                                haveClick = false;
                                $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                            }
                        }
                    },
                    error: function () {
                        haveClick = false;
                        $("#btnConfirmOrder").val("提交我的订单").removeClass("OrderCoBtn02");
                        return false;
                    }
                });
            }
            function checkTxtTel() {
                if ($("#txttel").val() != "") {
                    //判断手机格式
                    var telf = DelSpace($("#txttel").val());
                    var objExp = '';
                    if ($('#countryselect').val().split('_')[0] == "44") {
                        objExp = new RegExp(/^(18[0-9]|13[0-9]|15[0-9]|14[0-9])\d{8}$/g);
                    } else {
                        objExp = new RegExp(/^\d{5,20}$/g);
                    }
                    if (objExp.test(telf)) {
                        //已经验证的手机号如若没有改变，不需要显示获取验证码的按钮
                        //if (currentTel == $("#txttel").val() || (tel == $("#txttel").val() && phoneCheck=="1")) 
                        if (tel == $("#txttel").val() && phoneCheck == "1") {
                            $("#getYanZhengMa").hide();
                            $("#TelVerify").hide();
                            $("#YanZhengMa").hide();
                            $("#imgtel").show();
                            checktel = true;
                            return;
                        }
                        //获取CountryID、NationName值
                        var NationName = $("#countryselect").val().split('_')[1];
                        var CountryID = $("#countryselect").val().split('_')[0];

                        var type = "checkTel";
//                        if ($('#countryselect').val() != "44_86") {
//                            type = "checkTelEn";
//                        }
                        $.ajax({
                            url: interfacePassport + "?tel=" + $("#txttel").val() + "&code=" + $('#countryselect').val().split("_")[1] + "&type=" + type + "&CountryID=" + CountryID + "&NationName=" + NationName +  "&callback=?",
                            dataType: "jsonp",
                            type: "POST",
                            crossDomain: true,
                            success: function (data) {
                                if (null != data && data != "") {
                                    if (data.result == "1" || data.result == "3") {
                                        $("#teltip").children(".PromptError").text("").hide();
                                        $("#imgtel").show();
                                        checktel = true;
                                        //|| ($('#countryselect').val() != "44_86")
                                        if ((data.result == "3" && $("#txttel").val() == tel && phoneCheck == 1) ) {
                                            $("#getYanZhengMa").val("获取验证码").hide().removeAttr("disabled");
                                            $("#TelVerify").hide();
                                            $("#dianhuayanzheng").removeAttr("disabled");
                                            $("#YanZhengMa").hide();
                                        } else {
                                            $("#getYanZhengMa").show();
                                            if (isfirst == 1) { $("#TelVerify").show(); }
                                        }
                                        $("#ThirdPartyLogin").hide();
                                    }
                                    else if (data.result == "2") {
                                        //已绑定
                                        $("#imgtel").hide();
                                        if (loginID == 0) {
                                            $("#teltip").children(".PromptError").html(data.msg).show();
                                        } else {
                                            $("#teltip").children(".PromptError").html("该手机号已注册，请换填一个手机号").show();
                                        }
                                        if (loginID == 0 && $('#countryselect').val() == "44_86") {
                                            $("#ThirdPartyLogin").show();
                                        } else {
                                            $("#ThirdPartyLogin").hide();
                                        }
                                        checktel = false;
                                        $("#getYanZhengMa").val("获取验证码").hide().removeAttr("disabled");
                                        $("#TelVerify").hide();
                                        $("#dianhuayanzheng").removeAttr("disabled");
                                    }
                                    else {
                                        //不合法
                                        $("#imgtel").hide();
                                        $("#teltip").children(".PromptError").text("请输入正确的手机号").show();
                                        checktel = false;
                                        $("#ThirdPartyLogin").hide();
                                        $("#getYanZhengMa").val("获取验证码").hide().removeAttr("disabled");
                                        $("#TelVerify").hide();
                                        $("#dianhuayanzheng").removeAttr("disabled");
                                    }
                                }
                            }
                        });
                    }
                    else {
                        $("#imgtel").hide();
                        $("#teltip").children(".PromptError02").hide();
                        $("#teltip").children(".PromptError").text("请输入正确的手机号").show();
                        checktel = false;
                        $("#ThirdPartyLogin").hide();
                        $("#getYanZhengMa").hide();
                        $("#TelVerify").hide();
                        $("#dianhuayanzheng").removeAttr("disabled");
                    }
                    $("#txtYanZhengMa").siblings(".PromptErrorBox").children().hide();
                    if (!isNaN(loginID) && loginID != "0" && phoneCheck == 1) {
                        if (telcodeshow == $("#countryselect").val() && tel == $("#txttel").val()) {
                            $("#txttel").siblings(".PromptCorrect").show();
                        }
                        else {
                            $("#txttel").siblings(".PromptCorrect").hide();
                        }
                    }
                } else {
                    $("#teltip").children(".PromptError02").hide();
                    $("#imgtel").hide();
                    $("#teltip").children(".PromptError").show().text("请输入正确的手机号");
                    $("#txttel").siblings(".PromptCorrect").hide();
                    checktel = false;
                    $("#ThirdPartyLogin").hide();
                    $("#getYanZhengMa").hide();
                    $("#TelVerify").hide();
                    $("#dianhuayanzheng").removeAttr("disabled");
                }
            }
            //验证用户姓名
            function isUserName(str) {
                var reg = /^[a-zA-Z0-9\u4e00-\u9fa5\s+]{0,100}$/;
                if (!reg.test(str)) {
                    return false;
                }
                else {
                    return true;
                }
            }
            function DelSpace(str) {
                var str1 = str.replace(/\s+/g, "");
                return str1;
            }
            function DelSpaceLR(str) {
                //return str.replace(/^\s+|\s+$/g, "");
                return $.trim(str);
            }
            function getBytesLength(str) {
                return str.replace(/[^\x00-\xff]/g, 'xx').length;
            }
            //国内手机发送验证码
            function SendCAPTCHA(obj) {
                var telecode = $("#countryselect").val();
                var action1 = "check_cellphone_num_and_send_message_not_register";
                if (obj == 1) action1 = "check_cellphone_num_and_send_voice_not_register";
                $.getJSON('/payment/Ajax/VerifyPost.aspx', { "action": action1, "telcode": telecode, "cellphonenum": $("#txttel").val(), "imgyanzhengma": $("#txt_mathcode").val(), "r": Math.random() }, function (data) {
                    //$.getJSON('https://passport.youtx.com/payment/Ajax/VerifyPost.aspx?action=' + action1 + '&cellphonenum=' + $("#txttel").val() + '&imgyanzhengma=' + $("#txt_mathcode").val() + '&r=' + Math.random() + '&callback=?', function (data) {
                    //$("#getYanZhengMa").val("正在发送").attr("disabled", "disabled");
                    //$("#dianhuayanzheng").val("正在发送").attr("disabled", "disabled");
                    $("#getYanZhengMa").val("获取验证码").removeAttr("disabled");
                    $("#dianhuayanzheng").val("电话验证").removeAttr("disabled");
                    if (data["result"] == "1" || data["result"] == "2" || data["result"] == "100") {
                        $("#teltip").children(".PromptError").text("请输入正确的手机号码").show();
                    } else if (data["result"] == "2.2" || data["result"] == "2.3") {
                        $("#teltip").children(".PromptError").text(data["text"]).show();
                    } else if (data["result"] == "2.4") {
                        $("#teltip").children(".PromptError").text(data["text"]).show();
                        VerificationCode();
                    } else if (data["result"] == "3" || data["result"] == "4") {
                        $("#teltip").children(".PromptError").text("验证码发送失败,请获取验证码").show();
                    } else if (data["result"] == "0") {
                        isfirst = 1;
                        $("#TelVerify").show();
                        $("#getYanZhengMa").attr("disabled", "disabled");
                        $("#txttel").attr("disabled", "disabled");
                        $("#dianhuayanzheng").attr("disabled", "disabled");
                        $("#yanzhengmatanceng").hide();
                        $("#teltip").children(".PromptError").text("").hide();
                        $("#YanZhengMa").show();
                        $("#txtYanZhengMa").val();
                        $("#imgYanZhengMa").hide();
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".CorrectPass").show();
                        $("#txtYanZhengMa").siblings(".PromptErrorBox").children(".PromptError").text("").hide();
                        var leftsecond = 60;
                        var reSend = "X秒后获取验证码";
                        var reSend2 = "X秒后获取电话验证码";
                        $("#getYanZhengMa").val(reSend.replace("X", leftsecond));
                        $("#dianhuayanzheng").val(reSend2.replace("X", leftsecond));
                        timeVer = setInterval(function () {
                            if (leftsecond > 0) {
                                leftsecond--;
                                var re1 = reSend.replace("X", leftsecond);
                                var re2 = reSend2.replace("X", leftsecond);
                                $("#getYanZhengMa").val(re1);
                                $("#dianhuayanzheng").val(re2);
                            }
                            else {
                                clearInterval(timeVer);
                                $("#txttel").removeAttr("disabled");
                                $("#getYanZhengMa").val("获取验证码").removeAttr("disabled");
                                $("#dianhuayanzheng").val("电话验证").removeAttr("disabled");
                            }
                        }, 1000);
                    }
                    $("#btn_mathcode").removeAttr("disabled");
                });
            }

            function mailSighIn() {
                $("#accountid").val($("#txtmail").val());
                $("#accountid").siblings("label").hide();
                $(".pop5").click();
            }
            function telSighIn(obj) {
                if (obj == "0") {
                    $("#accountid").val($("#txttel").val());
                    $("#accountid").siblings("label").hide();
                } else if (obj == "1") {
                    $("#accountid").val($("#txtmail").val());
                    $("#accountid").siblings("label").hide();
                }
                else if (obj == "2") {
                    $("#accountid").val("");
                    $("#accountid").siblings("label").show();
                }
                $("#spanSignIn").text("").removeClass("W_item_listxt_error_visible").addClass("W_item_listxt_error");
                $("#p_accountid").text("").removeClass("W_item_listxt_error_visible").addClass("W_item_listxt_error");
                $("#p_password").text("").removeClass("W_item_listxt_error_visible").addClass("W_item_listxt_error");
                $("#password").val("");
                $("a.pop5").click();
            }
            function telSighInPop() {
                $("#accountid").val($("#txttelcheck").val());
                $("#accountid").siblings("label").hide();
                $(".popup7").hide();
                $(".pop5").click();
            }
            function cboxOverlayShow() {
                $("#cboxOverlay").css({
                    opacity: 0.8,
                    height: document.body.offsetHeight,
                    width: document.body.offsetWidth,
                    overflow: "hidden"
                }).show();
            }
            function cboxOverlayHide() {
                $("#cboxOverlay").css({
                    opacity: 1
                }).hide();
            }
            function cancelEdit() {
                $("#cancelEdit").hide();

                $("#teltip").children().hide();
                $("#txttel").val(tel);
                $("#countryselect").val(telcodeshow);
                $("#telcode").val("+" + telcodeshow.split('_')[1]).show();
                $("#imgtel").show();
                if (phoneCheck == 1) {
                    $(".PromptCorrect").text("已验证").show();
                }
                
            }
        </script>
    </div>
    </form></div>
    <script type="text/javascript">
        var ScrW = window.screen.width;
        var ScrH = window.screen.height;
        var LyUrl = escape(encodeURI(document.referrer));
        var Post1Url = "/payment/ajax/AjaxBookingAccessLog.ashx?uid=2600363&hid=144142&lyurl=" + LyUrl + "&w=" + ScrW + "&h=" + ScrH + "&type=1&r=0.958618575222147"
        document.write("<scri" + "pt src='" + Post1Url + "'></scr" + "ipt>"); 
    </script><script src="static/submit_order/AjaxBookingAccessLog.ashx"></script>
    <!--Cps页面布码Begin-->
    <script type="text/javascript">
        var ScrW = window.screen.width;     //宽
        var ScrH = window.screen.height;    //高
        var LyUrl = escape(encodeURI(document.referrer));      //来源URL
        var VPType = "4";                   //***** 0.列表页、1.详情页、2.注册 3.登录 4.国内房源预定页面 5.国外房源预定页面 6.国内房源支付页面 7.国内房源租客取消页面 8.国外房源租客取消页面
        var CpsSite = 'http://dlps.youtx.com/'; //CPS站点
        var PostUrl = CpsSite + 'Cps/CpsViewRecord.aspx?ScrW=' + ScrW + '&ScrH=' + ScrH + "&LyUrl=" + LyUrl + "&VPType=" + VPType;
        document.write("<scri" + "pt src='" + PostUrl + "'></scr" + "ipt>"); 
    </script><script src="static/submit_order/CpsViewRecord.aspx"></script>
    <!--Cps页面布码End-->
    
    <script type="text/javascript" src="static/submit_order/HouseHitLog.aspx"></script>
    
    


<!--尾部2011-9-6修改 start-->
        <div class="footer">
    <dl class="FooterCity clearfix" style="border:none;margin-bottom:-8px;">
       <dd class="footer_link_grey">热门城市：</dd>
       <dt><a href="http://www.youtx.com/beijing/" target="_blank">北京短租房</a>|<a href="http://www.youtx.com/shanghai/" target="_blank">上海短租房</a>|<a href="http://www.youtx.com/guangzhou/" target="_blank">广州短租房</a>|<a href="http://www.youtx.com/shenzhen/" target="_blank">深圳短租房</a>|<a href="http://www.youtx.com/hongkong/" target="_blank">香港短租房</a>|<a href="http://www.youtx.com/sanya/" target="_blank">三亚短租房</a>|<a href="http://www.youtx.com/suzhou/" target="_blank">苏州短租房</a>|<a href="http://www.youtx.com/hangzhou/" target="_blank">杭州短租房</a>|<a href="http://www.youtx.com/nanjing/" target="_blank">南京短租房</a>|<a href="http://www.youtx.com/xian/" target="_blank">西安短租房</a>|<a href="http://www.youtx.com/dalian/" target="_blank">大连短租房</a>|<a href="http://www.youtx.com/qingdao/" target="_blank">青岛短租房</a>|<a href="http://www.youtx.com/chongqing/" target="_blank">重庆短租房</a> <a href="http://www.youtx.com/chengdu/" target="_blank">成都短租房</a>|<a href="http://www.youtx.com/wuhan/" target="_blank">武汉短租房</a>|<a href="http://www.youtx.com/tianjin/" target="_blank">天津短租房</a>|<a href="http://www.youtx.com/kunming/" target="_blank">昆明短租房</a>|<a href="http://www.youtx.com/lijiang/" target="_blank">丽江短租房</a>|<a href="http://www.youtx.com/xiamen/" target="_blank">厦门短租房</a>|<a href="http://www.youtx.com/lasa/" target="_blank">拉萨短租房</a>|<a href="http://www.youtx.com/zhengzhou/" target="_blank">郑州短租房</a>|<a href="http://www.youtx.com/changsha/" target="_blank">长沙短租房</a>|<a href="http://www.youtx.com/changchun/" target="_blank">长春短租房</a>|<a href="http://www.youtx.com/shenyang/" target="_blank">沈阳短租房</a>|<a href="http://www.youtx.com/cities/" target="_blank">更多城市..</a>|<a href="http://www.youtx.com/locations/" target="_blank">更多地标...</a></dt></dl>

    <dl class="FooterCity FooterCity02 clearfix">
        <!--<dd class="footer_link_grey">国外城市：</dd>
        <dt>
            <span><a href="http://www.youtx.com/chicago/" target="_blank">芝加哥住宿</a>|</span>
            <span><a href="http://www.youtx.com/hawaii/" target="_blank">夏威夷住宿</a>|</span>
            <span><a href="http://www.youtx.com/singapore/" target="_blank">新加坡住宿</a>|</span><span><a href="http://www.youtx.com/paris/" target="_blank">巴黎住宿</a>|</span><span><a href="http://www.youtx.com/roma/" target="_blank">罗马住宿</a>|</span><span><a href="http://www.youtx.com/milan/" target="_blank">米兰住宿</a>|</span><span><a href="http://www.youtx.com/venice/" target="_blank">威尼斯住宿</a>|</span><span><a href="http://www.youtx.com/madrid/" target="_blank">马德里住宿</a>|</span><span><a href="http://www.youtx.com/barcelona/" target="_blank">巴塞罗那住宿</a>|</span><span><a href="http://www.youtx.com/london/" target="_blank">伦敦住宿</a>|</span><span><a href="http://www.youtx.com/losangeles/" target="_blank">洛杉矶住宿</a>|</span><span><a href="http://www.youtx.com/newyork/" target="_blank">纽约住宿</a>|</span><span><a href="http://www.youtx.com/lasvegas/" target="_blank">拉斯维加斯住宿</a>|</span><span><a href="http://www.youtx.com/phuket/" target="_blank">普吉岛住宿</a>|</span><span><a href="http://www.youtx.com/bali/" target="_blank">巴厘岛住宿</a>|</span><span><a href="http://www.youtx.com/maldives/" target="_blank">马尔代夫住宿</a>|</span><span><a href="http://www.youtx.com/Sabah/" target="_blank">沙巴住宿</a></span>
        </dt>-->
            <dd class="footer_link_grey">热门别墅：</dd>
        <dt>
             <span><a href="http://www.youtx.com/beijing/htype2/" target="_blank">北京日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/shanghai/htype2/" target="_blank">上海日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/guangzhou/htype2/" target="_blank">广州日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/shenzhen/htype2/" target="_blank">深圳日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/tianjin/htype2/" target="_blank">天津日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/nanjing/htype2/" target="_blank">南京日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/hangzhou/htype2/" target="_blank">杭州日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/suzhou/htype2/" target="_blank">苏州日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/chongqing/htype2/" target="_blank">重庆日租别墅</a>|</span>
                 
                           <span><a href="http://www.youtx.com/qingdao/htype2/" target="_blank">青岛日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/chengdu/htype2/" target="_blank">成都日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/xiamen/htype2/" target="_blank">厦门日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/sanya/htype2/" target="_blank">三亚日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/wuhan/htype2/" target="_blank">武汉日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/dalian/htype2/" target="_blank">大连日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/xian/htype2/" target="_blank">西安日租别墅</a>|</span>
             
                       <span><a href="http://www.youtx.com/qinhuangdao/htype2/" target="_blank">秦皇岛日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/changsha/htype2/" target="_blank">长沙日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/shenyang/htype2/" target="_blank">沈阳日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/hefei/htype2/" target="_blank">合肥日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/zhengzhou/htype2/" target="_blank">郑州日租别墅</a></span>
                    
                    </dt></dl></div>
                      
    
    <ul class="footer_link">
      <li><a href="http://www.youtx.com/help/about/" target="_blank" rel="nofollow">关于我们</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/contact/" target="_blank" rel="nofollow">联系我们</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/jobs/" target="_blank" rel="nofollow">招聘</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/service/" target="_blank" rel="nofollow">服务协议</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/feedback/" target="_blank" rel="nofollow" id="youtx_34">意见反馈</a></li>
      <li class="footer_link_space">|</li>
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="static/submit_order/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="static/submit_order/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="static/submit_order/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="static/submit_order/TrustYoutx.gif" width="100" height="35px"></a></li>
    </ul>
  
<!--2013-6-26修改-->
<script type="text/javascript">
    $(document).ready(function () {
        var a = $(".NewSubNavCur");
        if (a && a.text() == "我是房东") {
            $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="http://js.youtx.com/images/FeedBackClose.gif"></div><a class="feedbackA1" href="/feedback/" target="_blank">意见反馈</a><a href="javascript:void(0)" target="_blank"><img width="95" height="95" src="http://js.youtx.com/images/bservice.jpg"></a><a class="feedbackA2" href="javascript:void(0)" target="_blank">游天下房东服务号</br>微信扫一扫</a></div></div>');
        } else {
            $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="http://js.youtx.com/images/FeedBackClose.gif"></div><a class="feedbackA1" href="/feedback/" target="_blank">意见反馈</a><a href="/mo/" target="_blank"><img src="http://js.youtx.com/images/default/ewm.png?v=1"></a><a class="feedbackA2" href="/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div>');
        }
        $(".FeedBackColse").click(function () {
            $(".feedbackbox").hide();
        })
    });
</script>
<!--2013-6-26修改-结束-->
<div style="width:0px;height:0px;overflow:hidden;display:none">
<!--<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd6a1c2e211265084b7d12bfc8636a282' type='text/javascript'%3E%3C/script%3E"));
</script>-->

<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Feb4b7b326a601c545c14e8b6b965e4a0' type='text/javascript'%3E%3C/script%3E"));
</script><script src="static/submit_order/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="static/submit_order/21.gif" width="20" height="20"></a>

<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 960478029;
var google_conversion_language = "en";
var google_conversion_format = "3";
var google_conversion_color = "ffffff";
var google_conversion_label = "yFTtCPvC6gMQzfb-yQM";
var google_conversion_value = 0;
/* ]]> */
</script>
<script type="text/javascript" src="static/submit_order/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="static/submit_order/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="static/submit_order/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="static/submit_order/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="static/submit_order/youtx_mi_query.js.下载" type="text/javascript"></script><script src="static/submit_order/WebIM.js.下载" type="text/javascript"></script><script src="static/submit_order/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->        
    


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="static/submit_order/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/submit_order/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div><div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;"><div class="Talk  PosRe" id="Talk"><div class="UserMenu" id="UserBox"><div class="UserMain" id="UserM" style="cursor: move;"><ul class="TabHeader" id="UserNr" style="top:0px;"></ul></div><div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar" style="display:block; top:0px;"></span></div></div><div class="Talk_center"><span class="DownArrow" style="display:none;"><img src="static/submit_order/dowearrow.gif" width="16" height="16"></span><ul class="Yichu" style="display:none;"></ul><div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span class="RentName"></span><span class="Chat_min"><img src="static/submit_order/SIcon.png" width="25" height="25"></span></div><div class="clear"></div><div id="youtx_ch_webim"></div></div><div class="Talk_right"> </div><div class="HouseRe PosAb" style="display:none;"></div></div></div><div style="display:none;"> <ul id="youtx_none_li"></ul><div id="youtx_none_div"></div> </div><div id="house_webim_s" style="display:none;"></div> <div id="soundContainer" style=" width:10px; height:10px ;"><embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window" src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle" allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></div><div id="OutBox" class="OutBox" style="top: 729.4px; left: 759.5px;"><div class="OutBoxbg" id="OutBoxbg"></div><a href="http://www.youtx.com/payment/Booking/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic" class="OutBoxPic" src="http://www.youtx.com/payment/Booking/BookingNew.aspx?houseid=144142&amp;livenum=1&amp;begintime=2018-06-05&amp;endtime=2018-06-06&amp;rooms=1" style="top: 0px;"></div><div class="ChatSmall"><div><ul id="ChatSmallUl"><li id="ChatMes" class="ChatMes">短消息（0）</li></ul><div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2><p class="All_mes"><a target="blank" href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a></p><ul class="Mes_main" id="IDUlMes_main"></ul></div></div></div></body></html>