<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0061)http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="static/room_master_manageOrder/countpv" width="0" height="0"><script charset="utf-8" src="static/room_master_manageOrder/v.js.下载"></script><script type="text/javascript" async="" src="static/room_master_manageOrder/load.min.js.下载"></script><script src="static/room_master_manageOrder/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
        
    <link href="static/room_master_manageOrder/public.css" rel="stylesheet" type="text/css">
        
    <script type="text/javascript" src="static/room_master_manageOrder/jQuery.cookie.js.下载"></script>
        
    
    
    <title>游天下-我的账户-我的房间_订单管理</title>
    <link href="static/room_master_manageOrder/public(1).css" rel="stylesheet" type="text/css">
    <link href="static/room_master_manageOrder/style.css" rel="stylesheet" type="text/css">          
    <link href="static/room_master_manageOrder/traveling.css" rel="stylesheet" type="text/css">
    <script src="static/room_master_manageOrder/popup_layer_new.js.下载" type="text/javascript"></script>       
    <script type="text/javascript" src="static/room_master_manageOrder/jquery.ui.datepicker-zh.min.js.下载"></script>
    <script src="static/room_master_manageOrder/jquery-ui-1.8.14.custom.min.js.下载" type="text/javascript"></script>
    <script type="text/javascript" src="static/room_master_manageOrder/dateFormat.js.下载"></script>
    <script language="javascript" type="text/javascript">
        $(function () {
            $(window).scroll(function () { resscrEvt(onlyElement) });
            $(window).resize(function () { resscrEvt(onlyElement) });
            var isabroad = "";
            var IsCanModifyDzTradingRule = "0"
            if (isabroad == "1") {
                $("#en").addClass("AreaOrderCur").siblings().removeClass("AreaOrderCur");
            }
            else {
                $("#ch").addClass("AreaOrderCur").siblings().removeClass("AreaOrderCur");
            };
            var paycode = "";
            if (paycode != null && paycode != "") {
                $(".TravelTSeacherText").val(paycode);
            }            
            //点击隐藏上传头像提示
            $("#imgclick").click(function(){
                $("#p_usericonshow").hide();
            });

            //日期相关的操作          
            $(document).mouseup(MouseDownOther);
            $(document).blur(MouseDownOther);
            function MouseDownOther(evt) {
                evt = evt || window.event;
                var ele = evt.target || evt.srcElement;
                if (ele.parentNode != $("#abcde") || ele.parentNode != $("#datepicker")) {
                    $("#diyige").hide();
                }
            }

            $('#datepicker').datepicker({
                altField: '#checkin',
                minDate: '',
                prevText: '',
                nextText: '',
                currentText: '',
                appendText: 'yy-mm-dd',
                onSelect: function (dateText, inst) {
                    $("#diyige").hide();
                }
            });

            $('#checkin').focus(function () {
                $("#diyige").show();
            });
            $("#checkin").mouseup(function () { return false; });           
            $("#datepicker").mouseup(function () { return false; });
            $("#checkin").val("入住时间");          
            //end 日历控件   

          
            //日期相关的操作结束  


            //edit time:2015-06-18
            var pageIndex = "1";
            var pageCount = "0";
            var category = "0";
            var recentCount = "0";
            var historyCount = "0";
            var conditionCount = "0";

            if (recentCount > 0 && historyCount > 0) {
                if ($("#TravelTSeacherText").val() != "") {
                    if (category == 0) {
                        if (pageIndex == pageCount) {
                            $("#historyMsg").html("默认显示近期订单，<a href='/payment/User/MyroomEn/OrderManageEn.aspx?category=1&isAbroad=" + isabroad + "'>查看历史订单</a>");
                            $("#HistoryOrder").show();
                            $("#RecentOrder").hide();
                            $(".no_orderbox").hide();
                        }
                    }
                    else {
                        $("#RecentMsg").html("以下为所有历史订单，<a href='/payment/User/MyroomEn/OrderManageEn.aspx?category=0&isAbroad=" + isabroad + "'>点击返回</a>");
                        $("#HistoryOrder").hide();
                        $("#RecentOrder").show();
                        $(".no_orderbox").hide();
                    }
                }
            }
            else if (recentCount > 0 && historyCount == 0) {
            }
            else if (recentCount == 0 && historyCount > 0) {
                if ($("#TravelTSeacherText").val() != "") {

                    if (category == 0) {
                        $("#HistoryOrder").hide();
                        $("#RecentOrder").hide();
                        $(".no_orderbox h1").html("您近期没有订单，<a href='/payment/User/MyroomEn/OrderManageEn.aspx?category=1&isAbroad=" + isabroad + "'>可查看历史订单</a>");
                        $(".no_orderbox").show();
                    }
                    else {
                        $("#HistoryOrder").hide();
                        $("#RecentOrder").show();
                        $(".no_orderbox").hide();
                        $("#RecentMsg").html("以下为所有历史订单，<a href='/payment/User/MyroomEn/OrderManageEn.aspx?category=0&isAbroad=" + isabroad + "'>点击返回</a>");
                    }
                }
            }
            else if (recentCount == 0 && historyCount == 0) {
                $("#HistoryOrder").hide();
                $("#RecentOrder").hide();
                $(".no_orderbox").show();
            }

            if (recentCount > 0 || historyCount > 0) {
                if (conditionCount == 0) {
                    $(".no_orderbox").show();
                }
            }

            var timePoint = "";
            if (timePoint != null && timePoint != "") {
                $("#checkin").val(timePoint);
            }
            else {
                fixedMsg("checkin", "入住时间");
            }

            $(".TravelTSeacherBtn").click(function () {
                var code = $(".TravelTSeacherText").val();
                var time = $("#checkin").val();              
                if (isabroad == "1") {
                    if ($("#checkin").val() != "入住时间") {
                        location.href = "/payment/User/MyroomEn/OrderManageEn.aspx?category=0&paycode=" + code + "&time=" + time + "&isAbroad=1";
                    }
                    else {
                        location.href = "/payment/User/MyroomEn/OrderManageEn.aspx?category=0&paycode=" + code + "&isAbroad=1";
                    }
                }
                else {
                    if ($("#checkin").val() != "入住时间") {
                        location.href = "/payment/User/MyroomEn/OrderManageEn.aspx?category=0&paycode=" + code + "&time=" + time;
                    }
                    else {
                        location.href = "/payment/User/MyroomEn/OrderManageEn.aspx?category=0&paycode=" + code;
                    }
                }               
            });
            fixedMsg("TravelTSeacherText", "请输入订单号");



            $("#ShowAll").mouseover(function () {
                $(this).children().eq(1).show();
            });
            $("#ShowAll").mouseout(function () {
                $(this).children().eq(1).hide();
            });
            $(".timeleft").each(function () {
                var leftsecond = $(this).attr("ltime");
                leftsecond = parseInt(leftsecond);
                var id = $(this).attr("id");
                var oid = $(this).attr("oid");
                var pid = $(this).attr("pid");
                if (leftsecond > 0) {
                    setInterval(function () {
                        var hour = Math.floor(leftsecond / 3600).toString().length == 1 ? "0" + Math.floor(leftsecond / 3600) : Math.floor(leftsecond / 3600);
                        var m = Math.floor((leftsecond % 3600) / 60).toString().length == 1 ? "0" + Math.floor((leftsecond % 3600) / 60) : Math.floor((leftsecond % 3600) / 60);
                        var s = ((leftsecond % 3600) % 60).toString().length == 1 ? "0" + (leftsecond % 3600) % 60 : (leftsecond % 3600) % 60;
                        $("#" + id).text(hour + ":" + m + ":" + s);
                        leftsecond--;
                        if (leftsecond < 0) {
                            $("#" + id).parent().html("<span class=\"NewTravelRedbg\">过期</span>");
                            $(".btn015[oid=" + id + "]").parent().html("");
                            if (isabroad != "1") {
                                //$("#tr" + pid + " table tr td:last-child").width("110");
                                $("#tr" + pid + " table tr td:last-child").css("text-align", "center");
                                $("#tr" + pid + " table tr td:last-child").css("vertical-align", "middle");
                                $("#tr" + pid + " table tr td:last-child").html("<a class='Unl' id='delete" + oid + "' pid='" + pid + "' href='javascript:void(0)'>删除</a>");
                            }
                        }
                    }, 1000);
                }
                else {
                    $("#" + id).parent().html("<span class=\"NewTravelRedbg\">过期</span>");
                    $(".btn015[oid=" + id + "]").parent().html("");
                    if (isabroad != "1") {
                        //$("#tr" + pid + " table tr td:last-child").width("110");
                        $("#tr" + pid + " table tr td:last-child").css("text-align", "center");
                        $("#tr" + pid + " table tr td:last-child").css("vertical-align", "middle");
                        $("#tr" + pid + " table tr td:last-child").html("<a class='Unl' id='delete" + oid + "' pid='" + pid + "' href='javascript:void(0)'>删除</a>");
                    }
                }
            });
            //$("td").delegate("a.Unl", "click", function () {
            $("a.Unl").click(function () {
                var ppid = $(this).attr("pid");
                if (window.confirm("确定要删除此订单？\r\n删除后，您可以在订单回收站还原该订单。")) {
                    $.getJSON("/payment/Ajax/AjaxOrdersTrash.aspx", { "type": "trash", "category": category, "paycode": ppid, "r": Math.random() }, function (data) {
                        if (data.result == "0") {
                            //alert("删除订单成功");
                            $("#tr" + ppid).fadeTo(400, 0, function () {
                                $(this).slideUp(400);
                                $("#tr" + ppid).remove();
                            });
                        } else {
                            alert("删除订单失败");
                        }
                    });
                }
            });
            $("td").delegate("a._cancel", "click", function () {
                var orderid = $(this).attr("oid");
                var obj = $(this);
                if ($(this).attr("ostate") == "1") {
                    $.getJSON("postChangeRoomState.aspx", { "action": "changestate", "orderid": orderid }, function (data) {
                        if (data["result"] == "100") {
                            $(obj).parent().hide();
                            $("#state" + orderid).removeClass("travel_ls_fk").addClass("travel_ls_qx").text("取消");
                        }
                        else {
                            alert(data["reason"]);
                        }
                    });
                }
                else {
                    window.location.href = "/payment/User/MyroomEn/OwnerCancelEn.aspx?orderid=" + orderid;
                }
            });
            $(".AreaOrder li").click(function () {
                var i = $(".AreaOrder li").index(this);
                window.location.href = "/payment/User/MyroomEn/OrderManageEn.aspx?isAbroad=" + i;
            });



        });
        //清除日期
        function cleardate() {
            $("#checkin").val("入住时间");
            $("#diyige").hide();
        }
                                                                 //end $(function ()
        //Begin获取查询参数
        function InitParas() {
            var paras = "";
            if ($("#SelectState").val() != "" && $("#SelectState").val() != "all") {
                paras += "?SelectState=" + $("#SelectState").val();
            }
            return paras;
        }
        function redirect() {
            var params = InitParas();
            window.location.href = '/payment/User/MyroomEn/OrderManageEn.aspx' + params;
        }

        ///房东修改交易政策显示弹出层 start
        function ShowDailog(orderID) {
            $.ajax({
                type: "GET",
                cache: false,
                async: true,
                dataType: "json",
                url: "/payment/Ajax/AjaxTradingRules.aspx?",
                data: { "type": "ShowDailog", "orderid": orderID, "random": Math.random() },
                success: function (msg) {
                    if (msg.result == "1" || msg.result == "2") {
                        switch (msg.Punishment) {
                            case "5":
                                ///灵活的
                                ///$("#Punishment option[value=5]").attr("selected", "true");
                                $("#PaymentDayNum").html();
                                $("#PaymentDayNum").html("<option value='20'>20%</option><option value='50'>50%</option><option value='100'>100%</option>");
                                $("#totalAccount").text("20%");
                                $("#punishmentAccount").text("90%");
                                $("#ruzhuAccount").text("25%");
                                $("#infoShow").show();
                                $("#jiyanddb2").show();
                                $("#kouQuanKuan").hide();
                                $("#koukuan").show();
                                $("#Punishment567").show();
                                $("#jiyanPolicy").hide();
                                break;
                            case "6":
                                ///中等的
                                ///$("#Punishment option[value=6]").attr("selected", "true");
                                $("#PaymentDayNum").html();
                                $("#PaymentDayNum").html("<option value='50'>50%</option><option value='100'>100%</option>");
                                $("#totalAccount").text("25%");
                                $("#punishmentAccount").text("90%");
                                $("#ruzhuAccount").text("50%");
                                $("#infoShow").show();
                                $("#jiyanddb2").show();
                                $("#kouQuanKuan").hide();
                                $("#koukuan").show();
                                $("#Punishment567").show();
                                $("#jiyanPolicy").hide();
                                break;
                            case "7":
                                ///严格的
                                ///$("#Punishment option[value=7]").attr("selected", "true");
                                $("#PaymentDayNum").html();
                                $("#PaymentDayNum").html("<option value='100'>100%</option>");
                                $("#totalAccount").text("50%");
                                $("#punishmentAccount").text("90%");
                                $("#infoShow").show();
                                $("#jiyanddb2").show();
                                $("#kouQuanKuan").show();
                                $("#Punishment567").show();
                                $("#koukuan").hide();
                                $("#jiyanPolicy").hide();
                                break;
                            case "4":
                                ///极严的
                                ///$("#Punishment option[value=4]").attr("selected", "true");
                                $("#PaymentDayNum").html();
                                $("#PaymentDayNum").html("<option value='100'>100%</option>");
                                $("#Punishment567").hide();
                                $("#infoShow").hide();
                                $("#jiyanddb2").hide();
                                $("#kouQuanKuan").hide();
                                $("#jiyanPolicy").show();
                                break;
                        }
                        $("#Punishment option[value=" + msg.Punishment + "]").attr("selected", "true");
                        $("#PaymentDayNum option[value=" + msg.PaymentDayNum + "]").attr("selected", "true");
                        $("#selCancelDay option[value=" + msg.CancelDay + "]").attr("selected", "true");
                        $("#X").text(msg.CancelDay + "天");
                        $("#btnSave").attr("oid", orderID);
                        $("#Message").text("保存修改后请重新设置优惠金额").show();
                        if (msg.result == "2") {
                            //$("#Punishment").attr("disabled", "disabled");
                            $("#selCancelDay").attr("disabled", "disabled");
                            $("#Punishment567").hide();
                            $("#infoShow").hide();
                            $("#jiyanddb2").hide();
                            $("#jiyanPolicy").hide();
                            $("#ZiZhuDaZhe").show();
                        }
                        IsCanModifyDzTradingRule = msg.result;
                        //$(".Policytxt02").show();
                        showWin("#TemporarilyModify");   ///点击触发，弹出层显示
                    } else {
                        IsCanModifyDzTradingRule = "0";
                    }
                }
            });
        } ///房东修改交易政策显示弹出层 end

        ///弹出层取消按钮事件-隐藏弹出层
        function CancelClick() {
            //$(".Policytxt02").hide();
            closeWin("#TemporarilyModify");
        } ///弹出层end 取消按钮事件-隐藏弹出层

        ///弹出层确定按钮事件
        function SaveClick() {
            $.ajax({
                type: "GET",
                cache: false,
                async: true,
                dataType: "json",
                url: "/payment/Ajax/AjaxTradingRules.aspx?",
                data: { "type": "SaveDzTradingRule", "OrderID": $("#btnSave").attr("oid"), "Punishment": $("#Punishment option:selected").val(), "PaymentDayNum": $("#PaymentDayNum option:selected").val(), "CancelDay": $("#selCancelDay option:selected").val(), "random": Math.random() },
                success: function (msg) {
                    if (msg.result == "1") {
                        ///成功的
                        //$("#_fdShowYiCount" + $("#btnSave").attr("oid")).html("总收益：￥" + data.HouseCost);
                        $("#_cashPledge" + $("#btnSave").attr("oid")).html("线上收取订金：" + msg.CashPledge);
                        $("#_offLine" + $("#btnSave").attr("oid")).html("线下收取费用：" + msg.OffLine);
                        $("#Message").text("保存成功，2秒后自动关闭").show();
                        setTimeout("CancelClick()", 2000);
                    } else if (msg.result == "2") {
                        ///不需要更新的,直接关闭弹出层
                        ///$(".Policytxt02").hide();
                        closeWin("#TemporarilyModify");
                    } else if (msg.result == "3") {
                        ///更新失败的
                        $("#Message").text("保存失败，请检查网络").show();
                    } else if (msg.result == "0") {
                        ///参数错误的，不显示弹出层
                    }
                }
            });
        } ///end 弹出层确定按钮事件

        ///取消天数下拉列表的改变事件
        function CancelDayChange() {
            var cancelDay = $("#selCancelDay option:selected").val();
            $("#X").text(cancelDay + "天");
        } ///end 取消天数下拉列表的改变事件

        ///交易规则下拉列表的改变事件
        function PunishmentChange() {
            switch ($("#Punishment option:selected").val()) {
                case "5":
                    //$("#PaymentDayNum>option:eq(0)").remove();
                    //$("#PaymentDayNum>option:eq(1)").remove();
                    //$("#PaymentDayNum>option:eq(2)").remove();
                    $("#PaymentDayNum").html();
                    $("#PaymentDayNum").html("<option value='20'>20%</option><option value='50'>50%</option><option value='100'>100%</option>");
                    //$("#PaymentDayNum20").show();
                    //$("#PaymentDayNum50").show();
                    $("#totalAccount").text("20%");
                    $("#punishmentAccount").text("90%");
                    $("#ruzhuAccount").text("25%");
                    $("#infoShow").show();
                    $("#jiyanddb2").show();
                    $("#kouQuanKuan").hide();
                    $("#koukuan").show();
                    $("#Punishment567").show();
                    $("#jiyanPolicy").hide();
                    $("#PaymentDayNum option[value=20]").attr("selected", "true");
                    break;
                case "6":
                    //$("#PaymentDayNum20").hide();
                    //$("#PaymentDayNum50").show();
                    $("#PaymentDayNum").html();
                    $("#PaymentDayNum").html("<option value='50'>50%</option><option value='100'>100%</option>");
                    $("#totalAccount").text("25%");
                    $("#punishmentAccount").text("90%");
                    $("#ruzhuAccount").text("50%");
                    $("#infoShow").show();
                    $("#jiyanddb2").show();
                    $("#kouQuanKuan").hide();
                    $("#koukuan").show();
                    $("#Punishment567").show();
                    $("#jiyanPolicy").hide();
                    $("#PaymentDayNum option[value=50]").attr("selected", "true");
                    break;
                case "7":
                    //$("#PaymentDayNum20").hide();
                    //$("#PaymentDayNum50").hide();
                    $("#PaymentDayNum").html();
                    $("#PaymentDayNum").html("<option value='100'>100%</option>");
                    $("#totalAccount").text("50%");
                    $("#punishmentAccount").text("90%");
                    $("#infoShow").show();
                    $("#jiyanddb2").show();
                    $("#kouQuanKuan").show();
                    $("#Punishment567").show();
                    $("#koukuan").hide();
                    $("#jiyanPolicy").hide();
                    $("#PaymentDayNum option[value=100]").attr("selected", "true");
                    break;
                case "4":
                    //$("#PaymentDayNum20").hide();
                    //$("#PaymentDayNum50").hide();
                    $("#PaymentDayNum").html();
                    $("#PaymentDayNum").html("<option value='100'>100%</option>");
                    $("#Punishment567").hide();
                    $("#infoShow").hide();
                    $("#jiyanddb2").hide();
                    $("#kouQuanKuan").hide();
                    $("#jiyanPolicy").show();
                    $("#PaymentDayNum option[value=100]").attr("selected", "true");
                    break;
            }
            if (IsCanModifyDzTradingRule == "2") {
                $("#selCancelDay").attr("disabled", "disabled");
                $("#Punishment567").hide();
                $("#infoShow").hide();
                $("#jiyanddb2").hide();
                $("#jiyanPolicy").hide();
                $("#ZiZhuDaZhe").show();
            }
        } ///end 交易规则下拉列表的改变事件
        function fixedMsg(id, msg) {
            $("#" + id).focusin(function () {
                if ($(this).val() == msg)
                    $(this).val("");
            }).focusout(function () {
                if ($(this).val() == "")
                    $(this).val(msg);
            });
        }

                
    </script>


   
