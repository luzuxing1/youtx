<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0087)https://passport.youtx.com/profile/Passport/EditPasswordByTel.aspx?Telphone=17602172096 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
 
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="static/updatePassword/countpv" width="0" height="0"><script type="text/javascript" async="" src="static/updatePassword/load.min.js.下载"></script><script src="static/updatePassword/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="static/updatePassword/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
   
    <link href="static/updatePassword/public_PassPort.css" rel="Stylesheet" type="text/css">
    
    
    <script type="text/javascript" language="javascript">
      window.onerror = function () { return true; }
      var userid = '';
      var HostUrl = 'http://www.youtx.com';
      if (parseInt(userid) > 0) {
          $.ajax({
              type: 'POST',
              url: '/profile/Ajax/AjaxPassport.aspx',
              data: 'type=isBlackList&UserID=' + userid,
              success: function (data) {

              },
              error: function (err) {

              }
          });
      }
    </script>
    
    <title>通过手机验证码修改密码-游天下</title>
    <link href="static/updatePassword/register.css" rel="stylesheet" type="text/css">

    
</head>
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
        //手机游天下修改Begin
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
        //手机游天下修改End
    });
</script>
<!--<script src="http://a.tbcdn.cn/apps/top/x/sdk.js?appkey=21036824"></script> -->
<script type="text/javascript" src="static/updatePassword/Login_Cookie.js.下载"></script>
<script type="text/javascript">
    function setLang(lang) { $.cookie('LN', lang, { expires: 7, path: '/' }); location.reload(); }
    </script>
    
    <script type="text/javascript">

    var _dctc = _dctc || {};

    _dctc._account = _dctc._account || ['UA-25297079-1'];

    _dctc.isNorth = _dctc.isNorth || 'Y';

    _dctc.bid = '27';

    (function () {

        var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true;

        script.src = 'https://static.soufunimg.com/count/load.min.js';

        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s);

    })();

</script>

<div id="youtxlogin" class="header" style="display: none">
    <p class="logo">
        <a href="http://www.youtx.com/" target="_blank">
            <img src="static/updatePassword/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
    </p>
    <p class="btncz"><a id="A2" style="cursor:default;" target="_blank" rel="nofollow" onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;publish&#39;});}">我是房东</a></p>
    <ul class="HeadLandlord">
        <li class="HeadLandlordNew"><a id="MallShopNum" target="_blank" href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></li>
        <li><a target="_blank" href="http://www.youtx.com/room/new/">我要出租</a></li>
        <li><a target="_blank" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
        <li style="border:none;"><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></li>
    </ul>
    <ul class="subnav">
        <li><a href="http://www.youtx.com/help/" rel="nofollow">帮助</a></li>
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/updatePassword/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="youtx_04">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="static/updatePassword/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="static/updatePassword/ewmBNew.jpg" width="102" height="102"></dd>
                    <dd>微信公众号：游天下</dd>
                </dl>
                <dl style="border:none;">
            	    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top:45px;"><a href="http://m.youtx.com/" class="mbUrl">m.YouTX.com</a></dd>
                </dl>
            </div>
        </li>
        <li class="first firstNew">
              <span class="FirstSpan FirstSpan02"><a href="http://www.youtx.com/home/dashboard/" rel="nofollow">Hi,<span id="liname">游天下</span></a><span class="JianTouIco"></span></span>
              <div class="UlName UlName02">
                   <div><a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx" rel="nofollow">已预订的房间</a><span id="RoomsNumSpan" class="font_red">(0)</span></div>
                   <div><a href="http://www.youtx.com/User/MyMailBox/" rel="nofollow">站内信</a><span id="MsgNumSpan" class="font_red">(0)</span></div>
                   <div><a href="https://passport.youtx.com/profile/User/MailBox/SystemMail.aspx" rel="nofollow">系统通知</a><span id="SysMsgNumSpan" class="font_red">(0)</span></div>
                   <div id="FavNumLi"><a href="https://passport.youtx.com/payment/User/MyCollection/Collection.aspx" title="查看我收藏的房间" rel="nofollow">收藏夹</a></div>
                   <div style="border:none;"><a href="http://www.youtx.com/user/logout/" rel="nofollow">退出</a></div>
              </div>
        </li>
    </ul>
