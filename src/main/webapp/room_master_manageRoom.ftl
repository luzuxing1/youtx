<!DOCTYPE html>
<!-- saved from url=(0033)http://www.youtx.com/User/Myroom/ -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="static/room_master_manageRoom/countpv" width="0" height="0"><script charset="utf-8" src="static/room_master_manageRoom/v.js.下载"></script><script type="text/javascript" async="" src="static/room_master_manageRoom/load.min.js.下载"></script><script src="static/room_master_manageRoom/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="static/room_master_manageRoom/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
    <link href="static/room_master_manageRoom/public.css" rel="stylesheet" type="text/css"> 
    
    
    
    <title>
        游天下-我的账户-我的房间-房间列表</title>
    <script language="javascript" type="text/javascript" src="static/room_master_manageRoom/jquery-1.6.2.min.js(1).下载"></script>
    <link href="static/room_master_manageRoom/rooms.css" rel="stylesheet" type="text/css">
    
    <script type="text/javascript" src="static/room_master_manageRoom/jQuery.cookie.js(1).下载"></script>
    <script language="javascript" type="text/javascript">
        $(function () {
            $("#ShowAll").click(function () {
                $(this).children().eq(1).show();
            });
            $(".mc_m_c_alone_btns").click(function () {
                $(this).find(".c_c_h_a_10").show();
            });
            $.each($(".abled"), function (n, v) {
                UpDownAction(v);
            });
            //点击隐藏上传头像提示
            $("#imgclick").click(function () {
                $("#p_usericonshow").hide();
            });

            $(document).mouseup(MouseDownOther);
            $(document).blur(MouseDownOther);

            function MouseDownOther(evt) {
                evt = evt || window.event;
                var ele = evt.target || evt.srcElement;
                try {
                    if (ele.parentNode.parentNode.className != "c_c_h_a_10") {
                        $(".c_c_h_a_10").hide();
                    }
                    if (ele.parentNode.parentNode.className != "m_m_t_l_05") {
                        $(".m_m_t_l_05").hide();
                    }
                }
                catch (ex) {
                    $(".c_c_h_a_10").hide();
                }
                return;
            }
            if (typeof $("#post-listing-new") != undefined) {
                $("#post-listing-new").click(function () {
                    window.location.href = "/room/new/";
                });
            }
            $(".RoomsDescribe a").click(function () {
                $(".RoomsDescribe").hide();
                $.cookie('spannowit', '1', { path: '/', domain: 'youtx.com' });
            });
            if ($.cookie('spannowit') == "1") { $(".RoomsDescribe a").click(); }
        });
        if ($.cookie('spannowit') == "1") { $(".RoomsDescribe").hide(); }
        //上架下架
        function UpDownAction(abled) {
            $(abled).click(function () {
                var obj = $(this);
                var hid = $(this).attr("hid");
                var state = $.trim($(this).text()) == "上架" ? "Up" : "Down";
                var dtime = new Date().getTime();
                $.get("/publish/Ajax/HouseInfoAction.aspx", {
                    UpDown: state,
                    houseid: hid,
                    state: 100,
                    dtim: dtime
                }, function (date) {
                    obj.attr("class", "on").attr("style", "cursor:inherit;");
                    obj.siblings("span").attr("class", "abled").attr("style", "cursor:point;");
                    UpDownAction(obj.siblings("span"));
                });
            });
        }
        //“退出活动”
        function uyuy(ihouseid) {
            if (confirm("您真的要退出“今日特价”活动吗？")) {
                $.post("/publish/Ajax/HouseInfoAction.aspx", { houseid: ihouseid, YtxSpecialPriceIsJoin: "ddb", dtime: (new Date().getTime()) }, function (date) {
                    if (date == "OK") {
                        alert("此房源已成功退出“今日特价”活动！");
                    } else if (date == "NO") {
                        alert("此房源退出“今日特价”活动失败！");
                    }
                    window.location.reload();
                });
            }
        }
        //“退出活动”
        function uyuy1(ihouseid) {
            if (confirm("您真的要退出此促销活动吗？")) {
                $.post("/publish/Ajax/HousePromotionAction.aspx", { houseid: ihouseid, YtxManagepromotion: "ddb", dtime: (new Date().getTime()) }, function (date) {
                    if (date == "OK") {
                        alert("此房源已成功退出此促销活动！");
                    } else if (date == "NO") {
                        alert("此房源退出此促销活动失败！");
                    }
                    window.location.reload();
                });
            }
        }

        //“显示删除房间后的弹出层（居中）”
        //        $(function () {
        //            $(window).scroll(resscrEvt(0,1));
        //            $(window).resize(resscrEvt(0,1));
        //        });

        function showDiv(divName, houseID, typeID) { //点击触发，弹出层显示
            $(".SidebarBtnTxt03").hide();
            if (typeID == "1") {
                $("#SidebarBtnTxt03_" + divName + "_" + houseID).show();
                $("#SidebarBtnTxt03_" + divName + "_" + houseID).attr("houseid", houseID);
                $("#btnRubbish").attr("houseid", houseID);
            } else {
                $("#SidebarBtnTxt04" + houseID).show();
                $("#SidebarBtnTxt04" + houseID).attr("houseid", houseID);
                $("#btnRecvy").attr("houseid", houseID);
            }
        }

        function closeWin(divName, typeID, houseID) {
            if (typeID == "1") {
                $("#SidebarBtnTxt03_" + divName + "_" + houseID).css("display", "none");
            } else {
                $("#SidebarBtnTxt04" + houseID).css("display", "none");
            }
        }

        ///删除房间到垃圾箱
        var clickdeletehouse = 0;
        function deleteHouseRoom(divName, typeID) {
            var houseid = "";
            if (typeID == 1) {
                //houseid = $("#SidebarBtnTxt03_" + divName).attr("houseid");
                houseid = $("#btnRubbish").attr("houseid");
            }
            if (clickdeletehouse == 0) {
                clickdeletehouse = 1;
                var dtime = new Date().getTime();
                $.post("/publish/Ajax/AjaxDeleteHouseRoom.aspx", { RomoveHouseID: houseid, typeID: 1, ditme: dtime }, function (data) {
                    if (data == "OK") {
                        closeWin(divName, typeID, houseid);
                        // window.location.href = "/User/Myroom/rubbish";  //跳转到垃圾箱列表
                        window.location.reload();
                        clickdeletehouse = 0;
                    } else {
                        closeWin(divName, typeID, houseid);
                        showDiv(2, houseid, typeID);
                        clickdeletehouse = 0;
                    }
                });
            }
        }

        //还原房间
        var clickhuyuanhouse = 0;
        function recoveryHouseRoom(typeID, isCheck) {
            var houseid = "";
            if (typeID == 2) {
                // houseid = $("#SidebarBtnTxt04").attr("houseid");
                houseid = $("#btnRecvy").attr("houseid");
            }
            if (clickdeletehouse == 0) {
                clickdeletehouse = 1;
                var dtime = new Date().getTime();
                $.post("/publish/Ajax/AjaxDeleteHouseRoom.aspx", { RomoveHouseID: houseid, typeID: 2, IsCheck: isCheck, ditme: dtime }, function (data) {
                    if (data == "OK") {
                        closeWin(0, typeID, houseid);
                        window.location.href = "/User/Myroom/all";
                        clickdeletehouse = 0;
                    } else {
                        alert("还原失败！");
                        clickdeletehouse = 0;

                    }
                });
            }
        }
    </script>
    <!--[if IE 6]>