<script src="static/room_master_manageOrder/saved_resource"></script><link rel="stylesheet" type="text/css" href="static/room_master_manageOrder/Youtx_WebIM.css"></head>
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
<script type="text/javascript" src="static/room_master_manageOrder/Login_Cookie.js.下载"></script>
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
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="static/room_master_manageOrder/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/room_master_manageOrder/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
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
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/room_master_manageOrder/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/room_master_manageOrder/ewmBNew.jpg" width="102" height="102"></dd>
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
            <img src="static/room_master_manageOrder/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/room_master_manageOrder/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/room_master_manageOrder/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/room_master_manageOrder/ewmBNew.jpg" width="102" height="102"></dd>
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
    
    <div style="display: none;" class="PopupLayer">
    </div>
    
    <div class="Policytxt02" style="width: 800px; z-index: 9999999; display: none; position: absolute;" id="TemporarilyModify">
        <table width="590" cellspacing="0" cellpadding="0" border="0" style="border: 1px solid #CAE2F5;
            border-radius: 6px 6px 6px 6px; font-size: 12px; color: #666; line-height: 18px;
            margin: 50px 30px; background-color: White;">
            <tbody><tr>
                <td height="10" style="line-height: 1px; font-size: 1px;" colspan="4">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td width="20">
                    &nbsp;
                </td>
                <td style="border-bottom: 2px solid #CAE2F5;" colspan="2">
                    <span style="color: #4B4135; font: bold 16px/26px &#39;宋体&#39;;">修改交易规则</span><br>
                    <span>修改前请与租客沟通，否则您可能损失该订单</span>
                </td>
                <td align="right" width="17">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="right" width="101" height="40" class="ColorGray333 FwB">
                    交易规则：
                </td>
                <td width="450" style="padding-left: 10px;">
                    <select id="Punishment" name="Punishment" onchange="PunishmentChange();">
                        <option value="5">灵活的</option>
                        <option value="6">中等的</option>
                        <option value="7">严格的</option>
                        <option value="4">极严的</option>
                    </select>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="right" width="101" valign="top" height="40" class="ColorGray333 FwB PT5">
                    详细：
                </td>
                <td width="450" style="padding-left: 10px;">
                    <p class="ColorGray333" style="line-height: 30px">
                        租客需要在线支付房款总额的
                        <select name="ctl00$ctl00$body$ContentBody$PaymentDayNum" id="PaymentDayNum" class="ML10 MR10">
	<option value="20">20%</option>
	<option value="50">50%</option>
	<option value="100">100%</option>
