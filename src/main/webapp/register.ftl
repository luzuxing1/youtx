<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0055)https://passport.youtx.com/profile/passport/regist.aspx -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
 
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="static/register/countpv" width="0" height="0"><script type="text/javascript" async="" src="static/register/load.min.js.下载"></script><script src="static/register/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="static/register/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
   
    <link href="static/register/public_PassPort.css" rel="Stylesheet" type="text/css">
    
    
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
    
    <script language="javascript" type="text/javascript">
        var thisHostUrl = 'http://www.youtx.com';
        var Regs = 'a';
        $.cookie('Reg', '2', { path: '/', domain: 'youtx.com', expires: 30 }); //转完之后更新为2
    </script>
    <script type="text/javascript" language="javascript" src="static/register/Youtx.Utility.js.下载"></script>
    <script type="text/javascript" language="javascript" src="static/register/Youtx.Verification.js.下载"></script>
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
    </script><script src="static/register/CpsViewRecordPP.aspx"></script>
    <!--Cps页面布码End-->
    
        <link href="static/register/NewEdit_PassPort.css" rel="stylesheet" type="text/css">
       <link href="static/register/register_PassPort.css" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" type="text/css" href="static/register/ValidCode.css">
    <title>注册游天下帐号</title>
    <meta name="keywords" content="注册游天下帐号">
    <meta name="description" content="注册游天下帐号">

    
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
<script type="text/javascript" src="static/register/Login_Cookie.js.下载"></script>
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
            <img src="static/register/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/register/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="youtx_04">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="static/register/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="static/register/ewmBNew.jpg" width="102" height="102"></dd>
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
            <img src="static/register/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/register/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="static/register/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="static/register/ewmBNew.jpg" width="102" height="102"></dd>
                    <dd>微信公众号：游天下</dd>
                </dl>
                <dl style="border:none;">
            	    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top:45px;"><a href="http://m.youtx.com/" class="mbUrl">m.YouTX.com</a></dd>
                </dl>
            </div>
        </li>
        <li>
            <a href="https://passport.youtx.com/profile/passport/Login.aspx?fromurl=http%3a%2f%2fwww.youtx.com%2f&amp;mail=" rel="nofollow">登录</a>
        </li>
        <li class="firstNew">
            <a id="reg" href="https://passport.youtx.com/profile/passport/Regist.aspx?fromurl=http%253a%252f%252fwww.youtx.com%252fuser%252fSucceed%252f&amp;mail=" rel="nofollow" style="color:#fa2b2b;">注册就送100元</a>
        </li>
    </ul>
