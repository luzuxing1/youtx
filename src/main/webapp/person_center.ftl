<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0036)http://www.youtx.com/home/dashboard/ -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

<#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="${base}/static/personCenter/countpv" width="0" height="0"><script charset="utf-8" src="${base}/static/personCenter/v.js.下载"></script><script type="text/javascript" async="" src="${base}/static/personCenter/load.min.js.下载"></script><script src="${base}/static/personCenter/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <link href="${base}/static/personCenter/public.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${base}/static/personCenter/jQuery.cookie.js.下载"></script>
    
    
  <script type="text/javascript" language="javascript">
      window.onerror = function () { return true; }
        </script>
    
    <title>用户中心-游天下</title>
    <link href="${base}/static/personCenter/Control_Panel.css" rel="stylesheet" type="text/css">
    <link href="${base}/static/personCenter/mycenter.css" rel="stylesheet" type="text/css">

    
<script src="${base}/static/personCenter/saved_resource"></script></head> 
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
<script type="text/javascript" src="${base}/static/personCenter/Login_Cookie.js.下载"></script>
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
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="${base}/static/personCenter/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/personCenter/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
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
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/personCenter/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="${base}/static/personCenter/ewmBNew.jpg" width="102" height="102"></dd>
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
            <img src="${base}/static/personCenter/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/personCenter/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/personCenter/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="${base}/static/personCenter/ewmBNew.jpg" width="102" height="102"></dd>
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
    
  <div class="mycenter">
     
