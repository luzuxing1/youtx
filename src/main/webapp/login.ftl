<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0038)https://passport.youtx.com/user/login/ -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="${base}/static/login/countpv" width="0" height="0"><script type="text/javascript" async="" src="${base}/static/login/load.min.js.下载"></script><script src="${base}/static/login/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="${base}/static/login/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
   
    <link href="${base}/static/login/public_PassPort.css" rel="Stylesheet" type="text/css">
    
    
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
    
    <title>登录-游天下</title>
    <meta name="keywords" content="登录-游天下">
    <meta name="description" content="登录-游天下">
    
    <link href="${base}/static/login/login_PassPort.css" rel="stylesheet" type="text/css">


    <script type="text/javascript" language="javascript" src="${base}/static/login/Youtx.Utility.js.下载"></script>
    <script type="text/javascript" language="javascript" src="${base}/static/login/Youtx.Verification.js.下载"></script>
    <script src="${base}/static/login/jquery.validate.min.js.下载" type="text/javascript"></script>
    <!--Cps页面布码Begin Beta测试CPS时候需要调整-->
    <script type="text/javascript">
        var ScrW = window.screen.width;                   //宽
        var ScrH = window.screen.height;                  //高
        var LyUrl = escape(encodeURI(document.referrer)); //来源URL
        var DqUrl = escape(encodeURI(document.URL));      //URL
        var VPType = "2";                                 //***** 0.列表页、1.详情页、2.注册 3.登录 4.国内房源预定页面 5.国外房源预定页面 6.国内房源支付页面 7.国内房源租客取消页面 8.国外房源租客取消页面
        var PassPortSite = 'https://passport.youtx.com'; //CPS站点
        var PostUrl = PassPortSite + '/profile/Cps/CpsViewRecordPP.aspx?ScrW=' + ScrW + '&ScrH=' + ScrH + "&LyUrl=" + LyUrl + "&VPType=" + VPType + "&DqUrl=" + DqUrl;
        document.write("<scri" + "pt src='" + PostUrl + "'></scr" + "ipt>");
    </script><script src="${base}/static/login/CpsViewRecordPP.aspx"></script>
    <!--Cps页面布码End-->

    
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
<script type="text/javascript" src="${base}/static/login/Login_Cookie.js.下载"></script>
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
            <img src="${base}/static/login/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/login/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="youtx_04">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="${base}/static/login/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="${base}/static/login/ewmBNew.jpg" width="102" height="102"></dd>
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
            <img src="${base}/static/login/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/login/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="${base}/static/login/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="${base}/static/login/ewmBNew.jpg" width="102" height="102"></dd>
                    <dd>微信公众号：游天下</dd>
                </dl>
                <dl style="border:none;">
            	    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top:45px;"><a href="http://m.youtx.com/" class="mbUrl">m.YouTX.com</a></dd>
                </dl>
            </div>
        </li>
        <li>
            <a href="https://passport.youtx.com/profile/passport/Login.aspx?fromurl=http%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&amp;mail=" rel="nofollow">登录</a>
        </li>
        <li class="firstNew">
            <a id="reg" href="https://passport.youtx.com/profile/passport/Regist.aspx?fromurl=http%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&amp;mail=" rel="nofollow" style="color:#fa2b2b;">注册就送100元</a>
        </li>
    </ul>
