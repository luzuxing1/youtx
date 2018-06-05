<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0052)http://www.youtx.com/profile/passport/IdCardAdd.aspx -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
 
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="static/accountSafe_ID/countpv" width="0" height="0"><script charset="utf-8" src="static/accountSafe_ID/v.js.下载"></script><script type="text/javascript" async="" src="static/accountSafe_ID/load.min.js.下载"></script><script src="static/accountSafe_ID/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <link href="static/accountSafe_ID/public.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="static/accountSafe_ID/jQuery.cookie.js.下载"></script>
    
    
  <script type="text/javascript" language="javascript">
      window.onerror = function () { return true; }
        </script>
    
<link href="static/accountSafe_ID/Control_Panel.css" rel="stylesheet" type="text/css">
<link href="static/accountSafe_ID/modify.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="javascript">
    if (parseInt('402') > 0) {
        $.ajax({
            type: 'POST',
            url: '/profile/Ajax/AjaxPassport.aspx',
            data: 'type=isBlackList&UserID=' + '402',
            success: function (data) {

            },
            error: function (err) {

            }
        });
    }
        </script>
<title>个人信息修改 - 游天下</title> 
<link rel="stylesheet" type="text/css" href="static/accountSafe_ID/Invegratel.css">
<link rel="stylesheet" type="text/css" href="static/accountSafe_ID/jquery.imagecropper.css">
<link rel="stylesheet" type="text/css" href="static/accountSafe_ID/mobile.css">
<script type="text/javascript" src="static/accountSafe_ID/ui.core.min.js.下载"></script>
<script type="text/javascript" src="static/accountSafe_ID/Youtx.Utility.js.下载"></script>
<script type="text/javascript" src="static/accountSafe_ID/Youtx.Verification.js.下载"></script>
<script type="text/javascript" src="static/accountSafe_ID/Youtx.Passprofile.js.下载"></script>
<script type="text/javascript" src="static/accountSafe_ID/Youtx.UploadImage.js.下载"></script>
<script type="text/javascript" src="static/accountSafe_ID/ui.draggable.min.js.下载"></script>
<script type="text/javascript" src="static/accountSafe_ID/jquery.imagecropper.js.下载"></script>
<script type="text/javascript" src="static/accountSafe_ID/utility.js.下载"></script>
<script type="text/javascript" src="static/accountSafe_ID/JSConfigInfo.js.下载"></script>
<script type="text/javascript" language="javascript">
    //点击修改按钮,把数据放到下边的文本框里
    function ClickChange(data) {
        var d = data.split('_');
        if (d.length == 3) {
            $('#MobileID').val(d[0]);
            $('#MobileMan').val(d[1]);
            $('#MobileNumber').val(d[2]);
            $('#AddorChange').val("修改");
        }
        else {
            alert('数据读取错误');
        }

    }
    //删除电话和联系人，并重新加载
    function deleteMobile(OtherMobileID) {
        if (confirm("您确定是否删除?")) {
            $.ajax({
                type: 'POST',
                url: '/profile/Ajax/AjaxPassport.aspx',
                data: 'type=DelModelByID&UserID=' + '402' + '&OtherMobileID=' + OtherMobileID,
                success: function (data) {
                    $('#OtherMobile').html(data);
                },
                error: function (err) {

                }
            });
        }
    }

    $(document).ready(function () {
        var othermobile = new Youtx.OtherMobile('402');
        var uploadimage = new Youtx.UploadImage('http://js.youtx.com/profile/images/usericon/pic-225x225.jpg');
    });
    </script>