<script type="text/javascript" src="http://js.youtx.com/publish/scripts/LoadPNG.js?v=201710191200"></script>
<script type="text/javascript">window.attachEvent('onload', function(){DD_belatedPNG.fix('.mc_m_c_alone_img_word img');});</script>
<![endif]-->

   
<script src="static/room_master_manageRoom/saved_resource"></script><link rel="stylesheet" type="text/css" href="static/room_master_manageRoom/Youtx_WebIM.css"></head>
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
<script type="text/javascript" src="static/room_master_manageRoom/Login_Cookie.js.下载"></script>
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
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="static/room_master_manageRoom/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/room_master_manageRoom/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
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
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/room_master_manageRoom/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/room_master_manageRoom/ewmBNew.jpg" width="102" height="102"></dd>
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
            <img src="static/room_master_manageRoom/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/room_master_manageRoom/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/room_master_manageRoom/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/room_master_manageRoom/ewmBNew.jpg" width="102" height="102"></dd>
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
    
    
    <div class="wrapper">
        <div class="mycenter">
            
<ul class="NewSubNav">
    <li class=""><a href="http://www.youtx.com/home/dashboard/">账户首页</a></li>
    <li class=""><a href="http://www.youtx.com/User/MyMailBox/"> 收件箱 </a></li>
    <li class="NewSubNavCur"><a href="http://www.youtx.com/payment/User/Myroom/OrderManage.aspx">我是房东</a></li>
    <li class=""><a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx">我是租客</a></li>
    <li class=""><a href="http://www.youtx.com/user/remind">账户管理</a></li>
    <li class=""><a href="http://www.youtx.com/judges/">评价管理</a></li>
    <li class=""><a href="http://www.youtx.com/profile/cashaccount/">我的资产</a></li>
    
    <li class=" PosRe"><a href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx">我是专家</a></li>
    