</div>

    
    
    
<!--2015-12-28Main_Begin-->
<style type="text/css">
body{ background:url("/profile/images/loginBg.jpg") no-repeat center 70px ;}
</style>
<div class="logIn">
    <div class="logInCon clearfix">
        <!--left-->
        <div class="logInLeft clearfix">
            <img class="logInPor" src="${base}/static/login/logInPor.png" width="150" height="150" alt="明星房东头像">
            <div class="logInTxt">
                <p class="porBasicMsg">
                    涞坊派<span class="porAddr">上海</span><span class="porStar">明星房东</span>
                </p>
                <img src="${base}/static/login/logInmotto.png" width="246" height="19" alt="座右铭">
                <a href="http://www.youtx.com/star/" target="_blank" class="seeMoreStarL">
                    查看更多明星房东</a>
            </div>
        </div>
        <!--right-->
        <div class="logInRight">
            <!--会员登录-->
            <div class="logInMember">
                <h1 class="logInTit">
                    游天下会员登录</h1>
                <p class="logInError" style="visibility: hidden;">
                    用户名或密码错误/手机号格式不正确</p>
                <!--普通登录-->
                <div id="Member">
                    <div class="logInAccount">
                        <input class="logInInput" id="signin_email" type="text" value="电子邮件/手机号" onfocus="if (value ==&#39;电子邮件/手机号&#39;){value =&#39;&#39;};this.style.color=&#39;#000&#39;" onblur="if (value ==&#39;&#39;){value=&#39;电子邮件/手机号&#39;};this.style.color=&#39;#aaa&#39;" style="color: rgb(170, 170, 170);">
                    </div>
                    <div class="logInPwd PosRe">
                        <input class="logInInput" type="password" id="signin_password">
                        <div class="logInPwdTip">
                            密码</div>
                    </div>
                </div>
                <!--境外手机号登录-->
                <div class="logInOverSeas">
                    <div class="logInAccount PosRe">
                        <select class="telAreaSel" id="selArea">
                            <option value="94_852" selected="selected">中国香港 +852</option>
                            <option value="122_853">中国澳门 +853</option>
                            <option value="206_886">中国台湾 +886</option>
                            <option value="13_61">澳大利亚 +61</option>
                            <option value="79_49">德国 +49</option>
                            <option value="174_7">俄罗斯 +7</option>
                            <option value="72_33">法国 +33</option>
                            <option value="194_82">韩国 +82</option>
                            <option value="38_1">加拿大 +1</option>
                            <option value="127_960">马尔代夫 +960</option>
                            <option value="126_60">马来西亚 +60</option>
                            <option value="223_1">美国 +1</option>
                            <option value="105_81">日本 +81</option>
                            <option value="209_66">泰国 +66</option>
                            <option value="188_65">新加坡 +65</option>
                            <option value="195_34">西班牙 +34</option>
                            <option value="222_44">英国 +44</option>
                            <option value="103_39">意大利 +39</option>
                            <option value="43_56">智利 +56</option>
                        </select>
                        <input class="logInInput" type="text" id="signin_email2" value="境外手机号" onfocus="if (value ==&#39;境外手机号&#39;){value =&#39;&#39;};this.style.color=&#39;#000&#39;" onblur="if (value ==&#39;&#39;){value=&#39;境外手机号&#39;};this.style.color=&#39;#aaa&#39;" style="color: rgb(170, 170, 170);">
                    </div>
                    <div class="logInPwd PosRe">
                        <input class="logInInput" type="password" id="signin_password2">
                        <div class="logInPwdTip">
                        </div>
                    </div>
                </div>
                <div class="logInOper">
                    <label class="saveLogInTime" for="">
                        <input type="checkbox" value="false" id="remember_me" name="remember_me">两周内免登录</label>
                    <a href="javascript:;;" id="forgetpw" class="forgetPwd">忘记密码？</a>
                </div>
                <input id="bSignIn" type="button" value="登录" class="logInBtn">
                <div class="rigLoginLink clearfix">
                    <a href="https://passport.youtx.com/profile/passport/regist.aspx?fromurl=http%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&amp;mail=" onclick="this.href=&#39;/profile/passport/regist.aspx?fromurl=http%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&amp;mail=&#39;+$(&#39;#signin_email&#39;).val()" class="FL">立即注册</a> <a href="javascript:void(0);" class="FR" id="logOverSeas">境外手机号登录</a>
                    <a href="javascript:void(0);" class="FR" id="logMember" style="display: none;">返回普通登录</a>
                </div>
            </div>
            <!--warmLink-->
            <div class="cooToLogin">
                <h2 class="cooToLogTit">
                    <p class="logInLine">
                    </p>
                    <span>合作网站账号登录</span>
                </h2>
                <div class="cooLinks">
                    
                        <a href="https://graph.qq.com/oauth/show?which=Login&amp;display=pc&amp;client_id=100235923&amp;response_type=code&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dqq" class="cooToQQ"></a>

                        <a href="https://api.weibo.com/oauth2/authorize?client_id=3568509101&amp;with_offical_account=1&amp;response_type=code&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dsina%26fromurl%3Dhttp%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f" class="cooToSina"></a><a href="https://oauth.taobao.com/authorize?response_type=code&amp;client_id=21036824&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dtaobao%26fromurl%3Dhttp%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&amp;state=1212&amp;scope=item,promotion,item,usergrade" class="cooToTao"></a><a href="https://passport.youtx.com/profile/soufun.aspx?response_type=code&amp;redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dsoufun%26fromurl%3Dhttp%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f" class="cooToFang"></a>
                    
                    
                    
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" value="1" id="loginState">
</div>
<!--2015-12-28Main_End-->
<script type="text/javascript">
    $(document).ready(function () {
        $("#remember_me").val(false);
        //境外登录按钮
        $("#logOverSeas").click(function () {
            $("#Member").css("display","none");
            $(".logInOverSeas").css("display","block");
            $("#logOverSeas").css("display","none");
            $("#logMember").css("display","block");
            $(".logInTit").text("境外手机号登录");
            $("#loginState").val("2");
        });
        //普通登录按钮
        $("#logMember").click(function () {
            $("#Member").css("display","block");
            $(".logInOverSeas").css("display","none");
             $("#logOverSeas").css("display","block");
            $("#logMember").css("display","none");
            $(".logInTit").text("游天下会员登录");
            $("#loginState").val("1");
        });
        $('#forgetpw').click(function(){
            var signin_email;
            if ($("#loginState").val()=="1") {
                signin_email=$('#signin_email').val();
            }else if ($("#loginState").val()=="2") {
                signin_email=$('#signin_email2').val();
            }
            if(signin_email=='电子邮件/手机号'||signin_email=='境外手机号')
            {
                signin_email='';
            }
            window.location='/profile/Passport/EditPassword.aspx?Email='+signin_email;
        });
        $("#remember_me").click(function(){
            if($("#remember_me").val()=="on"){
                $("#remember_me").val(false);
            }
            else
            { 
                $("#remember_me").val("on");
            }
        });

        $("#bSignIn").click(function () {
            var check = true;
            var regMbl;
            var signin_email;

            if ($("#loginState").val()=="1") {
                signin_email=$.trim($('#signin_email').val());
                regMbl = /^1[3-9]\d{9}$/;
            }else if ($("#loginState").val()=="2") {
                signin_email=$.trim($('#signin_email2').val());
                regMbl = /^[0-9]{5,20}$/;
            }

            if(Youtx.Verification.isEmail(signin_email)||regMbl.test(signin_email)){            
                $('.logInError').css("visibility","hidden");
            }
            else {
                $('.logInError').css("visibility","visible");
                check = false;
            }
            var reg = new RegExp("^[\\A-Za-z0-9_\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");
            var signin_password;
            if ($("#loginState").val()=="1") {
                signin_password=$('#signin_password').val();
            }else if ($("#loginState").val()=="2") {
                signin_password=$('#signin_password2').val();
            }
            if (!reg.test(signin_password)) {
                $('.logInError').css("visibility","visible");
                check = false;
            }else {
                $('.logInError').css("visibility","hidden");
            }
            if (check) {
                var telcode="44_86";
                if ($("#loginState").val()=="2") {
                    telcode=$("#selArea").val();
                }
                $("#bSignIn").attr("disabled", "disabled");
                var remember_me = $("#remember_me").val();
                if(!remember_me){ remember_me = "";}
                $.getJSON("/profile/Ajax/Login.ashx", { emailorMbl: signin_email, password: signin_password, remember_me: remember_me,telcode:telcode, r: Math.random(),urltype:"youtx" }, function (json) {
                    $("#bSignIn").removeAttr("disabled");
                    
                    if (json.Message == "") {
                        $(".logInError").html("登录过程中发生错误，请重试！");
                    }
                    else {
                        switch (json.Result) {
                            case "1":
                                //$(".logInError").css("background-image","url(http://js.youtx.com/manage/images/ok.gif)");
                                $(".logInError").html("登录成功");
                                break;
                            case "0":
                                if ($.cookie("LN") == "en-US") {
                                    $(".logInError").html(json.Message.replace("该账号已与其它","This account has been bound to other ").replace("绑定"," account"));
                                }
                                else{
                                    $(".logInError").html(json.Message);
                                }
                                break;
//                            case "2":
//                                $(".logInError").html("请完善用户信息");
//                                break;
                            case "11":
                                $(".logInError").html("该账户涉嫌违规，被禁止登录，有问题请与客服联系。");
                                break;
                            case "12":
                                $(".logInError").html("用户名或密码错误");
                                break;
                            case "13":
                                $(".logInError").html("用户名和密码都不能为空");
                                break;
                            default:
                                $(".logInError").html(json.Message);
                                break;
                        }
                    }
                    $(".logInError").css("visibility","visible");

                    if (json.Result == "1") {
                        var fromurl='http://www.youtx.com/home/dashboard/';
                        window.location.href = fromurl.replace(/&amp;/g,"&");//处理火狐的一个bug
                    }
//                    else if (json.Result == "2") {
//                        window.location.href = json.FromUrl.replace(/&amp;/g,"&");
//                    }
                    else{
                        return false;
                    }
                });
            }
            else{
                return false;
            }
        });
         $("#signin_email").keydown(function (event) {
                        if (event.keyCode == 13) {
                            $("#bSignIn").click();
                        }
                        $('.logInError').css("visibility","hidden");
          });
           $("#signin_email").focus(function (event) {
                       $('.logInError').css("visibility","hidden");
          });
        $("#signin_password").keydown(function (event) {
        if (event.keyCode == 13) {
            $("#bSignIn").click();
        }
        $('.logInError').css("visibility","hidden");
        });
        $("#signin_password").focus(function (event) {
        $('.logInError').css("visibility","hidden");
        if ($("#signin_password").val()=='') {
            $(".logInPwdTip").html("");
        }
        });
         $("#signin_password").blur(function (event) {
         if($("#signin_password").val()=='')
         {
             $(".logInPwdTip").html("密码");
          }
        });
       
        $("[href='https://passport.youtx.com/user/regist/']").attr("href","https://passport.youtx.com/profile/passport/Regist.aspx?fromurl=http%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&mail=");
        $("[href='https://passport.youtx.com/user/login/']").attr("href","https://passport.youtx.com/profile/passport/Login.aspx?fromurl=http%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&mail=");
    });
       $(function () {
            $("body").css("background-image", "url(http://js.youtx.com/profile/images/loginBgnew.jpg) no-repeat center 70px;");
        }) 
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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="${base}/static/login/at.jpg"> <span>youtx.com</span></li>
    </ul>   
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/zhuanti/duanzufang/" target="_blank" rel="nofollow">短租房推荐</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="Li2"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>

    <ul class="FooterNet" style="width:475px;"><li class="FontArial02">Copyright © <script type="text/javascript">document.write((new Date()).getFullYear());</script>2018 Youtx.com, All Rights Reserved<br><a href="https://passport.youtx.com/profile/images/icp.jpg" target="_blank" rel="nofollow">京ICP证041065号</a> 京公网安备11010602010093号-2</li>
    <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="${base}/static/login/VerisignYoutx.gif" height="35" width="60"></a></li>
    <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="${base}/static/login/FooterNetPic.gif"></a></li>
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


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="${base}/static/login/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/login/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div></body></html>