</select>
                        作为订金<br>
                        </p><p id="Punishment567" style="display: none;">
                            租客在入住前
                            <select name="ctl00$ctl00$body$ContentBody$selCancelDay" id="selCancelDay" class="ML10 MR10" onchange="CancelDayChange();">
	<option value="1">1天</option>
	<option value="2">2天</option>
	<option value="3">3天</option>
	<option value="4">4天</option>
	<option value="5">5天</option>
	<option value="6">6天</option>
	<option value="7">7天</option>
	<option value="8">8天</option>
	<option value="9">9天</option>
	<option value="10">10天</option>
	<option value="11">11天</option>
	<option value="12">12天</option>
	<option value="13">13天</option>
	<option value="14">14天</option>
	<option value="15">15天</option>
</select>
                            的中午12:00前取消交易，将不会向您支付违约金；<br>
                            </p><p id="infoShow">
                                入住前<strong id="X" class="color994f00">XX天</strong>内租客取消，扣除房款总额的<strong id="totalAccount" class="color994f00"></strong>作为罚金，罚金的<strong class="color994f00" id="punishmentAccount"></strong>支付给房东；
                                </p><p id="jiyanddb2">
                                    入住后租客取消，<span id="kouQuanKuan">房东可扣除全额房款。</span> <span id="koukuan">房东可扣除已入住的房款、未入住房款的<strong id="ruzhuAccount" class="color994f00"></strong>，余额退还租客。</span>
                                </p>
                            <p></p>
                        <p></p>
                        <p id="jiyanPolicy" style="display: none;">
                            极严的交易规则下，租客一旦付款，则不存在免支付违约金期；<br>
                            租客在任意时间取消，扣除房款总额的<strong class="color994f00">100%</strong>作为罚金，罚金的<strong class="color994f00">90%</strong>支付给房东。
                        </p>
                        <p id="ZiZhuDaZhe" style="display: none;">
                            租客不能取消涉及促销订单。
                        </p>
                    <p></p>
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
                    &nbsp;
                </td>
                <td style="padding-left: 20px;" colspan="2">
                    <input type="button" class="GusetBtn" value="保存修改" oid="" name="btnSave" id="btnSave" onclick="SaveClick();">
                    <input type="button" class="GusetBtn" value="取消" name="btnCancel" id="btnCancel" onclick="CancelClick();">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="padding-left: 30px;" colspan="2">
                    <p class="ColorPink" id="Message" style="display: none;">
                    </p>
                </td>
            </tr>
            <tr>
                <td height="10" style="line-height: 1px; font-size: 1px;" colspan="4">
                    &nbsp;
                </td>
            </tr>
        </tbody></table>
    </div>
    
    <div class="mycenter">
        