</ul>
            <div class="mycenter_bigtitle_nav">
                
 <ul class="mycenter_smalltitle mycenter_smalltitle2">
                  <li class=""><a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
                    <li class="active"><a href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
                     <li class="" style="position:relative;z-index:10"><a href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
                       
                    <li class="" style="position: relative; z-index: 10"><a href="http://www.youtx.com/houseRank/">我的竞争力<img style="position: absolute; top: -11px; right: -14px;" src="static/room_master_manageRoom/new.gif" alt="新"></a></li>
                      
                    <li class=""><a href="http://www.youtx.com/payment/User/Myroom/MyEarn.aspx">赚到的钱</a></li> 
                     
                     <li class="" style="position: relative; z-index: 10"><a href="http://www.youtx.com/user/salespromotion/">促销推广
                    </a></li><a href="http://www.youtx.com/user/salespromotion/">
                    
                     </a><li class=""><a href="http://www.youtx.com/user/salespromotion/"></a><a href="http://mall.youtx.com/myshops/">我的店铺</a></li>
                       <li class=""><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a></li>
                        
                </ul>
            </div>
            <div style="clear: both;">
            </div>
            

<!--LandlordManageAD Begin-->
<div class="AreaOrder_Ad" style="margin: 10px auto 0; width: 945px;"><a href="http://www.youtx.com/zhuanti/2017mxfdshy/index.html" target="_blank"><img src="static/room_master_manageRoom/2017mxfd.jpg" width="945" height="55" border="0" alt=""></a></div>