</div>
<!--头 已登录 end-->
<!--头 未登录 start-->
<div id="youtxloginw" class="header">
    <p class="logo">
        <a href="http://www.youtx.com/" target="_blank">
            <img src="static/updatePassword/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
    </p>
    <p class="btncz"><a id="A3" style="cursor:default;" target="_blank" rel="nofollow" onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;publish&#39;});}">我是房东</a></p>
    <ul class="HeadLandlord">
        <li class="HeadLandlordNew"><a target="_blank" href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></li>
        <li><a target="_blank" href="http://www.youtx.com/room/new/">我要出租</a></li>
        <li><a target="_blank" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
        <li style="border:none;"><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></li>
    </ul>
    <ul class="subnav">
        <li><a href="http://www.youtx.com/help/" rel="nofollow">帮助</a></li>
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/updatePassword/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="static/updatePassword/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="static/updatePassword/ewmBNew.jpg" width="102" height="102"></dd>
                    <dd>微信公众号：游天下</dd>
                </dl>
                <dl style="border:none;">
            	    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top:45px;"><a href="http://m.youtx.com/" class="mbUrl">m.YouTX.com</a></dd>
                </dl>
            </div>
        </li>
        <li>
            <a href="https://passport.youtx.com/user/login/" rel="nofollow">登录</a>
        </li>
        <li class="firstNew">
            <a id="reg" href="https://passport.youtx.com/user/regist/" rel="nofollow" style="color:#fa2b2b;">注册就送100元</a>
        </li>
    </ul>