<ul class="NewSubNav">
    <li class=""><a href="http://www.youtx.com/home/dashboard/">账户首页</a></li>
    <li class=""><a href="http://www.youtx.com/User/MyMailBox/">收件箱</a></li>
    <li class="NewSubNavCur"><a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">我是房东</a></li>
    <li class=""><a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx">我是租客</a></li>
    <li class=""><a href="http://www.youtx.com/user/remind">账户管理</a></li>
    <li class=""><a href="http://www.youtx.com/judges/">评价管理</a></li>
    <li class=""><a href="http://www.youtx.com/profile/cashaccount/">我的资产</a></li>
    <li class=" PosRe"><a href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx">我是专家</a></li>
</ul>
<p class="warnning_info">亲爱的房东您好，游天下短租网提醒您，为谨防网络诈骗，请勿要相信除平台规定外的下单及支付方式，如有疑问，请致电：4006300088！</p>
        <div class="mycenter_bigtitle_nav">
            


                 <ul class="mycenter_smalltitle mycenter_smalltitle2">
                  <li class="active"><a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
                    <li class=""><a href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
                     <li class="" style="position:relative;z-index:10"><a href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
                       
                    <li class="" style="position:relative;z-index:10"><a href="http://www.youtx.com/houseRank/">我的竞争力<img style="position: absolute; top: -9px; right: -9px;" src="static/room_master_manageOrder/new.gif" alt="新"></a></li>
                      
                    <li class=""><a href="http://www.youtx.com/payment/User/Myroom/MyEarn.aspx">赚到的钱</a></li> 
                    <li class=""><a href="http://www.youtx.com/user/salespromotion/">促销推广</a></li>
                    <li class=""><a href="http://mall.youtx.com/myshops/">我的店铺</a></li>
                      <li class=""><a href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a> 