<!--LandlordManageAD End-->


            <div class="mycenter_main" style="padding-bottom: 125px;">
                <!-- 2012-10-31 老功能导航栏去掉 林松 -->
                
  <div class="mycenter_main_title" style="position: relative; z-index: 10">
                    <ul class="RoomsNav">
                        
                        <li class="RoomsNavCur"><a href="http://www.youtx.com/User/Myroom/all"><span>
                            全部房源</span></a></li>
                        <li><a href="http://www.youtx.com/User/Myroom/active"><span>
                            上架中</span></a></li>
                        <li><a href="http://www.youtx.com/User/Myroom/no"><span>
                            已下架</span></a></li>
                        <li><a href="http://www.youtx.com/User/Myroom/checking"><span>
                            审核中</span></a></li>
                        <li><a href="http://www.youtx.com/User/Myroom/nopass"><span>
                            未通过</span></a></li>
                            <li><a href="http://www.youtx.com/User/TabShanDing">
                            <span>闪订房源</span></a></li>
                        <li>
                        <a href="http://www.youtx.com/User/Myroom/rubbish"><span>
                            垃圾箱</span></a>
                        </li>      
                        
                    </ul>
                    <!--2011-11-2修改-->
                    <div class="NewFunction">
                        <dl>
                            <dt style="display: none;">新功能上线</dt>
                            <dd style="display: none;">
                                <a href="javascript:void()">返现活动<span class="NewFArrow"></span></a> |<p class="NewFuntionText">
                                    可随时参加或退出的促销活动，小幅度让利换来更多关注</p>
                            </dd>
                            <dd style="display: none;">
                                <a href="javascript:void()">月租周租 <span class="NewFArrow"></span></a>|
                                <p class="NewFuntionText">
                                    房间如何进入月租周租频道，两种方式任选其一：<br>
                                    方式1：设置"周价/月价"，至少便宜20%即可<br>
                                    方式2：设置"最短入住天数"，不小于7天即可</p>
                            </dd>
                            <dd>
                                <a href="http://www.youtx.com/profile/user/Myroom/RealityPats.aspx" target="_blank">申请游天下实拍</a>|</dd>
                            <dd class="LastNewFunction">
                                <a target="_blank" href="http://www.youtx.com/help/fdmanage/">房东管理办法</a></dd>
                        </dl>
                        <div class="CB">
                        </div>
                        <script type="text/javascript">
                            $(function () {
                                //2012-10-29  注释上面返现活动、月租周租下拉提示脚本
                                $(".RoomsNav li").click(function () {
                                    $(this).addClass("RoomsNavCur").siblings().removeClass("RoomsNavCur");
                                })
                                //2012-10-29 RoomsNav 新导航切换添加背景图
                            })
                        </script>
                    </div>
                    <div class="rooms_search" style="display: none;">
                        <input class="rooms_search_input" type="text" value="按标题搜索我的房子" onfocus="if (value ==&#39;按标题搜索我的房子&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;按标题搜索我的房子&#39;}">
                        <input class="rooms_search_btn" type="button">
                    </div>
                    <!--2011-11-2修改结束-->
                </div>

                <div class="mycenter_main_comment">
                    
                    <ul class="mc_m_c_alone">
                        
                        <li class="clearfix" style="margin-top: 0pt; padding-top: 0pt; border-top: none;">
                            
                                <div class="mc_m_c_alone_img">
                                    
                                        <a href="http://www.youtx.com/room/324548/" target="_blank">
                                            
                                            <img width="134" height="86" alt="" src="static/room_master_manageRoom/134x86c.jpg">
                                        </a>
                                        
                                        <p>
                                            2018年6月4日发布
                                        </p>
                                        <p>
                                            房间编号：
                                            324548
                                        </p>
                                        
                                        <!--新加-->
                                        <div class="mc_m_c_alone_img_word">
                                            <img src="static/room_master_manageRoom/shenhezhong.png">
                                            
                                        </div>
                                        
                                </div>
                                <div class="mc_m_c_alone_infr" style="position: relative;">
                                    <h3>
                                          
                                          <a href="http://www.youtx.com/room/324548/" target="_blank">
                                              测试专用！休憩偷闲的一缕安逸之处
                                              
                                          </a>
                                          
                                          <span>
                                              ￥50元/晚</span></h3>
                                    
                                    <div class="mc_m_c_alone_actions mc_m_c_alone_actions2">
                                        
                                        <!-- 2012-8-20 添加详细地址和邮编 -->
                                        
                                        <!--2012-8-20 添加详细地址和邮编end-->
                                        
                                        <p>
                                            闵行区银都路3118弄银都7村201室，银都路
                                        </p>
                                        <p>
                                              <span>
                                                  
                                                  *
                                                  </span>
                                              
                                              <span>
                                                  2室
                                                  1卫，25平</span>
                                              
                                              <span>
                                                  共1套</span>
                                          </p>
                                        
                                    </div>
                                    <div id="SidebarBtnTxt04324548" class="SidebarBtnTxt03" style="display: none;">
                                        <div class="OutBoxOut">
                                            <div class="OutBoxIn">
                                                <div class="OutBoxTitWhitebg">
                                                    <div class="OutBox_Close" onclick="closeWin(&quot;0&quot;,&quot;2&quot;,&quot;324548&quot;)">
                                                    </div>
                                                </div>
                                                <h5>
                                                    确认要将该房间还原？<br>
                                                    还原后，房间需要重新审核</h5>
                                                <div class="SidebarInputBtn clearfix" style="height: 27px; padding-bottom: 20px;">
                                                    <span class="OutBoxBtn">
                                                        <input type="button" onclick="recoveryHouseRoom(&quot;2&quot;,&quot;    1    &quot;)" id="btnRecvy" class="GusetInput" value="是"></span> <span class="OutBoxGrayBtn">
                                                                <input type="button" onclick="closeWin(&quot;0&quot;,&quot;2&quot;,&quot;324548    &quot;)" class="GusetInput" value="否"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!--新加-->
                                    <!--2015-08-31惩罚性房源(永久性)-->
                                    
                                    <div id="SidebarBtnTxt03_1_324548" class="SidebarBtnTxt03" style="display: none;">
                                        <div class="OutBoxOut">
                                            <div class="OutBoxIn">
                                                <div class="OutBoxTitWhitebg">
                                                    <div class="OutBox_Close" onclick="closeWin(&quot;1&quot;,&quot;1&quot;,&quot;324548&quot;)">
                                                    </div>
                                                </div>
                                                <h5>
                                                    确认要把房间移入垃圾箱吗？</h5>
                                                <div class="SidebarInputBtn clearfix" style="height: 27px; padding-bottom: 20px;">
                                                    <span class="OutBoxBtn">
                                                        <input type="button" onclick="deleteHouseRoom(&quot;1&quot;, &quot;1&quot;)" id="btnRubbish" class="GusetInput" value="是"></span> <span class="OutBoxGrayBtn">
                                                                <input type="button" onclick="closeWin(&quot;1&quot;,&quot;1&quot;,&quot;324548    &quot;)" class="GusetInput" value="否"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="SidebarBtnTxt03_2_324548" class="SidebarBtnTxt03" style="display: none;">
                                        <div class="OutBoxOut">
                                            <div class="OutBoxIn">
                                                <div class="OutBoxTitWhitebg">
                                                    <div class="OutBox_Close" onclick="closeWin(&quot;2&quot;,&quot;1&quot;,&quot;324548&quot;)">
                                                    </div>
                                                </div>
                                                <h5>
                                                    该房源未来已有订单或设置了不可租<br>
                                                    不能删除</h5>
                                                <div class="SidebarInputBtn clearfix" style="height: 27px; padding-bottom: 20px;">
                                                    <span class="OutBoxBtn" style="float: none; padding-left: 30px; margin-left: 25px;">
                                                        <input style="padding-right: 30px;" onclick="closeWin(&quot;2&quot;,&quot;1&quot;,&quot;324548    &quot;)" type="button" class="SureInput" value="确定"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="clear: both;">
                                    </div>
                                    <!--2015-08-31添加惩罚性下架房源(阶段性)-->
                                    
                                    <div class="NewColumn" style="position: relative;">
                                        <a class="X_ColumTitle" style="margin-right: 5px; cursor: default;" href="javascript:void(0)">
                                            房源编辑</a><a href="http://www.youtx.com/room/editlocation/324548/" target="_blank" class="actions2_text08">
                                                位置</a> <a href="http://www.youtx.com/room/editinfo/324548/" target="_blank" class="actions2_text01">
                                                    描述</a> <a href="http://www.youtx.com/room/editpic/324548/" target="_blank" class="actions2_text02">
                                                        照片</a>
                                        
                                        <a href="http://www.youtx.com/room/editprice/324548/" target="_blank" class="actions2_text04">
                                            价格</a> <a href="http://www.youtx.com/room/editmanage/324548/" target="_blank" class="actions2_text05">
                                                排期</a> <a href="javascript:void()" onclick="showDiv(&quot;1&quot;,&quot;324548&quot;,&quot;1&quot;)" class="actions2_text12">删除房间</a>
                                        
                                    </div>
                                    <div style="clear: both;">
                                    </div>
                                    <!--新加-->
                                </div>
                                <div class="rooms_inf_right">
                                    
                                    <!--20110923 begin-->
                                    
                                    <div class="rooms_examine">
                                        <p>
                                            审核中
                                        </p>
                                        <p>
                                            请耐心等待…
                                        </p>
                                    </div>
                                    
                                    <!--20110923 end-->
                                    <!--2015-08-31添加惩罚性下架房源逻辑判断-->
                                    <!--阶段性惩罚时间未到期-->
                                    
                                    <!--2015-08-31添加惩罚性下架房源逻辑判 end-->
                                    
                                    <div class="landlordReputation">
                                        <ul class="roomReputation">
                                            
                                        </ul>
                                        <div class="clear">
                                        </div>
                                    </div>
                                    
                                    <!--新加-->
                                </div>
                                <div class="mc_m_c_alone_btns" id="board_324548">
                                </div>
                            </li>
                            
                    </ul>
                    
                </div>
            </div>
            <div class="mycenter_page">
                <div class="page" style="float: right;">
                    
        <span class="page_sele">1</span>
    
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".rooms_examine_btnG").click(function () {
                $.get("/publish/Ajax/HouseInfoAction.aspx", { ytxmanagejs: "js", HouseId: $(this).attr("houseid"), dat: (new Date().getTime()) }, function (date) {
                    if (date == "OK") {
                        alert("提交成功!");
                        window.location.reload();
                    } else {
                        alert("复审提交失败！");
                    }
                });
            });


            //2012-10-29修改
            $(".Examine_Img").mouseover(function () {
                $(this).next().show();
            });

            $(".Examine_Img").mouseout(function () {
                $(this).next().hide();
            });
            //2012-10-29修改-结束


            $(".PromptRoom").hover(function () {
                //优化排名弹出提示
                $(this).parents(".McOptimization").children(".McOptiPrompt").toggle();
            });
            $(".PromptRoom").click(function () {
                //优化排名弹出提示
                var housid = $(this).attr("clickid").replace("cl", "");
                var locationurl = $(this).find("a");
                $.each($("#" + $(this).attr("clickid")).find("p"), function (n, v) {
                    if (n == 0 && $.trim($(v).html()) == "1.填写400字以上房源描述") {
                        $(locationurl).attr("href", "/room/editinfo/" + housid);
                    }
                    else if (n == 0 && $.trim($(v).html()) == "1.上传15张以上房间照片") {
                        $(locationurl).attr("href", "/room/editpic/" + housid);
                    }
                });
            });
        });
    </script>
    <form>
    </form>


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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="static/room_master_manageRoom/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="static/room_master_manageRoom/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="static/room_master_manageRoom/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="static/room_master_manageRoom/TrustYoutx.gif" width="100" height="35px"></a></li>
    </ul>
  </div>
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
</script><script src="static/room_master_manageRoom/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="static/room_master_manageRoom/21.gif" width="20" height="20"></a>

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
<script type="text/javascript" src="static/room_master_manageRoom/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="static/room_master_manageRoom/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="static/room_master_manageRoom/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="static/room_master_manageRoom/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="static/room_master_manageRoom/youtx_mi_query.js.下载" type="text/javascript"></script><script src="static/room_master_manageRoom/WebIM.js.下载" type="text/javascript"></script><script src="static/room_master_manageRoom/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->  
    


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="static/room_master_manageRoom/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="javascript:void(0)" target="_blank"><img width="95" height="95" src="static/room_master_manageRoom/bservice.jpg"></a><a class="feedbackA2" href="javascript:void(0)" target="_blank">游天下房东服务号<br>微信扫一扫</a></div></div><div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;"><div class="Talk  PosRe" id="Talk"><div class="UserMenu" id="UserBox"><div class="UserMain" id="UserM" style="cursor: move;"><ul class="TabHeader" id="UserNr" style="top:0px;"></ul></div><div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar" style="display:block; top:0px;"></span></div></div><div class="Talk_center"><span class="DownArrow" style="display:none;"><img src="static/room_master_manageRoom/dowearrow.gif" width="16" height="16"></span><ul class="Yichu" style="display:none;"></ul><div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span class="RentName"></span><span class="Chat_min"><img src="static/room_master_manageRoom/SIcon.png" width="25" height="25"></span></div><div class="clear"></div><div id="youtx_ch_webim"></div></div><div class="Talk_right"> </div><div class="HouseRe PosAb" style="display:none;"></div></div></div><div style="display:none;"> <ul id="youtx_none_li"></ul><div id="youtx_none_div"></div> </div><div id="house_webim_s" style="display:none;"></div> <div id="soundContainer" style=" width:10px; height:10px ;"><embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window" src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle" allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></div><div id="OutBox" class="OutBox" style="top: 355px; left: 759.5px;"><div class="OutBoxbg" id="OutBoxbg"></div><a href="http://www.youtx.com/User/Myroom/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic" class="OutBoxPic" src="http://www.youtx.com/User/Myroom/" style="top: 0px;"></div><div class="ChatSmall"><div><ul id="ChatSmallUl"><li id="ChatMes" class="ChatMes">短消息（0）</li></ul><div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2><p class="All_mes"><a target="blank" href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a></p><ul class="Mes_main" id="IDUlMes_main"></ul></div></div></div></body></html>