</div>

    
    
    
<div class="wrapper">
    <div class="Registration_main">
        <div class="Registration_left" style="background: url(/profile/images/Passport/RegistrationBg.gif) no-repeat 5px bottom;">
        </div>
        <div class="Registration_right" id="Registration_right1" style="display: block;">
            <div class="Registration_You" style="background: url(/profile/images/Passport/Registration_YBg.gif) no-repeat 40px 0px;">
            </div>
            <!--<div class="Registration_tab pt48">--><!--2015-12-31-->
            <div class="Registration_tab PT30"><!--2015-12-14class-->
               <!-- <ul class="item_Listit">
                    <li   class="item_Listit_cur">手机注册
                        </li>
                    
                </ul>--><!--2015-12-14注释-->
                <div class="item_listxt" style="display: block;">
                    <!--<div class="input290">
                        <input type="text" value="中国大陆手机号码，暂不支持其他地区手机" class="input"
                            id="CellphoneNumber" />
                    </div>-->
                    <!--2015-12-14Begin-->
                    <div class="input290 PosRe">
                    	<select class="telAreaSel" id="telSel">
                           <option value="44_86" selected="selected">中国大陆 +86</option>
                           <option value="94_852">中国香港 +852</option>
                           <option value="122_853">中国澳门 +853</option>
                           <option value="206_886">中国台湾 +886</option>
                           <option value="13_61">澳大利亚 +61</option>
                           <option value="79_49">德国 +49</option>
                           <option value="174_7">俄罗斯 +7</option>
                           <option value="72_33">法国 +33</option>
                           <option value="194_82">韩国 +82</option>
                           <option value="38_1">加拿大 +1</option>
                           <option value="127_960">马尔达夫 +960</option>
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
                        <input type="text" value="请输入你的手机号" class="input" id="CellphoneNumber" style="width:154px; margin-left:122px;">
                    </div>
                     <!--2015-12-14End-->
                    <p class="item_listxt_error" style="padding: 0 0 0 20px;">
                        电子邮箱不能为空/电子邮箱地址无效</p>
                    <div class="input_two">
                        <div style="position: absolute; padding-left: 193px; top: 6px;z-index:99; display: none;" id="yanzhengmatanceng">
                            <div class="yzbox" id="div_mathcode">
                             
                                     <div class="yzboxb">
                                 </div>
                                   <div class="yzboxa" style="border:1px solid #78c2f5; border-top:0px none;">
                                    <div class="yzboxa01">
                                        
                                        <div class="s2">
                                            <input type="text" value="" maxlength="4" class="yzboxa01inp" id="txt_mathcode">
                                            <input type="button" class="yzboxa01but" value="确认" id="btn_mathcode" way="">
                                        </div>
                                    </div>
                                    <div class="yzboxa02">
                                    	<div class="s1">
                                            
                                            
                                                 <img src="static/register/Display.aspx" 1257571139="" id="imgcode" name="imgcode" style="cursor: pointer; width:150px;height:80px;">
                                        </div>
                                        <!--<div class="s1">-->
                                            <a href="javascript:void(0);" id="resh">换一题</a>
                                       <!-- </div>-->
                                        <!--<div class="s2">
                                            请输入答案</div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <span class="input115 input93">
                            <input type="text" value="验证码" class="input" id="CheckCode">
                        </span>
                        <p>
                            <input class="btn128x36" type="button" value="免费获得验证码" name="" id="CheckTelephone"></p>
                    </div>
                    <p class="item_listxt_error">
                        验证码错误</p>
                    <!--2014-4-4修改-->
                    <div class="TelVerify" style="display: none">
                        若1分钟内收不到验证码，请点击 <span class="VerifBtn">
                            <input type="button" id="CheckTelephoneByTel" value="电话验证"></span>
                    </div>
                    <!--2014-4-4修改-结束-->
                    <div class="input_passwrod passwrod_bg290">
                        <label class="input_labelBlur input02" for="user_password" style="display: inline">
                            密码</label>
                        <input type="password" class="input" id="user_password2" size="30">
                    </div>
                    <p class="item_listxt_error">
                        密码不能为空</p>
                    <div class="input_passwrod passwrod_bg290">
                        <label class="input_labelBlur input02" for="user_password" style="display: inline">
                            确认密码</label>
                        <input type="password" class="input" id="user_password_confirmation2">
                    </div>
                    <p class="item_listxt_error">
                        两次输入不一致</p>
                    <div class="input_two">
                        <span class="input93">
                            <input type="text" value="姓氏" class="input" id="user_first_name2">
                        </span><span class="input187">
                            <input type="text" value="名字" class="input" id="user_last_name2">
                        </span>
                    </div>
                    <p class="item_listxt_error">
                        请输入1到10字符的汉字或者字母</p>
                    <p class="Registration_reader">
                        <input class="inputcheckbox" name="test" value="1" type="checkbox" id="Service2" checked="checked">
                        <label>
                            我已阅读并同意<a href="http://www.youtx.com/profile/Introduction/ServiceAgreement.aspx" target="_blank">服务协议</a></label>
                    </p>
                    <div class="Registration_btn pt25">
                        <input name="" type="button" class="btn152 fl" value="创建账户" id="bCreateAccount2">
                        <p class="fl">
                            已经是游天下会员？<a href="https://passport.youtx.com/user/login/">立即登录</a></p>
                        <div style="clear: both; height: 0px; overflow: hidden;">
                        </div>
                    </div>
                    <p class="item_listxt_error mb5" id="notice2">
                        错误</p>
                </div>
                <div class="item_listxt" style="display: none;">
                    <input type="hidden" name="fromurl" value="http%3a%2f%2fwww.youtx.com%2fuser%2fSucceed%2f">
                    <div class="input290">
                        <input type="text" value="电子邮件" class="input" id="user_email">
                    </div>
                    <p class="item_listxt_error" style="height: 24px;">
                        电子邮箱不能为空/电子邮箱地址无效</p>
                    <div class="input_passwrod passwrod_bg290">
                        <label class="input_labelBlur input02" for="user_password" style="display: inline">
                            密码</label>
                        <input type="password" class="input" id="user_password" size="30">
                    </div>
                    <p class="item_listxt_error">
                        密码由5-18位数字、字母组成</p>
                    <div class="input_passwrod passwrod_bg290">
                        <label class="input_labelBlur input02" for="user_password_confirmation" style="display: inline">
                            确认密码</label>
                        <input type="password" class="input" id="user_password_confirmation" size="30">
                    </div>
                    <p class="item_listxt_error">
                        两次输入不一致</p>
                    <div class="input_two">
                        <span class="input93">
                            <input type="text" value="姓氏" class="input" id="user_first_name">
                        </span><span class="input187">
                            <input type="text" value="名字" class="input" id="user_last_name">
                        </span>
                    </div>
                    <p class="item_listxt_error">
                        请输入1到10字符的汉字或者字母</p>
                    
                    <!--2015-06-26begin-->
                    <div id="regDiv" style="width: 300px;">
                        <span class="input146">
                            <input type="text" value="输入下图答案" class="input" id="txtReg" style="display: block;">
                        </span>
                        <div class="verifyBox">
                            <!--                            <img class="VerifyImage" src="images/verifyImg.jpg" id="regEmail"
                                width="150" height="80"  style="cursor: pointer; "/>-->
                          
                                
                                
                                 <img src="static/register/Display.aspx" 1469968792="" id="regEmail" name="imgcode" style="cursor: pointer; float: left; padding:3px 0px 3px 3px;">
                            <a class="ChangeQuestion" href="javascript:void(0);" id="regResh">换一题</a>
                        </div>
                    </div>
                    <!--2015-06-26end-->
                    <p class="item_listxt_error" id="error_tips_reg">
                        输入答案错误</p>
                    <p class="Registration_reader">
                        <input class="inputcheckbox" name="test" value="1" type="checkbox" id="Service" checked="checked">
                        <label>
                            我已阅读并同意<a href="http://www.youtx.com/profile/Introduction/ServiceAgreement.aspx" target="_blank">服务协议</a></label>
                    </p>
                    <div class="Registration_btn pt25">
                        <input class="btn152 fl" id="bCreateAccount" type="button" value="创建账户">
                        <p class="fl">
                            已经是游天下会员？<a href="https://passport.youtx.com/user/login/">立即登录</a></p>
                        <div style="clear: both; height: 0px; overflow: hidden;">
                        </div>
                    </div>
                
                </div>
                
            </div>
        </div>
        
        <div class="Registration_right1" id="Registration_right2" style="display: none;">
            <!--2012-07-11注册返回页start-->
            <div class="ZhuCeBack">
                <div class="ZhuCeBack_Suc">
                    <p class="Suc_Tex">
                        <span id="sp2"></span>
                        <br>
                        <span>请查收并按邮件指示完成注册</span></p>
                    <div class="ZhuCeSuc_Btn">
                        <input type="button" value="Email验证" id="EmailYZ"></div>
                </div>
                <div class="ZhuCeBack_Suc ZhuCeMesX">
                    <p class="Suc_Tex" style="padding-top: 18px;">
                        没有收到验证邮件？您可以：</p>
                    <div class="Resend_Mail">
                        <ul>
                            <!--两种发送状态-->
                            <li class="mail_btn mail_btn_01">
                                <input type="button" value="重新发送邮件" id="reSendEmail" style="cursor: pointer;"></li>
                            <li class="mail_btn mail_btn_01" style="display: none;" id="sendTime">
                                <input type="button" value="60s后可重新发送" id="reSendTime" disabled="true"></li>
                            <li>或者：</li>
                            <li>查看邮箱回收站、垃圾邮件</li>
                            <li><a href="javascript:void(0)" id="verify_outbox">修改Email&gt;&gt; </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <input type="hidden" name="saveCode" value="" id="saveCode">
            <input type="hidden" name="saveMail" value="" id="saveMail">
            <input type="hidden" name="stateYzMail" value="" id="stateYzMail">
            <input type="hidden" name="stateYzCode" value="" id="stateYzCode">
            <input type="hidden" name="stateYzReg" value="" id="stateYzReg">
        </div>
        <!--Email弹出层begin-->
        <div class="mask_bg">
        </div>
        <div class="modify_email" style="display:none;">
            <form>
            <h3 class="outtitle">
                <span class="outtitle_btn" id="outtitle_btn"></span><span class="outtitle_txt">修改Email</span>
            </h3>
            <ul class="outcont">
                <li class="outcont_email">
                    <dl class="clearfix">
                        <dt>Email</dt>
                        <dd>
                            <input type="text" id="txtEmail" style="width: 198px;">
                            <div id="error_tips_mail" style="display: none; text-align: left; color: Red; line-height: 16px !important;">
                                <span class="error_tips"></span>
                            </div>
                        </dd>
                    </dl>
                </li>
                <li class="outcont_verify">
                    <dl class="clearfix">
                        <dt>验证码</dt>
                   
                              <!--2015-06-26begin-->
                        <dd class="outcont_verify_dd01 clearfix">
                        	<input type="text" style="width:198px; display:block;height: 20px;
                                padding: 5px;" maxlength="4" id="txtYZ">
                                
                            <div style="overflow:hidden; width:208px; border:1px solid #e9e9e9; border-top:0px none;">
                             
                                  
                                    <img src="static/register/Display.aspx" 1659979525="" id="imgEmail" name="imgcode" style="cursor: pointer; float: left; padding:3px 0px 3px 3px;">
                                <a class="ChangeQuestion" href="javascript:void(0);" style="float:left" id="regResh2">换一题</a>
                            </div>
                            
                            <div id="error_tips_yz" style="display: none; text-align: left; color: Red;  line-height:16px !important;">
                                <span class="error_tips" style=" padding-left:0px;"></span>
                            </div>
                        </dd>
                        <!--2015-06-26end-->
                    </dl>
                </li>
                <li class="outcont_btn">
                    <dl class="clearfix">
                        <dt>&nbsp;</dt>
                        <dd class="outcont_btn_dd01">
                            <input type="button" value="发送验证Email" id="reSendEmail2">
                        </dd>
                        <dd class="outcont_btn_dd02" id="outcont_btn_dd02">
                            <span id="cancelUpdateMail">取消</span>
                        </dd>
                    </dl>
                </li>
                <div id="error_tips_reSendEmail" style="display: none; text-align: center; color: Red;">
                    <span class="error_tips"></span>
                </div>
            </ul>
            </form>
        </div>
        <script type="text/javascript">
            $(function () {
                //点击修改Email出现弹出层
                $("#verify_outbox").click(function () {
                    $(".mask_bg").show();
                    $(".modify_email").show();
                    var mail = $("#saveMail").val();
                    $("#txtEmail").val(mail);
                    $("#txtEmail").css("color", "Gray");
                    $("#stateYzMail").val("");
                    $("#stateYzCode").val("");
                    $("#error_tips_mail").text("");
                    $("#error_tips_yz").text("");
                    $("#txtYZ").val("");
                    VerificationCodeEmail();
                });
                $("#outtitle_btn").click(function () {
                    $(".mask_bg").hide();
                    $(".modify_email").hide();
                });
                //添加2015-04-16验证邮箱和验证验证码begin
                //验证邮箱
                $("#txtEmail").focus(function () {
                    if ($("#txtEmail").val() == $("#saveMail").val()) {
                        $("#txtEmail").val("");
                    }
                    $("#error_tips_mail").text("");
                    $("#error_tips_mail").css("display", "none");
                }).blur(function () {
                    var mail = $("#saveMail").val();
                    var updateMail = $("#txtEmail").val();
                    var resu = 0;
                    var check1 = 0;
                    if ($("#txtEmail").val().length > 0) {
                        if (mail == updateMail) {
                            $("#error_tips_mail").text("该Email与上一次输入的Email地址重复，请更换其他Email");
                            $("#stateYzMail").val("fa");
                            $("#error_tips_mail").css("display", "block");
                        } else if (mail == null || mail == "") {
                            $("#error_tips_mail").text("请输入Email");
                            $("#stateYzMail").val("fa");
                            $("#error_tips_mail").css("display", "block");
                        } else {
                            $("#txtEmail").css("color", "black");
                            $.getJSON("/profile/Ajax/CheckMailExists.ashx", { mail: updateMail, r: Math.random() }, function (json) {
                                if (json.Result == "1") {
                                    resu = 1;
                                } else {
                                    resu = 0;
                                }
                                if (json.check == "1") {
                                    check1 = 1;
                                } else {
                                    check1 = 0;
                                }
                                if (resu == 1) {
                                    $("#error_tips_mail").text("该Email已与其他账号绑定，请更换其他Email");
                                    $("#stateYzMail").val("fa");
                                    $("#error_tips_mail").css("display", "block");
                                } else if (check1 == 1) {
                                    $("#error_tips_mail").text("Email格式错误");
                                    $("#stateYzMail").val("fa");
                                    $("#error_tips_mail").css("display", "block");
                                } else {
                                    $("#stateYzMail").val("su");
                                    $("#error_tips_mail").text("");
                                    $("#error_tips_mail").css("display", "none");
                                    VerificationCodeEmail();
                                    $("#txtYZ").val("");
                                }
                            });
                        }
                    } else {
                        $("#txtEmail").val(mail);
                        $("#txtEmail").css("color", "Gray");
                        $("#error_tips_mail").text("该Email与上一次输入的Email地址重复，请更换其他Email");
                        $("#stateYzMail").val("fa");
                        $("#error_tips_mail").css("display", "block");
                    }
                });

                //验证码验证
                $("#txtYZ").focus(function () {
                    $("#error_tips_yz").val("");
                    $("#error_tips_yz").css("display", "none");
                }).blur(function () {
                    var mail = $("#saveMail").val();
                    var eMail = $("#txtEmail").val();
                    var txtYZ = $("#txtYZ").val();
                    if (txtYZ == "") {
                        $("#error_tips_yz").text("请输入验证码");
                        $("#stateYzCode").val("fa");
                        $("#error_tips_yz").css("display", "block");
                    } else {
                        $.getJSON("/profile/Ajax/AjaxReg.aspx", { "type": "checkMailAndYZcode", "mail": eMail, "txtYZ": txtYZ, 't': Math.random() }, function (data) {
                            if (data.result == "6") {
                                $("#error_tips_yz").text(data.text);
                                $("#stateYzCode").val("fa");
                                $("#error_tips_yz").css("display", "block");
                            } else if (data.result == "7") {
                                $("#error_tips_yz").text("");
                                $("#stateYzCode").val("su");
                                $("#error_tips_yz").css("display", "none");
                            } else {
                                $("#error_tips_yz").text("未知错误");
                                $("#stateYzCode").val("fa");
                                $("#error_tips_yz").css("display", "block");
                            }
                        });
                    }
                });
                //添加2015-04-16验证邮箱和验证验证码end 
                //2015-06-11begin
                $("#txtReg").focus(function () {
                    $("#error_tips_reg").val("");
                    //$("#error_tips_reg").css("display", "none");
                }).blur(function () {
                    var eMail = $("#user_email").val();
                    var txtReg = $("#txtReg").val();
                    $.getJSON("/profile/Ajax/AjaxReg.aspx", { "type": "checkMailAndYZcode", "mail": eMail, "txtYZ": txtReg, 't': Math.random() }, function (data) {
                        if (data.result == "6") {
                            if (txtReg == "") {
                                $("#error_tips_reg").text("请输入问题的答案");
                                $("#error_tips_reg").css("visibility", "visible");
                            } else {
                                $("#error_tips_reg").text(data.text);
                                $("#error_tips_reg").css("visibility", "visible");
                            }
                            $("#stateYzReg").val("fa");
                            //$("#error_tips_reg").css("display", "block");
                            $("#error_tips_reg").css("visibility", "visible");
                        } else if (data.result == "7") {
                            $("#error_tips_reg").text("");
                            $("#stateYzReg").val("su");
                            //$("#error_tips_reg").css("display", "none");
                            $("#error_tips_reg").css("visibility", "hidden");
                        } else {
                            $("#error_tips_reg").text("未知错误");
                            $("#stateYzReg").val("fa");
                            //$("#error_tips_reg").css("display", "block");
                            $("#error_tips_reg").css("visibility", "visible");
                        }
                    });
                });
                //2015-06-11end
            });
        </script>
        <!--Email弹出层end-->
        
    </div>
    <script type="text/javascript">
        function VerificationCode() {
//            var r = Math.random();
//            var s = $("#imgcode").attr("src");
//            s = s.split('?')[0] + "?r=" + r + "&telephone=" + $('#CellphoneNumber').val();
            //            $("#imgcode").attr("src", s);
            var r = Math.random();
            $('#imgcode').attr('src', '/Captcha/Display.aspx?r=' + r);
        }
        //重新加载验证码。
        function VerificationCodeRegEmail() {
            //            var r = Math.random();
            //            var s = $("#regEmail").attr("src");
            //            s = s.split('?')[0] + "?r=" + r + "&mailYZ=" + $('#user_email').val();
            //            $("#regEmail").attr("src", s);
            //            $("#stateYzReg").val("");
            //            $("#error_tips_reg").css("display", "none");
            var r = Math.random();
            $('#regEmail').attr('src', '/Captcha/Display.aspx?r=' + r);
            //$(window.frames["loadyzm"].document).find("img").attr('src', 'http://captchas.fang.com/Display?r='+r);
        }
        //重新加载验证码。
        function VerificationCodeRegEmail2() {
            //            var r = Math.random();
            //            var s = $("#regEmail").attr("src");
            //            s = s.split('?')[0] + "?r=" + r + "&mailYZ=" + $('#user_email').val();
            //            $("#regEmail").attr("src", s);

            //            $("#stateYzReg").val("");
            //            $("#error_tips_reg").css("display", "none");
            var r = Math.random();
            $('#imgEmail').attr('src', '/Captcha/Display.aspx?r=' + r);
        }
        //添加2015-04-16begin邮箱验证
        function VerificationCodeEmail() {
            var r = Math.random();
            var s = $("#imgEmail").attr("src");
            s = s.split('?')[0] + "?r=" + r + "&mailYZ=" + $('#txtEmail').val();
            $("#imgEmail").attr("src", s);
            $("#stateYzCode").val("");
            $("#error_tips_yz").css("display", "none");
        }
        //添加2015-04-16end邮箱验证
        $(document).ready(function () {
            $("#imgcode").bind("click", function () { VerificationCode(); });
            $("#resh").bind("click", function () { VerificationCode(); });
            $("#imgEmail").bind("click", function () { VerificationCodeEmail(); });
            $("#regEmail").bind("click", function () { VerificationCodeRegEmail(); });
            $("#regResh").bind("click", function () { VerificationCodeRegEmail(); });
            $("#regResh2").bind("click", function () { VerificationCodeRegEmail2(); });
        });

        function VerificationCode1() {
            var codefor = $("#txttel").val();
            var r = Math.random() * 10000;
            var s = "/profile/Samples/ValidCode.aspx?r=" + r + "&tel=" + codefor;
            $("#imgcode").attr("src", s);
        }
    </script>
    <script type="text/javascript">
        //注册切换2012-02-24
        $(function () {
            $('.item_Listit li').click(function () {
                $(this).addClass("item_Listit_cur").siblings().removeClass("item_Listit_cur");
                var i = $(".item_Listit li").index(this);
                $(".item_listxt").css('display', "none").eq(i).css('display', "block");
            })

            $(".item_listxt").eq(0).css('display', "block")
            $(".item_listxt").eq(1).css('display', "none");
        })
    </script>
    <!--表单js -->
    <script type="text/javascript">
        $(function () {
            $(".input").focus(function () {
                $(this).addClass("color000");
                if ($(this).val() == this.defaultValue) {
                    $(this).val("");
                }
                $(this).siblings().attr("style", "display:none");
                $("#telSel").css("display", "block");
            }).blur(function () {
                $(this).removeClass("color000");
                if ($(this).val() == '') {
                    $(this).val(this.defaultValue);
                }
                $(this).siblings().attr("style", "display:none");
                $("#telSel").css("display", "block");
            });

            $(".input02").click(function () {
                $(this).hide();
                $(this).siblings().focus()
            });
        })
    </script>
    <!--表单js-end -->