<style type="text/css">
.HeaderTiShi07{color:#666; white-space:nowrap;position:absolute;top:-29px;left:40px;font-size:12px;background:#fff7bc;height:20px;line-height:20px;padding:0 15px 0 5px;border:1px solid #d4c79a;}
.HeaderTiShi07 span{position:absolute;left:10px;bottom:-12px;color:#d4c79a;z-index:2}
.HeaderTiShi07 .TiShiB{bottom:-11px;color:#fff7bc;z-index:3}
.HeaderTiShi07 .TiShi07Img{position:absolute;top:3px;right:3px;cursor:pointer;}
.mycenter .NewSubNav,.wrapper .mycenter{overflow:visible;}
</style>
<ul class="NewSubNav">
    <li class="NewSubNavCur"><a href="http://www.youtx.com/home/dashboard/">账户首页</a></li>
    <li class=""><a href="http://www.youtx.com/User/MyMailBox/"> 收件箱 </a></li>
    <li class=""><a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">我是房东</a></li>
    <li class=""><a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx">我是租客</a></li>
    <li class=""><a href="http://www.youtx.com/user/remind">账户管理</a></li>
    <li class=""><a href="http://www.youtx.com/judges/">评价管理</a>
    </li><li class="" style="position:relative;z-index:2"><a href="http://www.youtx.com/profile/cashaccount/">我的资产</a>
       
    </li>
    <li class=""><a href="http://www.youtx.com/profile/user/ask/MyAsk.aspx">我是专家</a></li>
</ul>
<p class="warnning_info">亲爱的房东您好，游天下短租网提醒您，为谨防网络诈骗，请勿要相信除平台规定外的下单及支付方式，如有疑问，请致电：4006300088！</p>

    <!--我的账户内容 start-->
    <div class="mycenterindex MT5"> 
      <!--我的账户内容左 start-->
      <div class="mycenterindex_left"> 
        <!--用户资料 start-->
        <div class="mycenterindex_box" style="margin-top:5px;">   
          <div class="mi_l_pic">
            <div class="picwrap">
              <div class="pm_shadow r"> </div>
              <div class="pm_shadow l"> </div>
              <div class="pm">
                <div class="pm_inner">
                  <div class="pm_shadow_inner r"> </div>
                  <div class="pm_shadow_inner l"> </div>
                  <div class="pm_shadow_inner t"> </div>
                  <div class="pm_shadow_inner b"> </div>
                          <a title="查看资料" href="http://www.youtx.com/user/show/2600363/">
                                        <img width="209" height="209" title=" 卢祖兴" src="${base}/static/personCenter/225_2600363_851.jpg" alt=" 卢祖兴"></a> </div>
              </div>
            </div>
          </div>
          <div class="EditInfor">
            <p><a href="http://www.youtx.com/Basic/">编辑资料</a></p>
            <p class="EditInfor_name"><a title="查看资料" href="http://www.youtx.com/user/show/2600363/"> 卢祖兴</a></p>
          </div>
          <div class="NewsAut">
            <ul style="display:none;">
              <li class="NewsAut01">明星房东</li>
              <li class="NewsAut02">信用卡</li>
              <li class="NewsAut03">认证</li>
              <li class="NewsAut04">房东</li>
            </ul>
            <div style="clear:both;"></div>
                    <script type="text/javascript" language="javascript">
                          $(document).ready(function () {
                              loadtask(1, 5, 5); //主动向您提问
                          });
                          $(document).ready(function () {
                              $(".CreditSpan").mouseover(function () { $(this).children(".EjectPromp_new").show() });
                              $(".CreditSpan").mouseout(function () { $(this).children(".EjectPromp_new").hide() });
                              istrue(); //140319新增
                          });
                          function loadtask(PageIndex, ListType, PageSize) {
                              $.ajax({
                                  url: '/profile/ajax/getAskContent.aspx?ListType=' + ListType + '&PageSize=' + PageSize + '&PageIndex=' + PageIndex + '&t=' + Math.random(),
                                  type: 'GET',
                                  async: false,
                                  timeout: 1000,
                                  dataType: 'xml',
                                  error: function (xml) {

                                  },
                                  success: function (xml) {
                                      var UserLevel = $(xml).find('YoutxUser').find('UserLevel').text();
                                      var IsZhuanjia = $(xml).find('YoutxUser').find('IsZhuanjia').text();
                                      $('#LevelName').html('<img class="VerMid" src="http://js.youtx.com/profile/images/dj20120702.png" />' + LevelName + '</span>');

                                      if (parseInt(IsZhuanjia) > 0) {
                                          $('#xzwenda').show();
                                          $('#xzwenda').html('<img class="VerMid" src="http://js.youtx.com/profile/images/dj20120702.png" />');
                                      }
                                      else {
                                          $('#xzwenda').hide();
                                      }
                                      if ('0' != '1' && (parseInt(IsZhuanjia) <= 0 || IsZhuanjia == '') && '0' != '1') {
                                          $('#xz').hide();
                                      }

                                      var LevelName = $(xml).find('YoutxUser').find('LevelName').text();
                                      $('#LevelName').html('<img class="VerMid" src="http://js.youtx.com/profile/images/dj20120702.png" /> ' + LevelName + '</span>');

                                      var html = '';
                                      $(xml).find('Ask').each(function (i) {
                                          var QuestionTitle = $(this).children("QuestionTitle").text();
                                          if (QuestionTitle.length > 25) {
                                              QuestionTitle = QuestionTitle.substring(0, 25);
                                          }
                                          html += ' <li><span class="FR">' + $(this).children("AskTime").text() + '</span><span><a class="HouResQuIngAdd">[' + $(this).children("CategoryName").text() + ']</a><a href="http://ask.youtx.com/Answer/' + $(this).children("QuestionID").text() + '_0/"  target="_blank">' + QuestionTitle + '</a><span>' + $(this).children("AnswerCount").text() + '回答</span></span></li>';
                                      });
                                      var city = "";
                                      city = $(xml).find('Ask').eq(0).children('Destination').text();
                                      if (city != '') {
                                          if ($.cookie("LN") == "en-US") {
                                              $('#otherquestion').html('<a href="http://ask.youtx.com/search/---' + city + '----/" target="_blank">更多&gt;&gt;</a>');
                                          }
                                          else {
                                              $('#otherquestion').html('<a href="http://ask.youtx.com/search/---' + city + '----/" target="_blank">更多' + city + '相关问题&gt;&gt;</a>');
                                          }
                                      }
                                      $('#tichu').html(html);

                                  }
                              });
                          }
                      </script>
                                
                                </div>
                        <div class="NewsAut clearfix">
                            <dl id="" class="NewsAutCredit">
                               <dt>荣誉勋章：</dt>      
                                          
<!--2014-6-18修改-结束-->  
                             <dd class="CreditSpan">
                                  <a rel="" href="javascript:void(0)"><img src="${base}/static/personCenter/UserIdentify2015.jpg" height="24" class="VerMid"></a>
                                  <div class="EjectPromp_new" style="display: none;">
                                        <div class="EjectSj_new"><span>◆</span> <span class="EjectSj02">◆</span></div>
                                        <div class="EjectPrompTxt_new">
                                            <p>房东身份已认证</p>
                                        </div>
                                    </div>
                              </dd>
                         
                           </dl>
                        </div>
        </div>
        <!--用户资料 end--> 
        <!--认证信息 start-->
        <div class="mycenterindex_box">
          <ul class="mi_l_title">
            <li class="mi_l_t_left">认证信息</li>
            <li class="mi_l_t_right"><a href="http://www.youtx.com/User/Profile">添加更多</a></li>
          </ul>
          <ul class="mi_l_comment1">
                        <li style="display: none"><span>良好的评论</span><div class="verifications">
                        </div>
                        </li>
                        
                        <li><span>电话验证</span><div class="verifications">
                        </div>
                        </li>
                        
                        <li><span>身份认证</span><div class="verifications">
                        </div>
                        </li>
                           
                    </ul>
        </div>
        <!--检查 end--> 
      </div>
      <!--我的账户内容左 end---> 
      <!--我的账户内容右 start-->
      <div class="mycenterindex_right"> 
        <!--2012-5-28我的账户修改-->
      
            
          
        
        
           <div style="margin-top:5px;width:672px;padding-right:0;" class="mycenterindex_box1">
        <table border="0" width="100%">
        <tbody><tr>
        <td class="NewMyTd" valign="top">
          <div class="NewMy_L">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="NewMy_Table ColorGray666">
              <tbody><tr class="NewMy_header">
                <td class="CTitle" style="width:60px;">我的订单</td>
                 <td class="Gray"><a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx?SelectState=ss2" class="LinkGray">待付款 (<span>0</span>)</a></td>
                <td class="Gray"><a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=1" class="LinkGray">待接受订单  (<span>0</span>)</a></td>
                <td><a href="http://www.youtx.com/judges_tab/1/" class="LinkGray">待评价 (<span>0</span>)</a></td>
              </tr>
               
              <tr>
                <td class="CTitle">我的财富</td>
                <td>我的钱：</td>
                <td class="ColorPink">￥0</td>
                <td><a href="http://www.youtx.com/profile/cashaccount/#chong">充值&gt;&gt;</a></td>
              </tr>
                <tr>
                <td class="CTitle">&nbsp;</td>
                <td>返现：</td>
                <td class="ColorPink">￥0</td>
                <td><a href="http://www.youtx.com/profile/User/CashBack/CashBack.aspx">提现&gt;&gt;</a></td>
            </tr>
            <tr>
                <td class="CTitle">&nbsp;</td>
                <td>红包：</td>
                <td class="ColorPink">￥0</td>
                <td><a href="http://www.youtx.com/User/RedPacket/">查看&gt;&gt;</a></td>
            </tr>
              <tr>
                <td class="CTitle">&nbsp;</td>
                <td>代金券：</td>
                <td class="ColorPink">￥100</td>
                <td><a href="http://www.youtx.com/User/Ticket/">实体券激活&gt;&gt;</a></td>
              </tr>
            <tr>
                <td class="CTitle">&nbsp;</td>
                <td>积分：</td>
                <td class="ColorPink">200</td>
                <td><a href="http://www.youtx.com/jifen/HowToEarn">怎样获得&gt;&gt;</a></td>
              </tr>
            </tbody></table>
          </div>
        </td>
        <td valign="top">
          <div class="NewMy_R">
            <h2>快速链接：</h2>
            <ul>
               
              <li><a href="http://www.youtx.com/User/Profile/" target="_blank">邮箱验证</a></li>
              
               <li><a href="http://www.youtx.com/Basic/" target="_blank">修改资料</a></li>
              <li><a href="http://www.youtx.com/user/account_recommend" target="_blank">邀请好友</a></li>
              <li><a href="https://passport.youtx.com/user/account_pwdsetup" target="_blank">修改密码</a></li>
              <li><a href="http://www.youtx.com/how_it_work/" target="_blank">新手上路</a></li>
              <li><a href="http://www.youtx.com/user/remind" target="_blank">消息通知设置</a></li>
              <li><a href="http://www.youtx.com/profile/Passport/AccountBind.aspx" target="_blank">链接分享设置</a></li>
                
                       <li><a href="http://www.youtx.com/profile/Passport/ZhimaTrustNew.aspx" target="_blank" style="color:#E00176">展示芝麻信用分</a></li>
                  
            </ul>
          </div>
        </td>
        </tr>
        </tbody></table>
          <!--2012-5-28我的账户修改-结束--> 
        </div>
        <div style="margin:20px 10px 0;"><a href="http://www.youtx.com/Topic/event-newhouse-new/" target="_blank"><img alt="" src="${base}/static/personCenter/mxmxfd1.jpg"></a></div>
       <!--租客广告-->
       
        
        <!--消息通知 start-->
        <div class="mycenterindex_box1">
          <ul class="mi_r_title">
            <li class="mi_r_t_left">系统消息</li>
            <li style="float:right;"><a href="http://www.youtx.com/User/MailBox/SystemMail/">查看全部</a></li>
          </ul>
            <ul class="mi_r_comment1">
                      
                               <li class="default"><a _messageid="4755826" href="javascript:void(0);" _actionurl="/profile/User/Account/RecAccount.aspx">
                                    请尽快设置您的收款账户，以便早日开展交易。</a></li>
                                
                               <li class="default"><a _messageid="4755816" href="javascript:void(0);" _actionurl="/User/Ticket/">
                                    注册成功，100元代金券已发送到您的帐户！赶快去使用吧。</a></li>
                                
                    </ul>
        </div>
        <!--消息通知 end--> 
        <!--信件 start-->
        <div class="mycenterindex_box1">
                    <ul class="mi_r_title">
                        <li class="mi_r_t_left">未读信息(0)</li>
                    </ul>
                    
                    <div class="mi_r_c2_btns"><a href="http://www.youtx.com/User/MyMailBox/" class="button_zrsyxx">查看所有未读信息</a></div>
                </div>
        <!--信件 end--> 
        <!--问答-->
        <div class="mycenterindex_box1">
            <div class="HouResTit"><span class="FR Colore20179"></span><h2>有人在问...</h2></div>
            <ul class="HouResQuIng" id="tichu"></ul><div class="HouResQuIngMore" id="otherquestion"></div>
        </div>
        <!--问答-->
      </div>
      <!--我的账户内容右 end---> 
    </div>
    <!--我的账户内容 end--> 
  </div>
     <script language="javascript" type="text/javascript">
         $(function () {
             $(".timeleft").each(function () {
                 var leftsecond = $(this).attr("ltime");
                 var id = $(this).attr("id");
                 if (leftsecond > 0) {
                     setInterval(function () {
                         if (leftsecond > 0) {
                             var hour = Math.floor(leftsecond / 3600).toString().length == 1 ? "0" + Math.floor(leftsecond / 3600) : Math.floor(leftsecond / 3600);
                             var m = Math.floor((leftsecond % 3600) / 60).toString().length == 1 ? "0" + Math.floor((leftsecond % 3600) / 60) : Math.floor((leftsecond % 3600) / 60);
                             var s = ((leftsecond % 3600) % 60).toString().length == 1 ? "0" + (leftsecond % 3600) % 60 : (leftsecond % 3600) % 60;
                             $("#" + id).text(hour + ":" + m + ":" + s);
                             leftsecond--;
                         }
                         else {
                             $("#" + id).attr("style", "float: right; font-size: 16px; font-weight: bold;color:gray;").text("已过期");
                         }
                     }, 1000);
                 }
                 else {
                     $("#" + id).attr("style", "float: right; font-size: 16px; font-weight: bold;color:gray;").text("已过期");
                 }
             });
             $("a[messageID]").click(function () {
                 var MessageID = $(this).attr("messageID");
                 $.getJSON("/profile/User/MailBox/MyMailBoxPost.aspx", { "action": "read", "MessageID": MessageID }, function (data) {
                     if (data["report"] == "True") {
                         window.location.href = "/profile/User/MailBox/MailDialog.aspx?messageID=" + MessageID; // $(this).attr("_action");
                     }
                     else {
                         window.location.reload();
                     }
                 })
             });
             $(".mi_r_comment1 a").click(function () {
                 var MessageID = $(this).attr("_messageID");
                 var _actionurl = $(this).attr("_actionurl");
                 if (MessageID == "") {
                     if (_actionurl != "" && _actionurl != "#")
                         window.location.href = _actionurl;
                     return;
                 }
                 var _li = $(this).closest("li");
                 $.getJSON("/profile/User/MailBox/MyMailBoxPost.aspx", { "action": "readSys", "MessageID": MessageID }, function (data) {
                     if (data["report"] == "True") {
                         if (_actionurl == "#") {
                             _li.hide();
                         }
                         else {
                             window.location.href = _actionurl;
                         }
                     }
                     else {
                         return false;
                     }
                 });
             });
         })
    </script>


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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="${base}/static/personCenter/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="${base}/static/personCenter/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="${base}/static/personCenter/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="${base}/static/personCenter/TrustYoutx.gif" width="100" height="35px"></a></li>
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
</script><script src="${base}/static/personCenter/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="${base}/static/personCenter/21.gif" width="20" height="20"></a>

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
<script type="text/javascript" src="${base}/static/personCenter/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="${base}/static/personCenter/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="${base}/static/personCenter/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="${base}/static/personCenter/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="${base}/static/personCenter/youtx_mi_query.js.下载" type="text/javascript"></script><script src="${base}/static/personCenter/WebIM.js.下载" type="text/javascript"></script><script src="${base}/static/personCenter/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->        
    


</body></html>