<script type="text/javascript" language="javascript">
    $(function () {
        $(".private2").hide();
        initDayddl();
        $("#user_birthdate_1i").change(function () {
            initDayddl();
            $("#user_birthdate_3i").val("1");
        });
        $("#user_birthdate_2i").change(function () {
            initDayddl();
            $("#user_birthdate_3i").val("1");
        });

        $("#user_preference_time_zone").val("");
        var language = "";
        var _array = language.split(',');
        if (language != "") {
            for (i = 0; i < _array.length; i++) {
                $("#langpanel").append("<span  class=\"multiselect-option\">" + _array[i] + "<span title=\"从列表中删除\" class=\"x\"></span></span>");
            }
        }
        $(".multiselect-option .x").click(function () {
            $(this).parent().hide();
        });
        $("#user_first_name").blur(function () {
            if (getBytesLength($.trim($(this).val())) < 1) {
                $(this).addClass("error");
                $(this).next().html('请至少输入1个字符');
                $(this).next().show();
            }
            else if (getBytesLength($.trim($(this).val())) > 10) {
                $(this).addClass("error");
                $(this).next().html('最多只能输入10个字符');
                $(this).next().show();
            }
            else {
                $(this).removeClass("error");
                $(this).next().hide();
            }
        });

        $("#user_last_name").blur(function () {
            if (getBytesLength($.trim($(this).val())) < 1) {
                $(this).addClass("error");
                $(this).next().html('请至少输入1个字符');
                $(this).next().show();
            } else if (getBytesLength($.trim($(this).val())) > 10) {
                $(this).addClass("error");
                $(this).next().html('最多只能输入10个字符');
                $(this).next().show();
            } else {
                $(this).removeClass("error");
                $(this).next().hide();
            }
        });
        $("#user_email").blur(function () {
            $('.error1').hide();
            if (!Youtx.Verification.isEmail($(this).val()) && $(this).val() != '') {
                $('.error2').show();
            } else {
                $('.error2').hide();
                if ($(this).val() != '') {
                    CheckMailExists();
                }
            }
        });
        $("#user_phone").blur(function () {
            if ($(this).val() == "") {
                $(this).addClass("error");
                $(this).next().html("首选电话号码不能为空").show();
                return false;
            }
            if (!Youtx.Verification.isMobile($(this).val())) {
                $(this).addClass("error");
                $(this).next().html("电话号码应符合规范,如 13800001111").show();
                return false;
            } else {
                $(this).removeClass("error");
                $(this).next().hide();
            }
            if ($(this).val() != $("#usertel").val()) {
                $(this).parent().find(".ok_icon").hide(); //yanzheng
                $(this).parent().find(".yanzheng").hide()
            }
        });


        $("#user_profile_info_about").blur(function () {
            if (getBytesLength($(this).val()) > 1000) {
                $(this).addClass("error");
                $(this).next().show();
                $('#info_about').hide();
                location.hash = "jie";
                $('.save_yes_02').hide();
            } else {
                $(this).removeClass("error");
                $('#info_about').show();
                $(this).next().hide();
                $('.save_yes_02').hide();
            }
        });

        $("#btnSave").click(function () {
            var passed = checkpass();

            if (passed) {
                if ($("#user_profile_info_current_city").val() == $("#user_profile_info_current_city").attr("placeholder")) {
                    $("#user_profile_info_current_city_hidden").val("");
                } else {
                    $("#user_profile_info_current_city_hidden").val($("#user_profile_info_current_city").val());
                }
                if ($("#user_profile_info_employer").val() == $("#user_profile_info_employer").attr("placeholder")) {
                    $("#user_profile_info_employer_hidden").val("");
                } else {
                    $("#user_profile_info_employer_hidden").val($("#user_profile_info_employer").val());
                }
                $.post("/profile/Passport/Interface/PostUpdateUser.aspx", $("#inforF").serialize(),
                        function (msg) {
                            if (msg == "1") {
                                $('.save_yes_02').html('您的自我介绍中含有联系信息，请检查后删除');
                                $('.save_yes_02').show();
                                location.hash = "jie";
                            }
                            else if (msg == "2") {
                                $('.save_yes_02').html('该姓名包含敏感字，禁止使用，有问题请与客服联系。');
                                $('.save_yes_02').show();
                                location.hash = "ming";
                            }
                            else if (msg == "3") {
                                $('.save_yes_02').html('名字不能为空');
                                $('.save_yes_02').show();
                                location.hash = "#ming";
                            }
                            else if (msg == "4") {
                                $('.save_yes_02').html('姓氏不能为空');
                                $('.save_yes_02').show();
                                location.hash = "#xing";
                            }
                            else if (msg == "8") {
                                $('.error2').show();
                            }
                            else if (msg == "9") {
                                $('.error1').show();
                            }
                            else if (msg == "10") {
                                $('.save_yes_02').html('自我介绍里包含敏感词，请修改后重试。');
                                $('.save_yes_02').show();
                            }
                            else {
                                if (msg == "TRUE") {
                                    $('#info_about').show();
                                    $('.save_yes_02').hide();
                                    $('.save_yes_01').show();
                                    setTimeout("$('.save_yes_01').hide()", 3000);

                                } else {
                                    $('.save_yes_02').html('保存失败，请重试。');
                                    $('.save_yes_02').show();
                                }
                            }
                        }
                    );
            } else {
                $('.save_yes_02').html('');
                $('.save_yes_02').show();
                //alert("某些必填信息不完整或者不合规范");
            }
        });
        $("input[placeholder]").each(function () {
            if ($.trim($(this).val()) == "") {
                $(this).val($(this).attr("placeholder"));
                $(this).css({ "color": "Gray" });
            }
            $(this).focusin(function () {
                if ($.trim($(this).val()) == $(this).attr("placeholder")) {
                    $(this).val("");
                    $(this).css({ "color": "Black" });
                }
            }).focusout(function () {
                if ($.trim($(this).val()) == "") {
                    $(this).val($(this).attr("placeholder"));
                    $(this).css({ "color": "Gray" });
                }
            });
        });
    });
    function CheckTel(str) {
        //var reg = /^((\d{3,4})?-?\d{7,8}转?(\d{1,4})?)$|^(1[3-9]\d{9})$|^((\d{3,4})?-?\d{7,8}转?(\d{4})?,?(1[3-9]\d{9}))$/;
        var reg = /^((\d{3,4})?-?\d{7,8}转?(\d{1,4})?)$|^(1[3-9]\d{9})$|^((\d{3,4})?-?\d{7,8}转?(\d{4})?,?(1[3-9]\d{9}))$|^((1[3-9]\d{9})?,?(\d{3,4})?-?\d{7,8}转?(\d{4}))$/;
        str = str.replace(/\s+/g, "");
        if (!reg.test(str)) {
            return false;
        }
        else {
            return true;
        }
    }
    function len(s) {
        var l = 0;
        var a = s.split("");
        for (var i = 0; i < a.length; i++) {
            if (a[i].charCodeAt(0) < 299) {
                l++;
            } else {
                l += 2;
            }
        }
        return l;
    }
    function CheckMailExists() {
        $.ajax({
            type: 'POST',
            //async: false,
            async: false,
            url: '/profile/Ajax/AjaxReg.aspx',
            data: 'type=CheckMailExists&user_email=' + $("#user_email").val() + "&t" + Math.random(),
            success: function (data) {
                if (data == 'true') {
                    $('.error1').show();
                    //被使用
                }
                else {
                    $('.error1').hide();
                }
            },
            error: function () {

            }
        });
    }
    </script>