</div>
<script type="text/javascript">
        var b = false;

        $(document).ready(function () {
            //add by zhangyanke 0326
            var rquestVal = $.trim('') ;
            var isEmail = 'False';
            var isTel = 'False';
            if(isEmail=="true" || isEmail=="True"){
                $("#user_email").val(rquestVal);                    
            }
            if(isTel =="true" || isTel=="True"){
                $("#CellphoneNumber").val(rquestVal);
            }
            
            $("#CheckCode").blur(function(){
                $("#CheckCode").parent().parent().next().css('visibility', 'hidden');    
            });
            $("#user_email").blur(function () {
                var v = $("#user_email").parent().next();
                if (Youtx.Verification.isEmail($(this).val())) {
                    $("#user_email").parent().next().html('');
                    $("#user_email").parent().next().css('visibility', 'hidden');
                    CheckMailExists();
                    VerificationCodeRegEmail();
                    $("#txtReg").css("display","block");
                    $("#regEmail").css("display","block");
                    $("#regResh").css("display","block");
                }
                else {
                    $("#user_email").parent().next().html(' 电子邮箱不能为空/电子邮箱地址无效');
                    $("#user_email").parent().next().css('visibility', 'visible');
                }
                //$("[for='user_email'].labelBlur").parent().next().hide();
            });

            $("#user_password").blur(function () {
                var reg = new RegExp("^[\\A-Za-z0-9\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");
                var user_password = $(this).val();
                if (reg.test(user_password)) {
                    $(this).parent().next().css('visibility', 'hidden');
                }
                else {
                    $(this).parent().next().css('visibility', 'visible');
                }
            });

            $("#user_password_confirmation").blur(function () {
                if ($(this).val() != $('#user_password').val()) {
                    $(this).parent().next().css('visibility', 'visible');
                }
                else {
                    $(this).parent().next().css('visibility', 'hidden');
                }
            });

            $("#user_first_name").blur(function () {
                if (!isUserName($(this).val())) {
                    $(this).parent().parent().next()
                    $(this).parent().parent().next().css('visibility', 'visible');
                }
                else {
                    if ($(this).val() == '姓氏') {
                        $(this).parent().parent().next().css('visibility', 'visible');
                    }
                    else {
                        $(this).parent().parent().next().css('visibility', 'hidden');
                    }
                }
            });

            $("#user_last_name").blur(function () {
                if (!isUserName($(this).val())) {
                    $(this).parent().parent().next().css('visibility', 'visible');
                }
                else {
                    if ($(this).val() == '名字') {
                        $(this).parent().parent().next().css('visibility', 'visible');
                    } else {
                        $(this).parent().parent().next().css('visibility', 'hidden');
                    }
                }
            });

            $("#user_password2").blur(function () {
                var reg = new RegExp("^[\\A-Za-z0-9\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");
                var user_password = $(this).val();
                if(user_password=='')
                {
                    $(this).parent().next().html('密码不能为空');
                    $(this).parent().next().css('visibility', 'visible');
                }
                else if (reg.test(user_password)) {
                    $(this).parent().next().css('visibility', 'hidden');
                }
                else {
                $(this).parent().next().html('密码不能包含除字母数字外的其他字符');
                    $(this).parent().next().css('visibility', 'visible');
                }
            });

            $("#user_password_confirmation2").blur(function () {
                if ($(this).val() != $('#user_password2').val()) {
                    $(this).parent().next().css('visibility', 'visible');
                }
                else {
                    $(this).parent().next().css('visibility', 'hidden');
                }
            });

            $("#user_first_name2").blur(function () {
                if (!isUserName($(this).val())) {
                    $(this).parent().parent().next().css('visibility', 'visible');
                }
                else {
                    if ($(this).val() == '姓氏') {
                        $(this).parent().parent().next().css('visibility', 'visible');
                    } else {
                        $(this).parent().parent().next().css('visibility', 'hidden');
                    }
                }
            });

            $("#user_last_name2").blur(function () {
                if (!isUserName($(this).val())) {
                    $(this).parent().parent().next().css('visibility', 'visible');
                }
                else {
                    if ($(this).val() == '名字') {
                        $(this).parent().parent().next().css('visibility', 'visible');
                    } else {
                        $(this).parent().parent().next().css('visibility', 'hidden');
                    }
                }
            });
            //添加2015-04-15begin
            //验证邮箱
            $("#EmailYZ").click(function () {
                var email=$("#sp2").text();
                var emailsp=email.split('@');
                emailsp=emailsp[1].split('.');
                window.open("http://mail."+emailsp[0]+".com");
            });
            //重新发送邮件
            $("#reSendEmail").click(function () {
                var code=$("#saveCode").val();
                var rmail=$("#saveMail").val();
                $.getJSON("/profile/Ajax/ReSendEmail.ashx", { Modify:"ReSend", code: code,rmail:rmail, r: Math.random()}, function (json) {
                if (json.Result=="1") {
                     var sec = 60;
                     var intervalId = setInterval(function () {
                         sec--;
                         if (sec > 0) {
                             $("#reSendEmail").val( sec + "s后可重新发送");
                             $('#reSendEmail').attr('disabled', true);
                             $('#reSendEmail').css("cursor", "default");
                         }
                         else {
                             $("#reSendEmail").val("重新发送邮件");
                             $("#reSendEmail").removeAttr("disabled");
                             $('#reSendEmail').css("cursor", "pointer");
                             clearInterval(intervalId);
                         }
                     }, 1000);
                }else {
                     $("#notice").html("邮件发送失败");
                     $("#notice").css('visibility', 'visible');
                }
                });
            });
            //修改邮箱后重新发送
            $("#reSendEmail2").click(function () {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                var stateYzMail=  $("#stateYzMail").val();
                var stateYzCode= $("#stateYzCode").val();
                //验证邮箱和验证码2015-04-20begin
                if (stateYzMail=="") {
                    var mail = $("#saveMail").val();
                    var updateMail = $("#txtEmail").val();
                    var resu = 0;
                    var check1 = 0;
                    if ($("#txtEmail").val().length > 0) {
                        if (mail == updateMail) {
                            $("#error_tips_mail").text("该Email与上一次输入的Email地址重复，请更换其他Email");
                            $("#stateYzMail").val("fa");
                            $("#error_tips_mail").css("display", "block");
                        } else if (mail == null || mail == "") {

                            $("#error_tips_mail").text("请输入Email");
                            $("#stateYzMail").val("fa");
                            $("#error_tips_mail").css("display", "block");
                        } else {
                            $("#txtEmail").css("color", "black");
                            $.getJSON("/profile/Ajax/CheckMailExists.ashx", { mail: updateMail, r: Math.random() }, function (json) {
                                if (json.Result == "1") {
                                    resu = 1;
                                } else {
                                    resu = 0;
                                }
                                if (json.check == "1") {
                                    check1 = 1;
                                } else {
                                    check1 = 0;
                                }
                                if (resu == 1) {
                                    $("#error_tips_mail").text("该Email已与其他账号绑定，请更换其他Email");
                                    $("#stateYzMail").val("fa");
                                    $("#error_tips_mail").css("display", "block");
                                } else if (check1 == 1) {
                                    $("#error_tips_mail").text("Email格式错误");
                                    $("#stateYzMail").val("fa");
                                    $("#error_tips_mail").css("display", "block");
                                } else {
                                    $("#stateYzMail").val("su");
                                    $("#error_tips_mail").text("");
                                    $("#error_tips_mail").css("display", "none");
                                    VerificationCodeEmail();
                                    $("#txtYZ").val("");
                                }
                            });
                        }
                    } else {
                        $("#txtEmail").val(mail);
                        $("#txtEmail").css("color", "Gray");
                        $("#error_tips_mail").text("该Email与上一次输入的Email地址重复，请更换其他Email");
                        $("#stateYzMail").val("fa");
                        $("#error_tips_mail").css("display", "block");
                    }
                }
                if (stateYzCode=="") {
                    var mail = $("#saveMail").val();
                    var eMail = $("#txtEmail").val();
                    var txtYZ = $("#txtYZ").val();
                    if (txtYZ == "") {
                        $("#error_tips_yz").text("请输入验证码");
                        $("#stateYzCode").val("fa");
                        $("#error_tips_yz").css("display", "block");
                    }else{
                        $.getJSON("/profile/Ajax/AjaxReg.aspx", { "type": "checkMailAndYZcode", "mail": eMail, "txtYZ": txtYZ, 't': Math.random() }, function (data) {
                           if (data.result == "6") {
                               $("#error_tips_yz").text(data.text);
                               $("#stateYzCode").val("fa");
                               $("#error_tips_yz").css("display", "block");
                           } else if (data.result == "7") {
                               $("#error_tips_yz").text("");
                               $("#stateYzCode").val("su");
                               $("#error_tips_yz").css("display", "none");
                           } else {
                               $("#error_tips_yz").text("未知错误");
                               $("#stateYzCode").val("fa");
                               $("#error_tips_yz").css("display", "block");
                           }
                        });
                    }
                }
                //验证邮箱和验证码2015-04-20begin
               if (stateYzMail=="su"&&stateYzCode=="su") {
                   var code=$("#saveCode").val();
                   var rmail= $("#txtEmail").val();
                   $.getJSON("/profile/Ajax/ReSendEmail.ashx", { Modify:"Modify", code: code, rmail: rmail, r: Math.random()}, function (json) {
                      if (json.Result=="1") {
                           $("#saveCode").val(json.code);
                           $("#saveMail").val(rmail);

                           $(".mask_bg").hide();
                           $(".modify_email").hide();
                           $("#error_tips_yz").text("");
                           $("#txtYZ").val("");
                           $("#txtEmail").val("");
                           $("#error_tips_mail").text("");
                           $("#error_tips_mail").css("display", "none");
                           $("#error_tips_yz").css("display", "none");

                           $("#Registration_right2").find("#sp2").text("验证邮件已发送至"+rmail);
                      }else {
                           $("#error_tips_mail").css("display", "none");
                           $("#error_tips_yz").css("display", "none");
                      }
                   });
                }else {
                    $("#error_tips_mail").css("display", "block");
                    $("#error_tips_yz").css("display", "block");
                }
            });
            //关闭修改邮箱弹出层
            $("#cancelUpdateMail").click(function () {
                $(".mask_bg").hide();
                $(".modify_email").hide();
            });
            //添加2015-04-15end
            $("#bCreateAccount").click(function () {
                var check = true;
                var user_email = $.trim($("#user_email").val());
                var v = $("#Service").attr("checked");

                if (v != 'checked') {
                    check = false;
                }
                if (Youtx.Verification.isEmail($("#user_email").val())) {
                    $("#user_email").parent().next().html('');
                    $("#user_email").parent().next().css('visibility', 'hidden');
                    //CheckMailExists();
                }
                else {
                    $("#user_email").parent().next().html(' 电子邮箱不能为空/电子邮箱地址无效');
                    $("#user_email").parent().next().css('visibility', 'visible');
                    check = false;
                }

                var user_password = $("#user_password").val();
                var reg = new RegExp("^[\\A-Za-z0-9\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");
                if (reg.test(user_password)) {
                    $("#user_password").parent().next().css('visibility', 'hidden');
                }
                else {
                    $("#user_password").parent().next().css('visibility', 'visible');
                    check = false;
                }

                var user_password_confirmation = $("#user_password_confirmation").val();
                if ($("#user_password_confirmation").val() != $('#user_password').val()) {
                    $("#user_password_confirmation").parent().next().css('visibility', 'visible');
                    check = false;
                }
                else {
                    $("#user_password_confirmation").parent().next().css('visibility', 'hidden');
                }

                var checkF = false;
                var checkL = false;
                var user_first_name = $("#user_first_name").val();
                if (!isUserName($("#user_first_name").val())) {
                    checkF = false;
                }
                else {
                    if ($("#user_first_name").val() == '姓氏') {
                        checkF = false;
                    }
                    else {
                        $("#user_first_name").parent().parent().next().css('visibility', 'hidden');
                        checkF = true;
                    }
                }
                var user_last_name = $("#user_last_name").val();
                if (!isUserName($("#user_last_name").val())) {
                    var checkL = false;
                }
                else {
                    if ($("#user_last_name").val() == '名字') {
                        var checkL = false;
                    }
                    else {
                        $("#user_last_name").parent().parent().next().css('visibility', 'hidden');
                        var checkL = true;
                    }
                }
                if (!checkL || !checkF) {
                    $("#user_last_name").parent().parent().next().css('visibility', 'visible');
                    check = false;
                }
                 if ($("#stateYzReg").val()!="su") {
                    check = true;
                     $("#notice").html("请完善以上信息");
                     $("#notice").css("visibility","visible");
                }
//                 else if($("#stateYzReg").val()=="su"){
//                     $("#notice").html("");
//                     $("#notice").css("visibility","hidden");
//                 }
                if (check) {
                    $("#bCreateAccount").attr("disabled", "disabled");
                    $.getJSON("/profile/Ajax/Regist.ashx", { first_name: user_first_name, email: user_email, last_name: user_last_name, password: user_password, password_confirmation: user_password_confirmation, r: Math.random(), ctl00$ctl00$body$ContentBody$bCreateAccount: "创建账户", urltype: "youtx",txtYZ:$('#txtReg').val() }, function (json) {
                        $("#bCreateAccount").removeAttr("disabled");
                        if (json.Result == "1") {
                        $("#Registration_right1").css("display","none");
                        $("#Registration_right2").css("display","block");
                        $("#Registration_right2").find("#sp2").text("验证邮件已发送至"+user_email);
                        $("#saveCode").val("");
                        $("#saveCode").val(json.code);
                        $("#saveMail").val("");
                        $("#saveMail").val(user_email);  
//                            var isEqualsSucceed = "True";
//                            if(isEqualsSucceed=="true" && isEqualsSucceed=="True")
//                            {
//                                window.location.href = "http%3a%2f%2fwww.youtx.com%2fuser%2fSucceed%2f&regtype=email";
//                            }
//                            else
//                            {
//                                window.location.href = "http://www.youtx.com/user/Succeed/http%3a%2f%2fwww.youtx.com%2fuser%2fSucceed%2f&regtype=email";
//                            }
                        }
                        else {
                        switch (json.Result) {
                                case "2":
                                    $("#notice").html("邮箱格式不对");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "3":
                                    $("#notice").html("两次输入密码不一致");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "4":
                                    $("#notice").html("密码长度不符合");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "5":
                                    $("#notice").html("该邮箱已被占用");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                              case "10":
                                   if ($.cookie("LN") == "en-US") {
                                        //Within 30 minutes you can only register 5 times 
                                        //您在30分钟内只能注册5次
                                        $("#notice").html(json.Message.replace("您在","Within ").replace("分钟内只能注册"," minutes you can only register ").replace("次"," times"));
                                        $("#notice").css('visibility', 'visible');
                                    }
                                    else{
                                        $("#notice").html(json.Message);
                                        $("#notice").css('visibility', 'visible');
                                    }
                                   break;
                                case "7":
                                    $("#notice").html("已被禁止注册，如有问题请联系客服");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "30":
                                    $("#notice").html("已经绑定过用户");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "31":
                                    $("#notice").html("上传头像时出错");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "32":
                                    $("#notice").html("OpenID错误");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "0":
                                    $("#notice").html("注册失败");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "6":
                                    $("#notice").html("该姓名包含敏感字，禁止使用，有问题请与客服联系");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                case "33":
                                    $("#notice").html("注册过程出现错误,请联系管理员");
                                    $("#notice").css('visibility', 'visible');
                                    break;
                                default:
                                    $("#notice").html(json.Message);
                                    $("#notice").css('visibility', 'visible');
                                    break;
                        }
                        VerificationCodeRegEmail();
                        }
                   
                    });
                }
            });

            $("#bCreateAccount2").click(function () {
                var check = true;
                var v = $("#Service2").attr("checked");
                if (v != 'checked') {
                    check = false;
                }
                var user_password = $("#user_password2").val();
                var reg = new RegExp("^[\\A-Za-z0-9\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");

                if (reg.test(user_password)) {
                    $("#user_password2").parent().next().css('visibility', 'hidden');
                }
                else {
                    $("#user_password2").parent().next().css('visibility', 'visible');
                    check = false;
                }
                var user_password_confirmation = $("#user_password_confirmation2").val();
                if ($("#user_password_confirmation2").val() != $('#user_password2').val()) {
                    $("#user_password_confirmation2").parent().next().css('visibility', 'visible');
                    check = false;
                }
                else {
                    $("#user_password_confirmation2").parent().next().css('visibility', 'hidden');
                }
                var checkF2 = false;
                var checkL2 = false;
                var user_first_name = $("#user_first_name2").val();
                if (!isUserName($("#user_first_name2").val())) {
                    checkF2 = false;
                }
                else {
                    if ($("#user_first_name2").val() == '姓氏') {
                        checkF2 = false;
                    }
                    else {
                        $("#user_first_name2").parent().parent().next().css('visibility', 'hidden');
                        checkF2 = true;
                    }
                }
                var CellphoneNumber = $('#CellphoneNumber').val();
                var user_last_name = $("#user_last_name2").val();
                var CheckCode = $('#CheckCode').val();
                var countryAreaCode=$("#telSel").val();
                if (!isUserName($("#user_last_name2").val())) {
                    checkL2 = false;
                }
                else {
                    if ($("#user_last_name2").val() == '名字') {
                        checkL2 = false;
                    }
                    else {
                        $("#user_last_name2").parent().parent().next().css('visibility', 'hidden');
                        checkL2 = true;
                    }
                }
                if (!checkL2 || !checkF2) {
                    $("#user_last_name2").parent().parent().next().css('visibility', 'visible');
                    check = false;
                }

                if (check) {
                    $("#bCreateAccount2").attr("disabled", "disabled");
                    $.getJSON("/profile/Ajax/Regist.ashx", { telcode:countryAreaCode,CellphoneNumber: CellphoneNumber, CheckCode: CheckCode, first_name: user_first_name, last_name: user_last_name, password: user_password, password_confirmation: user_password_confirmation, r: Math.random(), ctl00$ctl00$body$ContentBody$bCreateAccount: "创建账户", urltype: "youtx", type: 'telephone' }, function (json) {
                        $("#bCreateAccount2").removeAttr("disabled");
                        if (json.Result == "1") {
                            window.location.href = thisHostUrl + '/profile/passport/usercenter.aspx/?fromurl=http%3a%2f%2fwww.youtx.com%2fuser%2fSucceed%2f&regtype=telphone';
                        }
                        else {
                            switch (json.Result) {
                                case "2":
                                    $("#notice2").html("手机格式有误");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "3":
                                    $("#notice2").html("两次输入密码不一致");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "4":
                                    $("#notice2").html("密码长度不符合");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "5":
                                    $("#notice2").html("手机号码已被绑定,请选择其它号码");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "10":
                                    if ($.cookie("LN") == "en-US") {
                                        //Within 30 minutes you can only register 5 times 
                                        //您在30分钟内只能注册5次
                                        $("#notice2").html(json.Message.replace("您在","Within ").replace("分钟内只能注册"," minutes you can only register ").replace("次"," times"));
                                        $("#notice2").css('visibility', 'visible');
                                    }
                                    else{
                                        $("#notice2").html(json.Message);
                                        $("#notice2").css('visibility', 'visible');
                                    }
                                    break;
                                case "7":
                                    $("#notice2").html("已被禁止注册，如有问题请联系客服");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "20":
                                    $("#notice2").html("已经绑定过用户");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "21":
                                    $("#notice2").html("上传头像时出错");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "22":
                                    $("#notice2").html("OpenID错误");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "0":
                                    $("#notice2").html("注册失败");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                case "23":
                                    //$("#notice2").html("验证码不正确");
                                    $("#CheckCode").parent().parent().next().css('visibility', 'visible');
                                    //$("#notice2").css('visibility', 'visible');
                                    break;
                                case "6":
                                    $("#notice2").html("该姓名包含敏感字，禁止使用，有问题请与客服联系");
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                                default:
                                    $("#notice2").html(json.Message);
                                    $("#notice2").css('visibility', 'visible');
                                    break;
                            }
                        }
                    });
                }
            });


            $("#user_password_confirmation").keydown(function (event) {
                if (event.keyCode == 13) {
                    $("#bCreateAccount").click();
                }
            });
            $("#user_password_confirmation2").keydown(function (event) {
                if (event.keyCode == 13) {
                    $("#bCreateAccount2").click();
                }
            });

            $("#bCreateAccount").keydown(function (event) {
                if (event.keyCode == 13) {
                    $("#bCreateAccount").click();
                }
            });
            $("#bCreateAccount2").keydown(function (event) {
                if (event.keyCode == 13) {
                    $("#bCreateAccount2").click();
                }
            });
            $("[href='https://passport.youtx.com/user/regist/']").attr("href", "https://passport.youtx.com/profile/passport/Regist.aspx?fromurl=http%253a%252f%252fwww.youtx.com%252fuser%252fSucceed%252f&mail=");
            $("[href='https://passport.youtx.com/user/login/']").attr("href", "https://passport.youtx.com/profile/passport/Login.aspx?fromurl=http%3a%2f%2fwww.youtx.com%2f&mail=");

            $('#CellphoneNumber').blur(function () {
                var ismobiles=false;
                if ($("#telSel").val()=="44_86") {
                    ismobiles=Youtx.Verification.isMobile($(this).val());
                }else {
                    ismobiles=Youtx.Verification.isOverSeasMobile($(this).val());
                }
                if (ismobiles) {
                    $(this).parent().next().html('');
                    CheckMobileExit($(this).val());
                    if (b) {
                        $(this).parent().next().css('visibility', 'hidden');
                    }
                    else {
                        $(this).parent().next().html('手机号码已被绑定,请选择其它号码.');
                        $(this).parent().next().css('visibility', 'visible');
                    }
                }
                else {
                    $(this).parent().next().html('手机号码格式不正确');
                    $(this).parent().next().css('visibility', 'visible');
                }
            });
            var cktel = false;
            $('#CheckTelephone').click(function () {
      
                $('#txt_mathcode').val('');
          
                if (Regs == 'a') {
                    Regs = 'b';
                    $('#SendCellphoneButton').attr('disabled', 'disabled');
         
                    if (b) {
                  
                        //setTimeout(function () { SendCode($('#CellphoneNumber').val()) }, 10);
                         VerificationCode();
                   
                         $("#btn_mathcode").attr('way',"note");
                         $("#yanzhengmatanceng").css('top','6px');
                         $("#yanzhengmatanceng").show();
                   
                         if(!cktel){
                            cktel = true;
                         }
                    }
                    else {
                        Regs = 'a';
                    }
                }
            });
            $('#CheckTelephoneByTel').click(function () {
            $('#txt_mathcode').val('');
                if (Regs == 'a'&& cktel) {
                    Regs = 'b';
                    $('#SendCellphoneButton').attr('disabled', 'disabled');
                    if (b) {
                        //setTimeout(function () { SendCode($('#CellphoneNumber').val()) }, 10);
                        VerificationCode();
                        $("#btn_mathcode").attr('way',"tel");
                        $("#yanzhengmatanceng").css('top','-50px');
                        $("#yanzhengmatanceng").show();
                    }
                    else {
                        Regs = 'a';
                    }
                }
            });
        $('#btn_mathcode').click(function(){
            if(cktel)
            {
                $(".TelVerify").css('display','block');
            }
            setTimeout(function () { SendCode($('#CellphoneNumber').val(),$('#txt_mathcode').val())}, 10);
        });
     });
    function isUserName(str) {
            var reg = /^[a-zA-Z\u4e00-\u9fa5]{1,10}$/;
            if (!reg.test(str)) {
                return false;
            }
            else {
                return true;
            }
            }
     function CheckMobileExit(Mobile) {
        var that = this;
        $.ajax({
            type: 'POST',
            async: false,
            url: '/profile/Ajax/AjaxReg.aspx',
            data: 'type=CheckMobileExit&isChecked=1&Mobile=' + Mobile + '&a=' + Math.random(),
            success: function (data) {
                if (data == "1") {
                    b= false;
                }
                else {
                    b= true;
                }
            },
            error: function () {
                b= false;
            }
        });
    }
     function SendCode (Mobile,Code) {
      // alert('sdf');
        var telcode="44_86";
        telcode=$("#telSel").val();
        $('#btn_mathcode').attr('disabled', true);
        var that = this;
        var cellphonenum = Mobile;
        var methods = $("#btn_mathcode").attr('way');
        var type = "";
        if(methods=="note")
        {
            type = "CheckTelephone";
        }
        else if(methods=="tel")
        {
            type = "CheckTelephoneByTel";
        }
      
        $.getJSON("/profile/Ajax/AjaxReg.aspx", {"telcode":telcode, "type": type, "telephone": cellphonenum,"Code":Code,'t':Math.random() }, function (data) {
            // $.cookie('Reg', '2', { path: '/', domain: 'youtx.com', expires: 30 });
            Regs='a';
            if(data.result=='2.2')
            {
                    $('#CellphoneNumber').parent().next().css('visibility','visible');
                    $('#CellphoneNumber').parent().next().html(data.text);
                    VerificationCode();
            }
            else{
                $('#CellphoneNumber').parent().next().html('');
                $('#CellphoneNumber').parent().next().css('visibility','');
                $('#yanzhengmatanceng').hide();
                LeftTime(60);
            }
            $('#btn_mathcode').attr('disabled', false);
        });
        $('#SendCellphoneButton').removeAttr('disabled');
    }

    function LeftTime(leftsecond)
    {
                var timeID = setInterval(function () {
                if (leftsecond > 0) {
                    $('#CheckTelephone').val('重新发送'+"("+leftsecond+")").attr("disabled", "disabled");
                    $('#CheckTelephoneByTel').val(leftsecond + '秒后获取语音验证码').attr("disabled", "disabled");
                    leftsecond--;
                }
                else {
                    clearInterval(timeID);
                    $('#CheckTelephone').removeAttr("disabled");
                    $('#CheckTelephone').val('重新发送');
                    $('#CheckTelephoneByTel').removeAttr("disabled");
                    $('#CheckTelephoneByTel').val('电话验证');
//                    $('#CheckTelephone').click(function () {
//                       SendCode($('#CellphoneNumber').val());
//                    });
                }
            }, 1000);
    }

    function CheckMailExists()
    {
        $.ajax({
            type: 'POST',
            //async: false,
            async: false,
            url: '/profile/Ajax/AjaxReg.aspx',
            data: 'type=CheckMailExists&user_email=' + $("#user_email").val() + "&t" + Math.random(),
            success: function (data) {
               if(data=='true')
               {
               $("#user_email").parent().next().html('电子邮箱已被注册.');
                $("#user_email").parent().next().css('visibility','visible');
                b=false;
                    //被使用
               }
               else
               {
                $("#user_email").parent().next().html('');
                 $("#user_email").parent().next().css('visibility','hidden');
                 b=true;
               }
            },
            error: function () {

            }
        });
    }
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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="static/register/at.jpg"> <span>youtx.com</span></li>
    </ul>   
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/zhuanti/duanzufang/" target="_blank" rel="nofollow">短租房推荐</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="Li2"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>

    <ul class="FooterNet" style="width:475px;"><li class="FontArial02">Copyright © <script type="text/javascript">document.write((new Date()).getFullYear());</script>2018 Youtx.com, All Rights Reserved<br><a href="https://passport.youtx.com/profile/images/icp.jpg" target="_blank" rel="nofollow">京ICP证041065号</a> 京公网安备11010602010093号-2</li>
    <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="static/register/VerisignYoutx.gif" height="35" width="60"></a></li>
    <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="static/register/FooterNetPic.gif"></a></li>
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


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="static/register/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/register/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div></body></html>