</li>
                </ul>
        </div>
        <div style="clear: both;">
        </div>
        <!--2014-9-26修改-->
        
         


<!--LandlordManageAD Begin-->
<div class="AreaOrder_Ad" style="margin: 10px auto 0; width: 945px;"><a href="http://www.youtx.com/zhuanti/2017mxfdshy/index.html" target="_blank"><img src="static/room_master_manageOrder/2017mxfd.jpg" width="945" height="55" border="0" alt=""></a></div>

<!--LandlordManageAD End-->


        <!--2014-9-26修改-结束-->
        <div class="mycenter_main">
            <!--2012-3-19新增下拉-->
            <!--2012-7-20修改-->
            <div class="AreaOrder">
                <ul>
                    <li id="ch" class="AreaOrderCur">
                        <h3>
                            中国房源订单列表</h3>
                        <span class="sanjiao">
                            <img src="static/room_master_manageOrder/OrderSanJiao.gif"></span>
                    </li>
                    <li id="en">
                        <h3>
                            其他国家房源订单列表</h3>
                        <span class="sanjiao">
                            <img src="static/room_master_manageOrder/OrderSanJiao.gif"></span>
                    </li>
                </ul>
                
                <ul class="Recycle">
                    <li class="RecycleOrder"><a href="http://www.youtx.com/payment/User/MyroomEn/TrashIndex.aspx?category=0">订单回收站</a>
                        <div class="NewIco">
                            <img src="static/room_master_manageOrder/NewIco726.png"></div>
                    </li>
                </ul>
                
            </div>
            <div class="DivCB">                     
            </div>
             <!--2015-06-10begin-->
            <div class="clearfix HistoryOrder" style="display:none;" id="RecentOrder">
             	<div class="more_msg" style="margin:0px 0px 5px 0px;" id="RecentMsg">以下为所有历史订单，<a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=0">点击返回</a></div>
            </div> 
            <!--2015-06-10end-->
            <!--2012-7-20修改-结束-->      
            <div class="TravelTs" id="fastTurn">                      
                                    
                            <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=0&amp;isAbroad=0" style="padding-left:0px;">所有订单(<span>0</span>)</a>                      
                    
                <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=0&amp;SelectState=ss1" class="LinkA">待接受(<span>0</span>)</a> 
                <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=0&amp;SelectState=ss2" class="LinkA">待付款(<span>0</span>)</a> 
                <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=0&amp;SelectState=ss4" class="LinkA">待入住(<span>0</span>)</a>
                <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=0&amp;SelectState=no8" class="LinkA">待评价(<span>0</span>)</a>
                
           
                <div class="TravelTSeacher">                   
                    <input class="TravelTSeacherText" style="color: #666; float:left;*margin-top:4px;" id="TravelTSeacherText" value="请输入订单号" type="text">                    
                    <div id="abcde" style="float:left; margin-left:10px; *margin-left:5px;">                   
                        <input type="text" id="checkin" class="textstyle" readonly="readonly">
                        <div id="diyige" style="display: none; position: absolute; right:0px; top:24px;*top:28px; z-index:9999;">
                            <div type="text" id="datepicker" class="hasDatepicker"><div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="display: block;"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all"><a class="ui-datepicker-prev ui-corner-all" onclick="DP_jQuery_1528116650651.datepicker._adjustDate(&#39;#datepicker&#39;, -1, &#39;M&#39;);" title=""><span class="ui-icon ui-icon-circle-triangle-w"></span></a><a class="ui-datepicker-next ui-corner-all" onclick="DP_jQuery_1528116650651.datepicker._adjustDate(&#39;#datepicker&#39;, +1, &#39;M&#39;);" title=""><span class="ui-icon ui-icon-circle-triangle-e"></span></a><div class="ui-datepicker-title"><span class="ui-datepicker-year">2018</span>年&nbsp;<span class="ui-datepicker-month">六月</span></div></div><table class="ui-datepicker-calendar"><thead><tr><th><span title="星期一">一</span></th><th><span title="星期二">二</span></th><th><span title="星期三">三</span></th><th><span title="星期四">四</span></th><th><span title="星期五">五</span></th><th class="ui-datepicker-week-end"><span title="星期六">六</span></th><th class="ui-datepicker-week-end"><span title="星期日">日</span></th></tr></thead><tbody><tr><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">1</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">2</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">3</a></td></tr><tr><td class=" ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today" onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default ui-state-highlight ui-state-active ui-state-hover" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">4</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">5</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">6</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">7</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">8</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">9</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">10</a></td></tr><tr><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">11</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">12</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">13</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">14</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">15</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">16</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">17</a></td></tr><tr><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">18</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">19</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">20</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">21</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">22</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">23</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">24</a></td></tr><tr><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">25</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">26</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">27</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">28</a></td><td class=" " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">29</a></td><td class=" ui-datepicker-week-end " onclick="DP_jQuery_1528116650651.datepicker._selectDay(&#39;#datepicker&#39;,5,2018, this);return false;"><a class="ui-state-default" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx#">30</a></td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td></tr></tbody></table><div class="ui-datepicker-buttonpane ui-widget-content" style="cursor: pointer;color: #298DD8;" onclick="cleardate()">清除日期</div></div></div>
                            
                        </div>
                    </div>

                    <input class="TravelTSeacherBtn" type="button" value="搜索">                    
                </div>
            </div>
            <div class="NewTravel">
                <table cellpadding="0" cellspacing="0" border="0" width="910" class="NewTravelTable" style="table-layout: fixed; word-wrap: break-word;">
                    <tbody><tr>
                        <th width="80" style="text-align: center;">
                            订单号
                        </th>
                        <th width="190" style="text-align: center;">
                            房间
                        </th>
                        <th width="130" style="text-align: center;">
                            
                            <div id="checkintime" class="m_m_t_l_btns m_m_t_l_01">
                                <div class="m_m_t_l_02" id="checkintime1">
                                    <span class="m_m_t_l_03">
                                        
                                        入住时间
                                        
                                    </span><span class="m_m_t_l_04"></span>
                                </div>
                                <div class="m_m_t_l_05" style="position: absolute; left: -1px; z-index: 9; border: 1px solid rgb(195, 195, 195);
                                    background: none repeat scroll 0% 0% rgb(255, 255, 255); top: 23px; display: none;" id="checkintime2">
                                    <div class="m_m_t_l_06">
                                        <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=0" class="m_m_t_l_02">入住时间</a></div>
                                    <div class="m_m_t_l_06">
                                        <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectTime=today&amp;category=0" class="m_m_t_l_02">今天</a></div>
                                    <div class="m_m_t_l_06">
                                        <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectTime=tomorrow&amp;category=0" class="m_m_t_l_02">明天</a></div>
                                    <div class="m_m_t_l_06">
                                        <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectTime=weilai7&amp;category=0" class="m_m_t_l_02">未来一周内</a></div>
                                    <div class="m_m_t_l_06">
                                        <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectTime=month&amp;category=0" class="m_m_t_l_02">本月</a></div>
                                    <div class="m_m_t_l_06">
                                        <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectTime=month3&amp;category=0" class="m_m_t_l_02">最近三个月</a></div>
                                    <div class="m_m_t_l_06">
                                        <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectTime=earlier&amp;category=0" class="m_m_t_l_02">更早</a></div>
                                </div>
                                <script language="javascript" type="text/javascript">
                                    $(function () {
                                        $("#checkintime").mouseover(function () {
                                            $(this).children().eq(1).show();
                                        });
                                        $("#checkintime").mouseout(function () {
                                            $(this).children().eq(1).hide();
                                        });
                                    });
                                </script>
                            </div>
                            
                        </th>
                        <th width="130" style="text-align: center;">
                            房费
                        </th>
                        <th width="120" style="text-align: center;">
                            租客
                        </th>
                        <th width="150" style="text-align: center;">
                            <div class="m_m_t_l_btns m_m_t_l_01" id="ShowAll">
                                <div class="m_m_t_l_02">
                                    
                                    <span class="m_m_t_l_03">订单状态</span>
                                    
                                    <span class="m_m_t_l_04"></span>
                                </div>
                                <div style="position: absolute; top: 22px; left: -1px; z-index: 9; border: 1px solid #C3C3C3;
                                    background: none repeat scroll 0% 0% rgb(255, 255, 255); display: none;" class="m_m_t_l_05" id="orderstate">
                                    
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=0">所有订单</a></div>
                                    
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=ss1&amp;category=0">待处理</a></div>
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=ss2&amp;category=0">待付款</a></div>
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=ss4&amp;category=0">待入住</a></div>
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=ss44&amp;category=0">入住中</a></div>
                                    
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=no8&amp;category=0">房东未评</a></div>
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=ss5611&amp;category=0">取消</a></div>
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=ss10&amp;category=0">过期</a></div>
                                    <div class="m_m_t_l_06">
                                        <a class="m_m_t_l_02" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=ss3&amp;category=0">拒绝</a></div>
                                    
                                </div>
                            </div>
                        </th>
                        <th width="110" style="text-align: center;">
                            操作
                        </th>
                    </tr>
                    
                
                <tr width="100%">
                    <td width="100%" colspan="7">
                        <div class="no_orderbox" style="">
                            
                            <h1 class="no_order">
                                您目前还没有订单</h1>
                            
                            
                        </div>
                    </td>
                </tr>
                </tbody></table>
                
                
            </div>
            <div class="clearfix HistoryOrder" style="display:none;" id="HistoryOrder">
             	<div class="more_msg" id="historyMsg">默认显示近期订单，<a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx?category=1">查看历史订单</a></div>
            </div>                       
            <div class="travel_ls_page">                
                <div class="page" style="float: right;">
                    
        <span class="page_sele">1</span>
    
                </div>
            </div>
        </div>
    </div>


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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="static/room_master_manageOrder/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="static/room_master_manageOrder/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="static/room_master_manageOrder/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="static/room_master_manageOrder/TrustYoutx.gif" width="100" height="35px"></a></li>
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
</script><script src="static/room_master_manageOrder/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="static/room_master_manageOrder/21.gif" width="20" height="20"></a>

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
<script type="text/javascript" src="static/room_master_manageOrder/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="static/room_master_manageOrder/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="static/room_master_manageOrder/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="static/room_master_manageOrder/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="static/room_master_manageOrder/youtx_mi_query.js.下载" type="text/javascript"></script><script src="static/room_master_manageOrder/WebIM.js.下载" type="text/javascript"></script><script src="static/room_master_manageOrder/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->        
    


<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div><div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="static/room_master_manageOrder/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="javascript:void(0)" target="_blank"><img width="95" height="95" src="static/room_master_manageOrder/bservice.jpg"></a><a class="feedbackA2" href="javascript:void(0)" target="_blank">游天下房东服务号<br>微信扫一扫</a></div></div><div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;"><div class="Talk  PosRe" id="Talk"><div class="UserMenu" id="UserBox"><div class="UserMain" id="UserM" style="cursor: move;"><ul class="TabHeader" id="UserNr" style="top:0px;"></ul></div><div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar" style="display:block; top:0px;"></span></div></div><div class="Talk_center"><span class="DownArrow" style="display:none;"><img src="static/room_master_manageOrder/dowearrow.gif" width="16" height="16"></span><ul class="Yichu" style="display:none;"></ul><div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span class="RentName"></span><span class="Chat_min"><img src="static/room_master_manageOrder/SIcon.png" width="25" height="25"></span></div><div class="clear"></div><div id="youtx_ch_webim"></div></div><div class="Talk_right"> </div><div class="HouseRe PosAb" style="display:none;"></div></div></div><div style="display:none;"> <ul id="youtx_none_li"></ul><div id="youtx_none_div"></div> </div><div id="house_webim_s" style="display:none;"></div> <div id="soundContainer" style=" width:10px; height:10px ;"><embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window" src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle" allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></div><div id="OutBox" class="OutBox" style="top: 355px; left: 759.5px;"><div class="OutBoxbg" id="OutBoxbg"></div><a href="http://www.youtx.com/payment/User/MyroomEn/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic" class="OutBoxPic" src="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx" style="top: 0px;"></div><div class="ChatSmall"><div><ul id="ChatSmallUl"><li id="ChatMes" class="ChatMes">短消息（0）</li></ul><div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2><p class="All_mes"><a target="blank" href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a></p><ul class="Mes_main" id="IDUlMes_main"></ul></div></div></div></body></html>