<style type="text/css">
#cboxOverlay { background: none repeat scroll 0 0 #000000; opacity: 0.8; height: 100%; position: fixed; width: 100%; z-index: 99; left: 0; top: 0; }
input[type="checkbox"] { height: auto; }
</style>

<title></title>

    <script type="text/javascript" src="static/accountSafe_ID/CheckTelephone.js.下载"></script>


    
<script src="static/accountSafe_ID/saved_resource"></script><link rel="stylesheet" type="text/css" href="static/accountSafe_ID/Youtx_WebIM.css"></head> 
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
<script type="text/javascript" src="static/accountSafe_ID/Login_Cookie.js.下载"></script>
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
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="static/accountSafe_ID/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/accountSafe_ID/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
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
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/accountSafe_ID/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/accountSafe_ID/ewmBNew.jpg" width="102" height="102"></dd>
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
                   <div><a target="_self" href="http://www.youtx.com/profile/User/MailBox/SystemMail.aspx" rel="nofollow">系统通知</a><span id="SysMsgNumSpan" class="font_red">(1)</span></div>
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
            <img src="static/accountSafe_ID/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/accountSafe_ID/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/accountSafe_ID/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/accountSafe_ID/ewmBNew.jpg" width="102" height="102"></dd>
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
    
    <div id="dashboard_v2" class="control_cksylb edit_profile details verification"> 
		<!--内容头部 begin-->
		<div class="row">
			<div class="col full heading">
				<ul class="breadcrumb-list">
					<li class="breadcrumb-list-item"><a href="http://www.youtx.com/home/dashboard/">我的账户</a> </li>
					<li class="breadcrumb-list-item">
						<h1> 账户安全</h1>
					</li>
				</ul>
				<span class="action_button"><a class="icon view" target="_blank" href="http://www.youtx.com/user/show/2600363"> 查看资料</a> </span>
				<div class="clear"> </div>
			</div>
            <!--2012-3-6添加提示文字-->
            
            <!--2012-3-6添加提示文字 -结束-->
		</div>
		<!--内容头部 end--> 
		<!--内容 start-->
		<div class="control_main"> 
			<!--内容左 start-->
			<div class="control_main_left">
				<div>
					<ul class="control_leftnav">
						<li class="selected" style=" border:0 none">
							<a href="javascript:void(0);" class="details"><span class="icon"> &nbsp;</span>编辑资料</a>
							<div id="ddbPriceDemand" class="selectedHidden">
                                <a class="" href="http://www.youtx.com/Avatar/">修改头像</a>
								<a class="" href="http://www.youtx.com/Basic/">基本资料</a>
								<a class="" href="http://www.youtx.com/Detail/">详细资料</a>
                            </div>
						</li>
						<li><a href="http://www.youtx.com/User/Profile/" class="trust_and_verification" style="background:#FCE4F4;color:Black;"><span class="icon "></span>账户安全</a></li>
						<li><a href="http://www.youtx.com/pass/" class="references" style=""> <span class="icon "></span>好友推荐</a></li>
                        <li><a href="http://www.youtx.com/profile/Passport/AccountBind.aspx" class="ShareLink_icon" style=""><span class="icon "></span>连接分享设置</a></li>
                        <li><a href="http://www.youtx.com/profile/Passport/ZhimaTrustNew.aspx" class="CreditScore" style=""><span class="icon"></span>展示芝麻信用分</a></li>
					</ul>
				</div>
			</div>
			<!--内容左 end-->
            
    <script type="text/javascript">
        $(function () {
            //模拟下拉菜单
            $(".trMSIndIco,.trMSIco").click(function (event) {
                event.stopPropagation();
                var text = $(this).siblings(".trMSList");
                if (text.css('display') == 'none') {
                    $('.trMSList').hide();
                    text.show();
                } else {
                    text.hide();
                }
            });
            //国家
            var countryId = "44";
            if (countryId == '') {
                countryId = "44";
            }
            //民族
            var nationId = "12";
            if (nationId == '') {
                nationId = "12";
            }
            //证件类型
            var cardTypeId = "111";
            if (cardTypeId == '') {
                cardTypeId = "111";
            }
            $(".trMSList li").click(function () {
                $(this).parent().siblings("input").css('color', '#333');
                var sendInfo = $(this).attr("Name");
                $("#selCountryNo").html("+" + $(this).attr("Name").split(',')[1]);
                $(this).parent().hide();
                if ($(this).parent().attr("id") == "countryList") {//国家id
                    $("#HdCountry").val(sendInfo);
                    countryId = sendInfo;
                }
                if ($(this).parent().attr("id") == "nationList") {//民族id
                    nationId = sendInfo;
                }
                if ($(this).parent().attr("id") == "cardType") {//证件类型id
                    cardTypeId = sendInfo;
                    $(this).parent().siblings("input").val($(this).text());
                } else {
                    if ($("#HdCountry").val() == 44) {
                        300300
                        $("#nation2").val("汉族");
                        $(this).parent().siblings("input").val($(this).text());
                        $("#nationList").css("visibility", "visible");
                        $("#trNation").css("display", "table-row");
                    } else {
                        $("#nation2").val("");
                        $(this).parent().siblings("input").val($(this).text());
                        $("#nationList").css("visibility", "hidden");
                        $("#trNation").css("display", "none");
                    }
                }
                CheckFormatName();
                CheckFormatCard();
                //alert(countryId + '==' + nationId + '==' + cardTypeId);
            });
            $(".trMSList li").mouseover(function () {
                $(this).addClass("IndCur").siblings().removeClass("IndCur");
            })
            $(document).click(function (event) {
                $('.trMSList').hide();
            });
            //验证姓名和身份证格式
            $("#userName").focus(function () {
                $("#error_name").text("");
            }).blur(function () {
                CheckFormatName();
            });
            $("#idCard").focus(function () {
                $("#error_idcard").text("");
            }).blur(function () {
                CheckFormatCard();
            });
            //提交数据
            $("#btnOK").click(function () {
                if (CheckFormatName() && CheckFormatCard()) {
                    var userName = $("#userName").val();
                    var cardId = $("#idCard").val();
                    $.getJSON("/profile/Passport/VerifyIDCard.aspx", { "userName": userName, "idCard": cardId, "nationId": nationId, "countryId": countryId, "cardTypeId": cardTypeId }, function (data) {
                        if (data["result"] == "0") {
                            if (data["text"] == "success") {
                                window.location.href = "/profile/passport/IdCardSuccess.aspx";
                            } else {
                                var tempR = new Array();
                                tempR = data["text"].split('_');
                                if (tempR[2] == "2") {
                                    if (data["num"] == "0") {
                                        $("#error_idcard").text("验证次数已达上限，如需继续验证，请联系客服");
                                    } else {
                                        //if (tempR[0] == "8") {
                                        //    $("#error_idcard").text(tempR[1]);
                                        //} else {
                                            $("#error_idcard").text("身份信息错误，验证失败");
                                       // }
                                    }
                                }
                                if (tempR[0] == "4") {
                                    $("#error_idcard").text("验证次数已达上限，如需继续验证，请联系客服");
                                }
                            }
                        } else {
                            alert(data["text"]);
                        }
                    });
                }
            });
            function CheckFormatName() {
                var b = false;
                var regName = /^[a-zA-Z ]{2,50}$|^[\u4e00-\u9fa5]{2,10}$/;
                if ($("#userName").val() == null || $("#userName").val() == "") {
                    $("#error_name").text("请输入姓名");
                    $("#nameTip").css("display", "none");
                } else if (regName.test($("#userName").val())) {
                    $("#nameTip").css("display", "block");
                    $("#error_name").text("");
                    b = true;
                } else {
                    $("#nameTip").css("display", "none");
                    $("#error_name").text("您输入的姓名格式不正确");
                }
                return b;
            }
            function CheckFormatCard() {
                var a = false;
                var regCard;
                if (cardTypeId == "111") {
                    regCard = /^(\d{6})(18|19|20)?(\d{2})([01]\d)([0123]\d)(\d{3})(\d|X)?$/;
                } else if (cardTypeId == "114") {
                    regCard = /^(\d{9})$/;
                } else if (cardTypeId == "414") {
                    regCard = /^[A-Z]{1}[0-9]{8}$/;
                }
                if ($("#idCard").val() == null || $("#idCard").val() == "") {
                    $("#error_idcard").text("请输入证件号");
                    $("#cardTip").css("display", "none");
                } else if (regCard.test($("#idCard").val())) {
                    $("#cardTip").css("display", "block");
                    $("#error_idcard").text("");
                    a = true;
                } else {
                    $("#error_idcard").text("您输入的证件号格式错误");
                    $("#cardTip").css("display", "none");
                }
                return a;
            }
        });
    </script>
    <!--内容右 start-->
    <div class="control_main_right">
        <div class="telTerify">
            <h2>
                身份验证</h2>
            <!--2015-11-26文本-->
            <div class="terifyStep">
                <img src="static/accountSafe_ID/IDCardVT2.jpg" width="674" height="30"><!--2015-11-26图片--></div>
            <div class="terifyCon">
                <input type="hidden" id="HdCountry" value="">
                <table class="terifyTb" width="440" border="0" cellspacing="0" cellpadding="0">
                    <!--2015-11-26Begin-->
                    <tbody><tr>
                        <td align="right">
                            姓名：
                        </td>
                        <td>
                            <div class="clearfix fWp">
                                <input class="terifyInput" name="" type="text" id="userName">
                                <span class="rightTip" style="display: none;" id="nameTip"></span>
                            </div>
                            <p class="ColorRed" style="display: block" id="error_name">
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            国籍：
                        </td>
                        <td>
                            <div class="trMSelect" style="z-index: 3;">
                                <input type="text" value="中国" id="countryshow">
                                <div class="trMSIndIco">
                                </div>
                                <ul class="trMSList" style="height: 150px; overflow: auto; z-index: 99" id="countryList">
                                    <li name="44" selected="selected">中国</li><li name="45">圣诞岛</li><li name="46">科科斯群岛</li><li name="47">哥伦比亚</li><li name="48">科摩罗</li><li name="49">刚果</li><li name="50">库克群岛</li><li name="51">哥斯达黎加</li><li name="52">科特迪亚</li><li name="53">克罗地亚</li><li name="54">古巴</li><li name="55">塞浦路斯</li><li name="56">捷克共和国</li><li name="57">丹麦</li><li name="58">吉布提</li><li name="59">多米尼加岛</li><li name="60">多米尼加共和国</li><li name="61">厄瓜多尔</li><li name="62">埃及</li><li name="63">萨尔瓦多</li><li name="64">赤道几内亚</li><li name="65">厄立特里亚</li><li name="66">爱沙尼亚</li><li name="67">埃塞俄比亚</li><li name="68">福克兰群岛</li><li name="69">法罗群岛</li><li name="70">斐济</li><li name="71">芬兰</li><li name="14">奥地利 </li><li name="15">阿塞拜疆</li><li name="16">巴哈马群岛</li><li name="17">巴林岛</li><li name="18">孟加拉国</li><li name="19">巴巴多斯</li><li name="20">白俄罗斯</li><li name="21">比利时</li><li name="22">伯利兹</li><li name="23">贝宁</li><li name="24">百慕大群岛</li><li name="25">不丹</li><li name="26">玻利维亚</li><li name="27">波斯尼亚</li><li name="28">博茨瓦纳</li><li name="29">布维岛</li><li name="30">巴西</li><li name="31">英属印度洋领地</li><li name="32">文莱达鲁萨兰国</li><li name="33">保加利亚</li><li name="34">布基纳法索</li><li name="35">布隆迪</li><li name="36">柬埔寨</li><li name="37">喀麦隆</li><li name="1">阿富汗</li><li name="2">阿尔巴尼亚</li><li name="3">阿尔及利亚</li><li name="4">萨摩亚群岛</li><li name="5">安道尔</li><li name="6">安哥拉</li><li name="7">安圭拉岛</li><li name="8">南极洲</li><li name="9">安提瓜和巴布达</li><li name="10">阿根廷</li><li name="11">亚美尼亚</li><li name="12">阿鲁巴岛</li><li name="39">佛得角</li><li name="40">开曼群岛</li><li name="41">中非共和国</li><li name="42">乍得</li><li name="73">法属圭亚那</li><li name="74">法属波利尼西亚</li><li name="75">法属南部领地</li><li name="76">加蓬</li><li name="77">冈比亚</li><li name="78">格鲁吉亚</li><li name="80">加纳</li><li name="81">直布罗陀</li><li name="82">希腊</li><li name="83">格陵兰</li><li name="84">格林纳达</li><li name="85">瓜德罗普岛</li><li name="86">关岛</li><li name="87">危地马拉</li><li name="88">几内亚</li><li name="89">几内亚比绍</li><li name="90">圭亚那</li><li name="91">海地</li><li name="92">赫德岛和麦克唐纳群岛</li><li name="93">洪都拉斯</li><li name="95">匈牙利</li><li name="96">冰岛</li><li name="97">印度</li><li name="98">印度尼西亚</li><li name="99">伊朗</li><li name="100">伊拉克</li><li name="101">爱尔兰</li><li name="102">以色列</li><li name="128">马里</li><li name="129">马其他</li><li name="130">马绍尔群岛</li><li name="131">马提尼克</li><li name="132">马里塔尼亚</li><li name="133">毛里求斯</li><li name="134">马约特岛</li><li name="135">墨西哥</li><li name="136">密克罗尼西亚</li><li name="137">摩尔多瓦</li><li name="138">摩纳哥</li><li name="139">蒙古</li><li name="140">黑山共和国</li><li name="141">蒙特色拉特岛</li><li name="142">摩洛哥</li><li name="143">莫桑比克</li><li name="144">缅甸</li><li name="145">纳米比亚</li><li name="146">瑙鲁</li><li name="147">尼泊尔</li><li name="148">荷兰</li><li name="149">荷属安的列斯</li><li name="150">喀里多尼亚</li><li name="151">新西兰</li><li name="152">尼加拉瓜</li><li name="153">尼日尔</li><li name="154">尼日利亚</li><li name="155">纽埃</li><li name="156">诺福克岛</li><li name="157">北马里亚诺群岛</li><li name="158">挪威</li><li name="159">阿曼</li><li name="160">巴基斯坦</li><li name="161">帕劳</li><li name="162">巴拿马</li><li name="163">巴布亚新几内亚</li><li name="164">巴拉圭</li><li name="165">秘鲁</li><li name="166">菲律宾</li><li name="167">皮特克恩岛</li><li name="168">波兰</li><li name="169">葡萄牙</li><li name="170">波多黎各</li><li name="171">卡塔尔</li><li name="172">留尼旺岛</li><li name="173">罗马尼亚</li><li name="106">约旦</li><li name="107">哈萨克斯坦</li><li name="108">肯尼亚</li><li name="109">基里巴斯</li><li name="110">科索沃</li><li name="111">科威特</li><li name="112">吉尔吉斯斯坦</li><li name="113">老挝</li><li name="114">拉脱维亚</li><li name="115">黎巴嫩</li><li name="116">莱索托</li><li name="117">利比里亚</li><li name="118">利比亚</li><li name="119">列支敦士登</li><li name="120">立陶宛</li><li name="121">卢森堡</li><li name="175">卢旺达</li><li name="176">圣巴托洛缪岛</li><li name="177">圣基茨和尼维斯</li><li name="178">圣卢西亚岛</li><li name="179">圣文森特及格林纳丁斯</li><li name="180">萨摩亚</li><li name="181">圣马力诺</li><li name="182">圣多美与普林希比共和国</li><li name="183">沙特阿拉伯</li><li name="184">塞内加尔</li><li name="185">塞尔维亚</li><li name="186">塞舌尔</li><li name="187">塞拉利昂</li><li name="123">马其顿</li><li name="124">马达加斯加岛</li><li name="125">马拉维</li><li name="189">斯洛伐克</li><li name="190">斯洛文尼亚</li><li name="191">所罗门群岛</li><li name="192">索马里</li><li name="193">南非</li><li name="196">斯里兰卡</li><li name="197">圣赫勒拿岛</li><li name="198">圣皮埃尔和密克隆岛</li><li name="199">苏丹</li><li name="200">苏里南</li><li name="201">斯瓦尔巴特和扬马延岛</li><li name="202">斯威士兰</li><li name="203">瑞典</li><li name="204">瑞士</li><li name="205">阿拉伯叙利亚共和国</li><li name="210">多哥</li><li name="211">托克劳群岛</li><li name="212">汤加</li><li name="213">特立尼达和多巴哥</li><li name="214">突尼斯</li><li name="215">土耳其</li><li name="216">土库曼斯坦</li><li name="217">特克斯和凯科斯群岛</li><li name="218">图瓦卢</li><li name="219">乌干达</li><li name="220">乌克兰</li><li name="221">阿拉伯联合酋长国</li><li name="224">乌拉圭</li><li name="225">乌兹别克斯坦</li><li name="226">瓦努阿图</li><li name="227">梵蒂冈</li><li name="228">委内瑞拉</li><li name="229">越南</li><li name="230">英属维京群岛</li><li name="231">美属维京群岛</li><li name="232">瓦利斯群岛和富图纳群岛</li><li name="233">西撒哈拉</li><li name="234">也门</li><li name="235">赞比亚</li><li name="236">津巴布韦</li><li name="104">牙买加</li><li name="207">塔吉克斯坦</li><li name="208">坦桑尼亚</li><li name="94">香港</li><li name="122">澳门</li><li name="206">台湾</li><li name="13">澳大利亚</li><li name="79">德国</li><li name="174">俄罗斯联邦</li><li name="72">法国</li><li name="194">韩国</li><li name="38">加拿大</li><li name="127">马尔代夫</li><li name="126">马来西亚</li><li name="223">美国</li><li name="105">日本</li><li name="209">泰国</li><li name="188">新加坡</li><li name="195">西班牙</li><li name="222">英国</li><li name="103">意大利</li><li name="43">智利</li>
                                </ul>
                                <div class="trMSIco">
                                    <img src="static/accountSafe_ID/but_03.gif"></div>
                            </div>
                        </td>
                    </tr>
                    <tr id="trNation">
                        <td align="right">
                            民族：
                        </td>
                        <td>
                            <div class="trMSelect" style="z-index: 2;">
                                <input type="text" value="汉族" id="nation2">
                                <div class="trMSIndIco">
                                </div>
                                <ul class="trMSList" style="height: 150px; overflow: auto; z-index: 99" id="nationList">
                                    <li name="18">阿昌族</li><li name="11">白族</li><li name="27">保安族</li><li name="7">布朗族</li><li name="6">布依族</li><li name="54">藏族</li><li name="39">朝鲜族</li><li name="13">达斡尔族</li><li name="41">傣族</li><li name="52">德昂族</li><li name="8">东乡族</li><li name="22">侗族</li><li name="29">独龙族</li><li name="28">俄罗斯族</li><li name="34">鄂伦春族</li><li name="35">鄂温克族</li><li name="32">高山族</li><li name="25">哈尼族</li><li name="26">哈萨克族</li><li name="12" selected="selected">汉族</li><li name="50">赫哲族</li><li name="14">回族</li><li name="33">基诺族</li><li name="23">京族</li><li name="40">景颇族</li><li name="24">柯尔克孜族</li><li name="20">拉祜族</li><li name="53">黎族</li><li name="42">傈僳族</li><li name="31">珞巴族</li><li name="48">满族</li><li name="4">毛南族</li><li name="2">门巴族</li><li name="46">蒙古族</li><li name="21">苗族</li><li name="10">仫佬族</li><li name="19">纳西族</li><li name="30">怒族</li><li name="44">普米族</li><li name="17">羌族</li><li name="51">撒拉族</li><li name="43">畲族</li><li name="3">水族</li><li name="37">塔吉克族</li><li name="38">塔塔尔族</li><li name="56">土家族</li><li name="1">土族</li><li name="15">佤族</li><li name="36">维吾尔族</li><li name="5">乌孜别克族</li><li name="47">锡伯族</li><li name="49">瑶族</li><li name="55">彝族</li><li name="9">仡佬族</li><li name="45">裕固族</li><li name="16">壮族</li>
                                </ul>
                                <div class="trMSIco">
                                    <img src="static/accountSafe_ID/but_03.gif"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            证件类型：
                        </td>
                        <td>
                            <div class="trMSelect" style="z-index: 1;">
                                <input type="text" value="身份证" id="cardId">
                                <div class="trMSIndIco">
                                </div>
                                <ul class="trMSList" style="z-index: 99" id="cardType">
                                    <li name="111">身份证</li>
                                    <li name="414">护照</li>
                                    <li name="114">军人证</li>
                                </ul>
                                <div class="trMSIco">
                                    <img src="static/accountSafe_ID/but_03.gif"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            证件号码：
                        </td>
                        <td>
                            <div class="clearfix fWp">
                                <input class="terifyInput" name="" type="text" id="idCard">
                                <span class="rightTip" style="display: none;" id="cardTip"></span>
                            </div>
                            <p class="ColorRed" style="display: block" id="error_idcard">
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <input class="cklb_btncz1" name="" id="btnOK" type="button" value="提交">
                        </td>
                    </tr>
                </tbody></table>
            </div>
        </div>
    </div>
    <!--内容右 end-->

		</div>
		<!--内容 end--> 
	</div>
    <div class="clear"> </div>


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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="static/accountSafe_ID/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="static/accountSafe_ID/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="static/accountSafe_ID/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="static/accountSafe_ID/TrustYoutx.gif" width="100" height="35px"></a></li>
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
</script><script src="static/accountSafe_ID/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="static/accountSafe_ID/21.gif" width="20" height="20"></a>

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
<script type="text/javascript" src="static/accountSafe_ID/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="static/accountSafe_ID/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="static/accountSafe_ID/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="static/accountSafe_ID/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="static/accountSafe_ID/youtx_mi_query.js.下载" type="text/javascript"></script><script src="static/accountSafe_ID/WebIM.js.下载" type="text/javascript"></script><script src="static/accountSafe_ID/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->        
    


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="static/accountSafe_ID/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/accountSafe_ID/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div><div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;"><div class="Talk  PosRe" id="Talk"><div class="UserMenu" id="UserBox"><div class="UserMain" id="UserM" style="cursor: move;"><ul class="TabHeader" id="UserNr" style="top:0px;"></ul></div><div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar" style="display:block; top:0px;"></span></div></div><div class="Talk_center"><span class="DownArrow" style="display:none;"><img src="static/accountSafe_ID/dowearrow.gif" width="16" height="16"></span><ul class="Yichu" style="display:none;"></ul><div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span class="RentName"></span><span class="Chat_min"><img src="static/accountSafe_ID/SIcon.png" width="25" height="25"></span></div><div class="clear"></div><div id="youtx_ch_webim"></div></div><div class="Talk_right"> </div><div class="HouseRe PosAb" style="display:none;"></div></div></div><div style="display:none;"> <ul id="youtx_none_li"></ul><div id="youtx_none_div"></div> </div><div id="house_webim_s" style="display:none;"></div> <div id="soundContainer" style=" width:10px; height:10px ;"><embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window" src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle" allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></div><div id="OutBox" class="OutBox"><div class="OutBoxbg" id="OutBoxbg"></div><a href="http://www.youtx.com/profile/passport/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic" class="OutBoxPic" src="http://www.youtx.com/profile/passport/IdCardAdd.aspx"></div><div class="ChatSmall"><div><ul id="ChatSmallUl"><li id="ChatMes" class="ChatMes">短消息（0）</li></ul><div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2><p class="All_mes"><a target="blank" href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a></p><ul class="Mes_main" id="IDUlMes_main"></ul></div></div></div></body></html>