</div>

    

    <!--2012-2-24注册-->
      <div class="Registration_main">
        <div class="Registration_left" style="background:url(/profile/images/Passport/RegistrationBg.gif) no-repeat 5px bottom;"></div>
        <div class="Registration_right">
          
          <!--2012-11-14修改-->
          <span class="Registration_You_x">通过手机验证码修改密码</span>
          <!--2012-11-14修改-结束-->
          <div class="Registration_tab pt20">
            <div class="item_listxt ">
             <!--2012-12-12-->
        <div class="X_itemPhone"><input name="" type="button" value="67秒后重发" id="CodeSend" disabled="disabled"><input name="" type="button" value="修改手机号码" onclick="javascript:location.href=&#39;/profile/Passport/EditPassword.aspx?Email=&#39;"><span class="PL15">验证码已发送到</span><span class="ColorPink">17602172096<input type="hidden" value="17602172096" id="forgot_emailOrPhone"><input type="hidden" value=""></span>
        <p class="X_itemPhone_no CL" style="margin:10px 0 0 0;display:none;">错误次数已达最大值，为保障账号安全，半小时内不能使用手机找回密码</p>
        <div class=" CB"></div>
        </div>
        <!--2012-12-12-->
              <div class="input266">
              <p class="text">手机收的到验证码</p>
                <span> <input id="TelVnum" name="TelVnum" type="text" value="输入手机验证码" class="input" onfocus="hideerr();"></span>
              </div>
              <p id="VtxtErrorMsg" class="item_listxt_error_r">验证码错误</p>
              <!--2014-4-4修改-->
              <div class="TelVerify" style="display: block;">若90秒内收不到验证码，请点击
                  <span class="VerifBtn"><input type="button" id="CodeSendByTel" value="67秒后获取语音验证码" disabled="disabled"></span>
              </div>
              <!--2014-4-4修改-结束-->
              <div class="input_266">
              <p class="text">新登录密码</p>
                <div class="input_passwrod fl passwrod_bg266">
                <label class="input_labelBlur input02" for="user_password" style="display:inline">输入新登录密码</label>
                <input id="psw01" name="psw01" type="password" class="input">
              </div>
              </div>
              <p id="pswError01" class="item_listxt_error_r">密码输入格式错误</p>
               <div class="input_266">
              <p class="text">输入新登录密码</p>
                <div class="input_passwrod fl passwrod_bg266">
                <label class="input_labelBlur input02" for="user_password" style="display:inline">确认新登录密码</label>
                <input id="psw02" name="psw02" type="password" class="input">
              </div>
              </div>
              <p id="pswError02" class="item_listxt_error_r">密码输入格式错误</p>
              <div class="Registration_btn" style="text-align:center">
                <input name="ctl00$ctl00$body$ContentBody$EditPsw" type="submit" id="EditPsw" class="btn152" value="确认修改">
                <p id="sendErrorMsg" class="item_listxt_error_r" style="display:none">修改错误！请重试...</p>
              </div>
            </div>
          </div>
        </div>
      </div>
     <!--表单js -->
        <script type="text/javascript">
            $(function () {
                $(".input").focus(function () {
                    $(this).addClass("color000");
                    if ($(this).val() == this.defaultValue) {
                        $(this).val("");
                        $(this).siblings().attr("style", "display:none");
                    }
                }).blur(function () {
                    $(this).removeClass("color000");
                    if ($(this).val() == '') {
                        $(this).val(this.defaultValue);
                        $(this).siblings().attr("style", "display:none");
                    }
                });
                $(".input02").click(function () {
                    $(this).hide();
                    $(this).siblings().focus()
                });
                //验证密码1
                $("#psw01").blur(function () {
                    var psw01 = $.trim($("#psw01").val());
                    $("#pswError01").css('visibility', 'hidden');
                    if (GetStrLength(psw01) <= 5 || GetStrLength(psw01) >= 20) {
                     
                        $("#pswError01").css('visibility', 'visible');
                        return;
                    }
                });
                //验证重复密码
                $("#psw02").blur(function () {
                    var psw02 = $.trim($("#psw02").val());
                    $("#pswError02").css('visibility', 'hidden');
                    if (GetStrLength(psw02) <= 5 || GetStrLength(psw02) >= 20) {
                        $("#pswError02").css('visibility', 'visible');
                        return;
                    }
                });

                //确认修改事件
                $("#EditPsw").click(function () {
                    $("#sendErrorMsg").css('display', 'none');
                    $("#pswError02").html('密码输入格式错误');
                    $("#pswError02").css('visibility', 'hidden');
                    $("#VtxtErrorMsg").css('visibility', 'hidden');
                    var psw01 = $.trim($("#psw01").val());
                    var psw02 = $.trim($("#psw02").val());
                    var TelVnum = $.trim($("#TelVnum").val());

                    if (!CheckVtxtNum(TelVnum)) {
                        $("#VtxtErrorMsg").css('visibility', 'visible');
                        return;
                    }
                    if (GetStrLength(psw01) <= 5 || GetStrLength(psw01) >= 21) {
                        $("#pswError01").css('visibility', 'visible');
                        return;
                    }
                    if (GetStrLength(psw02) <= 5 || GetStrLength(psw02) >= 21) {
                        $("#pswError02").css('visibility', 'visible');
                        return;
                    }
                    if (psw01 != psw02) {
                        $("#pswError02").html('密码输入不一致！');
                        $("#pswError02").css('visibility', 'visible');
                        return;
                    }

                    var telphone = "17602172096";

                    $.post("/profile/Ajax/EditPasswordByTelPost.aspx", { "telphone": telphone, "TelVnum": TelVnum, "psw01": psw01, "psw02": psw02 }, function (data) {
                        switch (data) {
                            case "success":
                                window.location.href = "http://www.youtx.com/home/dashboard/";
                                break;
                            case "loginerror":
                                //跳转登录失败
                                window.location.href = "/user/login/";
                                break;
                            case "editerror":
                                //更新密码失败
                                $("#sendErrorMsg").css('display', 'block');
                                break;
                            case "noyizhi":
                                //密码不一致
                                $("#pswError02").html('密码输入不一致！');
                                $("#pswError02").css('visibility', 'visible');
                                break;
                            case "pswnull":
                                //密码为空或格式不正确
                                $("#pswError02").css('visibility', 'visible');
                                break;
                            case "vtxterror":
                                //验证码不正确
                                $("#VtxtErrorMsg").css('visibility', 'visible');
                                break;
                            case "beyondtimes":
                                $(".X_itemPhone_no").html('错误次数已达最大值，为保障账号安全，半小时内不能使用手机找回密码');
                                $(".X_itemPhone_no").show();
                                $("#TelVnum").attr("disabled", "disabled");
                                $("#CodeSend").attr("disabled", "disabled");
                                $("#CodeSendByTel").attr("disabled", "disabled");
                                $('#EditPsw').attr("disabled", "disabled");
                                break;
                            default:
                                break;
                        }
                    });
                });
            })
            function hideerr() {
                $('#VtxtErrorMsg').css('visibility', '');
            }
            function GetStrLength(str) {
                var reg = /[\u4E00-\u9FA5]/g;
                var matchs = str.match(reg);
                if (matchs != null) {
                    return (matchs + "").split(',').length + str.length;
                }
                return str.length;
            }

            function CheckVtxtNum(str) { 
                var regv = /^\d{6}$/;
                if (!regv.test(str)) {
                    return false;
                }
                else {
                    return true;
                }
            }
    </script>
    
    <script type="text/javascript" language="javascript">
        var timeID;
        $(function () {
            var isdis = true;
            function sendEmail(isTel) {
                $("#CodeSend").attr("disabled", "disabled");
                $("#CodeSendByTel").attr("disabled", "disabled");
                var emailOrPhone = $.trim($("#forgot_emailOrPhone").val());
                var Vtxt = $.trim($("#Vtxt").val());
                var isEmailOrPhone = "0";
                var regEmail = new RegExp("^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$");
                var regPhone = /^(((1[3-5]{1}[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
                var regV = new RegExp("^[\\A-Za-z0-9]{4}$");
                if ((!regEmail.test(emailOrPhone)) && (!regPhone.test(emailOrPhone))) {
                    $("#ErrorMsg").css('visibility', 'visible');
                    return;
                }
                if (regEmail.test(emailOrPhone)) {
                    isEmailOrPhone = '1'; //邮箱
                }
                else if (regPhone.test(emailOrPhone)) {
                    isEmailOrPhone = '2'; //手机
                }
                $.post("/profile/Ajax/EditPwdPost.aspx", { "username": emailOrPhone, "isEmailOrPhone": isEmailOrPhone, "Vtxt": Vtxt, "istel": isTel, SendCodeMi: '3df776b6a3fdc6fb595e0ed89215ce90' }, function (data) {
                    if (data == "sendfive") {
                        $("#CodeSend").attr("disabled", "disabled");
                        $("#CodeSendByTel").attr("disabled", "disabled");
                        $("#TelVnum").attr("disabled", "disabled");
                        $("#EditPsw").attr("disabled", "disabled");
                        $(".X_itemPhone_no").html('不能继续发送短信，如有问题请致电客服400-630-0088;');
                        $(".X_itemPhone_no").show();
                    }
                    else {
                        LeftTime(90, 'CodeSend');
                        LeftTime1(90);
                    }
                })
            }
            function LeftTime1(leftsecond) {
                var time1 = setInterval(function () {
                    if (leftsecond > 0) {
                        $("#CodeSendByTel").val(leftsecond + "秒后获取语音验证码").attr("disabled", "disabled");
                        leftsecond--;
                    }
                    else {
                        clearInterval(time1);
                        $("#CodeSendByTel").val("电话验证").removeAttr("disabled");
                    }
                }, 1000);
            }
            function LeftTime(leftsecond, id) {
                if (leftsecond > 0) {
                    clearInterval(timeID);
                    timeID = setInterval(function () {
                        if (leftsecond > 0) {
                            $('#' + id).val(leftsecond + "秒后重发").attr("disabled", "disabled");
                            leftsecond--;
                        }
                        else {
                            clearInterval(timeID);
                            $("#" + id).val("发送验证码").removeAttr("disabled");
                            $("#" + id).click(function () {
                                //sendEmail();
                            });
                        }
                    }, 1000);
                }
                else {
                    $('#' + id).attr("disabled", "disabled");
                    $("#EditPsw").attr("disabled", "disabled");
                }
            }
            $("#CodeSend").click(function () {
                clearInterval(timeID);
                sendEmail(0);
            });
            $("#CodeSendByTel").click(function () {
                sendEmail(1);
            });

            if ($.cookie("sendcode") == "send") {
                $("#CodeSend").attr("disabled", "disabled");
                $("#CodeSendByTel").attr("disabled", "disabled");
                $.getJSON("/profile/Ajax/AjaxSendCode.aspx", { "type": "VerifyTimesLeft", "Telephone": '17602172096', "AllTime": 90, "t": Math.random() }, function (data) {
                    if (data["result"] > 0) {
                        LeftTime(data["result"], 'CodeSend');
                        LeftTime1(data["result"]);
                    }
                    //                    if (data["result"] > 0) {
                    //                        LeftTime(3, 'CodeSend');
                    //                    }
                    else {
                        $('#CodeSend').val('发送验证码');
                        $("#CodeSend").removeAttr("disabled");
                        $("#CodeSendByTel").removeAttr("disabled");
                    }
                });
            }
            else {
                LeftTime(90, 'CodeSend');
                $('.TelVerify').css('display', 'block');
                LeftTime1(90);
                $.cookie('sendcode', "send", { expires: 30, path: '/', domain: 'youtx.com' });
            }
        });
    </script>


        <!--尾部2011-9-6修改 start-->
        <div class="footer">
    <dl class="FooterCity">
      <dd class="footer_link_grey">热门城市：</dd>
       <dt><a href="http://www.youtx.com/beijing/" target="_blank">北京短租房</a>|<a href="http://www.youtx.com/shanghai/" target="_blank">上海短租房</a>|<a href="http://www.youtx.com/guangzhou/" target="_blank">广州短租房</a>|<a href="http://www.youtx.com/shenzhen/" target="_blank">深圳短租房</a>|<a href="http://www.youtx.com/hongkong/" target="_blank">香港短租房</a>|<a href="http://www.youtx.com/sanya/" target="_blank">三亚短租房</a>|<a href="http://www.youtx.com/suzhou/" target="_blank">苏州短租房</a>|<a href="http://www.youtx.com/hangzhou/" target="_blank">杭州短租房</a>|<a href="http://www.youtx.com/nanjing/" target="_blank">南京短租房</a>|<a href="http://www.youtx.com/xian/" target="_blank">西安短租房</a>|<a href="http://www.youtx.com/dalian/" target="_blank">大连短租房</a>|<a href="http://www.youtx.com/qingdao/" target="_blank">青岛短租房</a>|<a href="http://www.youtx.com/chongqing/" target="_blank">重庆短租房</a> <a href="http://www.youtx.com/chengdu/" target="_blank">成都短租房</a>|<a href="http://www.youtx.com/wuhan/" target="_blank">武汉短租房</a>|<a href="http://www.youtx.com/tianjin/" target="_blank">天津短租房</a>|<a href="http://www.youtx.com/kunming/" target="_blank">昆明短租房</a>|<a href="http://www.youtx.com/lijiang/" target="_blank">丽江短租房</a>|<a href="http://www.youtx.com/xiamen/" target="_blank">厦门短租房</a>|<a href="http://www.youtx.com/lasa/" target="_blank">拉萨短租房</a>|<a href="http://www.youtx.com/zhengzhou/" target="_blank">郑州短租房</a>|<a href="http://www.youtx.com/changsha/" target="_blank">长沙短租房</a>|<a href="http://www.youtx.com/changchun/" target="_blank">长春短租房</a>|<a href="http://www.youtx.com/shenyang/" target="_blank">沈阳短租房</a>|<a href="http://www.youtx.com/guilin/" target="_blank">桂林短租房</a>|<a href="http://www.youtx.com/cities/" target="_blank">更多...</a>
    </dt></dl>
    <div class="CB"></div>
    <ul class="footer_link">
      <li><a href="http://www.youtx.com/help/about/" target="_blank" rel="nofollow">关于我们</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/contact/" target="_blank" rel="nofollow">联系我们</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/jobs/" target="_blank" rel="nofollow">招聘</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/service/" target="_blank" rel="nofollow">服务协议</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/feedback/" target="_blank" rel="nofollow" id="A1">意见反馈</a></li>
      <li class="footer_link_space">|</li>
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="static/updatePassword/at.jpg"> <span>youtx.com</span></li>
    </ul>   
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/zhuanti/duanzufang/" target="_blank" rel="nofollow">短租房推荐</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="Li2"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>

    <ul class="FooterNet" style="width:475px;"><li class="FontArial02">Copyright © <script type="text/javascript">document.write((new Date()).getFullYear());</script>2018 Youtx.com, All Rights Reserved<br><a href="https://passport.youtx.com/profile/images/icp.jpg" target="_blank" rel="nofollow">京ICP证041065号</a> 京公网安备11010602010093号-2</li>
    <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="static/updatePassword/VerisignYoutx.gif" height="35" width="60"></a></li>
    <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="static/updatePassword/FooterNetPic.gif"></a></li>
    </ul>
</div>
<!--2013-6-26修改-->
<script type="text/javascript">
    $(document).ready(function () {
        $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="/profile/images/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="/profile/images/ewm.png?v=1"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div>');
        $(".FeedBackColse").click(function () {
            $(".feedbackbox").hide();
        })
    });
</script>
<!--2013-6-26修改-结束-->

        <!--尾部2011-9-6修改 end-->        
    </div>


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="static/updatePassword/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/updatePassword/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div></body></html>