<!DOCTYPE html>
<!-- saved from url=(0044)http://www.youtx.com/room/newfiveplan/324548 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="static/publish_house_5/countpv" width="0" height="0"><script charset="utf-8" src="static/publish_house_5/v.js.下载"></script><script type="text/javascript" async="" src="static/publish_house_5/load.min.js.下载"></script><script src="static/publish_house_5/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="static/publish_house_5/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
    <link href="static/publish_house_5/public.css" rel="stylesheet" type="text/css"> 
    
    <script type="text/javascript">
        var userid1;
        $(function () {
            userid1 = "0";
        });
    </script>
    
    <title>我要出租-设置收款方式-游天下</title>
    <link href="static/publish_house_5/DescriptionenNew.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="static/publish_house_5/province_city.js.下载"></script>
    <script src="static/publish_house_5/popup_layer.js.下载" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        var cityauto = "城市";
        var districtauto = "区县";
        var isHouseChinese = "True";
        var chineseArea = "0";
        var subBranch = "";
        function getcookie(cokname) {
            var cokval;
            var strCookie = document.cookie;
            strCookie.getDomain = 'youtx.com';
            var arrCookie = strCookie.split("; ");
            for (var i = 0; i < arrCookie.length; i++) {
                var arr = arrCookie[i].split("=");
                if (cokname == arr[0]) {
                    cokval = arr[1];
                    break;
                }
            }
            return cokval;
        }
        function getgbchr(username) {
            if (username.length > 0) {
                if (username.indexOf('%') != -1) {
                    username = unescape(username);
                }
            }
            return username;
        }
        function name(str) {
            str = str.replace('|', '');
            str = str.replace(/[\u4E00-\u9FA5]/g, '');
            if (str == "")
                return true;
            return false;
        }
        var zhifubaohuming = "请输入您的真实姓名";
        var zhifubao = "邮箱地址/手机号码";
        $(function () {
            RdChkChange();
            new PopupLayer({ trigger: ".myDivPopup", popupBlk: ".PaymentTan", closeBtn: ".btnclose", useOverlay: true,
                offsets: {
                    x: navigator.userAgent.indexOf("MSIE") > 0 ? (navigator.userAgent.indexOf("MSIE 9.0") > 0 ? -200 : +200) : (navigator.userAgent.indexOf("Chrome") > 0 ? +200 : -200),
                    y: document.documentElement.clientHeight / 10 - 300
                }
            });
            $.each($("input[class^='input_b inputtxt_l']"), function (e, v) {
                $(v).focus(function () {
                    $(v).css("color", "black");
                    $(v).next().hide();
                }).blur(function () {
                    if ($(this).val() == "请输入您的真实姓名" || $(this).val() == "邮箱地址/手机号码" || $(this).val() == "") {
                        $(this).css("color", "#666666");
                    } else {
                        $(this).css("color", "black");
                    }
                });
            });
            $.each($("select"), function (w, t) {
                $(t).click(function () {
                    if ($(t).attr("id") == "strProvince") {
                        $(t).next().next().hide();
                    } else if ($(t).attr("id") == "strSubBranch") {

                    } else {
                        $(t).next().hide();
                    }
                });
            });
            if (getcookie("loginname") == '' || typeof (getcookie("loginname")) == 'undefined' || typeof (getcookie("loginname")) == 'null') {
                $("#youtxlogin").hide();
                $("#youtxloginw").show();
            } else {
                $("#youtxlogin").show();
                $("#youtxloginw").hide();
                var names = getgbchr(getcookie("loginname"));
                if (name(names)) {
                    names = names.replace('|', '');
                    $("#liname").text(names);
                } else {
                    var username = names.split("|");
                    $("#liname").text(username[1] + " " + username[0]);
                }
                $.getJSON("/profile/Ajax/GetFavourite.aspx", { userid: getcookie("new_loginid"), r: Math.random() }, function (json) { if (json.Result != "0") { $("#FavNum").text(json.Result); $("#FavNumLi a").attr("href", "/room/myfavorite/" + getcookie("new_loginid") + "/"); $("#FavNumLi").show(); } else { $("#FavNumLi").hide(); } });
            }
            if (geturlpara() == 1) {
                //debugger;
                $("#addpaycount").show();
                $("#editpay").show();
                $("#paytype").html("编辑收款方式");
                $("#quxiao1").show();
            } else {
                $("#addpaytype").hide();
                $("#quxiao1").hide();
            }
            $("#strBankName").change(function () {
                var Province = $("#strProvince").val();
                var City = $("#strCity").val();
                var bank = $("#strBankName").val();
                if (bank == "") {
                    clearSelect(1);
                } else if (Province != "" && City != "") {
                    strCityChanged(Province, City, bank, "strSubBranch", false, null);
                }
                if (document.getElementById("rd4").checked) {
                    checkBank(bank);
                }
            });
            $("#strProvince").change(function () {
                strProvinceChanged($("#strProvince").val(), "strCity", false, null, true);
            });
            $("#strCity").change(function () {
                strCityChanged($("#strProvince").val(), $("#strCity").val(), $("#strBankName").val(), "strSubBranch", false, null);
            });
            //保存收款方式
            $("#submitAcc").click(function () {
                //支付宝
                if ($("#rd1").attr("checked") == "checked") {
                    dtime = new Date().getTime();
                    $.post("/publish/Ajax/AjaxAddRecAccount.aspx", { chineseArea: chineseArea, ZFBName: $("#zhifubaohuming").val(), ZFBAccount: $("#zhifubao").val(), PayType: $("#rd1").val(), RecAccountID: "", userid: "2600363", houseid: "324548", dtime: dtime }, function (date) {
                        if (date == "True" || date == "true") {
                            $("#complete").submit();
                        }
                        else {
                            alert("收款账户设置失败");
                        }
                    })
                }
            });
            $("#BankAccount").keydown(function () {
                $("v")
            });
            $("#submitAccount").click(function () {
                var bol = false;
                var flag = false;
                var f = false;
                var ws = false;
                if ($("#rd1").attr("checked") == "checked") {
                    checkClick();
                } else if ($("#rd3").attr("checked") == "checked") {
                    var CaifutongName = $("#CaifutongName").val();
                    var CaifutongZhanghao = $("#CaifutongZhanghao").val();
                    if (CaifutongName != "") {
                        if (GetStrLength(CaifutongZhanghao) > 30) {
                            $("#CaifutongNameSpan").text("您的户名太长").show();
                            cft = false;
                            flag = false;
                            return cft;
                        }
                        else {
                            $("#CaifutongNameSpan").hide();
                            cft = true;
                        }
                    } else {
                        $("#CaifutongNameSpan").text("您的户名不能为空").show();
                        cft = false;
                        return false;
                    }
                    if (CaifutongZhanghao != "") {
                        var objExp = new RegExp(/^[a-zA-Z0-9_\-]{1,}@[a-zA-Z0-9_\-]{1,}\.[a-zA-Z0-9_\-.]/g);
                        if (objExp.test(CaifutongZhanghao) == true) {
                            bol = true;
                        }
                        else {
                            CaifutongZhanghao = CaifutongZhanghao.replace(/[0-9a-zA-Z]/g, '');
                            if (CaifutongZhanghao == "") {
                                $("#CaifutongZhanghaoSpan").hide();
                                bol = true;
                            } else {
                                $("#CaifutongZhanghaoSpan").text("您的财付通账号格式不符合规范").show();
                                bol = false;
                            }
                        }
                    } else {
                        $("#CaifutongZhanghaoSpan").text("您的财付通账号不能为空").show();
                        bol = false;
                    }
                }
                else if ($("#rd2").attr("checked") == "checked") {
                    var BankName = $("#strBankName").val();
                    var BankAccount = $("#BankAccount").val();
                    var UserName = $("#UserName").val();
                    var Province = $("#strProvince").val();
                    var City = $("#strCity").val();

                    if (BankName == "") {
                        $("#SpanBankName").text("请选择开户银行").show();
                        bol = false;
                    } else {
                        $("#SpanBankName").hide();
                        bol = true;
                    }
                    if (Province == "" || City == "") {
                        $("#Province_City").text("请选择省份城市").show();
                        ws = false;
                    } else {
                        $("#Province_City").hide();
                        ws = true;
                    }
                    //debugger;
                    if (BankAccount != "") {
                        BankAccount = DelSpace(BankAccount);
                        var objExp = new RegExp(/^\d{12,25}$/g);

                        if (objExp.test(BankAccount) == true) {
                            if (BankAccount == $("#QrBankAccount").val()) {
                                $("#SpanBankAccount").hide();
                                $("#QrSpanBankAccount").hide();
                                flag = true;
                            } else {
                                $("#SpanBankAccount").hide();
                                $("#QrSpanBankAccount").text("您的确认账户和银行账户不相同").show();
                                flag = false;
                            }
                        } else {
                            BankAccount = BankAccount.replace(/[0-9]/g, '');
                            if ("" != BankAccount) {
                                $("#SpanBankAccount").text("您的银行账号格式不符合规范").show();
                                flag = false;
                            } else {
                                $("#SpanBankAccount").text("您的银行账号位数应在12-25位之间").show();
                                flag = false;
                            }
                        }
                    } else {
                        $("#SpanBankAccount").text("您的支付账号不能为空").show();
                        if ($("#QrBankAccount").val() == "") {
                            $("#QrSpanBankAccount").text("确认账号不能为空").show();
                            flag = false;
                        }
                        flag = false;
                    }
                    if (UserName != "") {
                        UserName = DelSpace(UserName);
                        if (!isChinese(UserName)) {
                            $("#SpanUserName").text("请输入您的中文户名").show();
                            f = false;
                        } else if (GetStrLength(UserName) > 50) {
                            $("#SpanUserName").text("您输入的户名过长").show();
                            f = false;
                        } else {
                            $("#SpanUserName").hide();
                            f = true;
                        }
                    } else {
                        $("#SpanUserName").text("不能为空，请输入您的户名").show();
                        f = false;
                    }
                    //debugger;
                    if (bol && flag && f && ws) {
                        var rds = 0;
                        if ($("#rd4").attr("checked") == "checked") {
                            rds = $("#rd4").val();
                        } else if ($("#rd5").attr("checked") == "checked") {
                            rds = $("#rd5").val();
                        }
                        dtime = new Date().getTime();
                        $.post("/publish/Ajax/AjaxAddRecAccount.aspx", { chineseArea: chineseArea, BankName: BankName, Province: Province, City: City, SubBranch: $("#strSubBranch").val(), BankAccount: BankAccount, UserName: UserName, PayType: $("#rd2").val(), IsSelf: rds, RecAccountID: "", userid: "2600363", houseid: "324548", dtime: dtime }, function (date) {
                            if (date == "True" || date == "true") {
                                $("#complete").submit();
                            } else {
                                alert("收款账户设置失败");
                                history.go(-1);
                            }
                        });
                    }
                } else {
                    document.getElementById("addpaycount").style.display = "";
                    document.getElementById("editpay").style.display = "";
                    alert("请选择您的收款方式！");
                }
                return bol;
            });
            //paypal账号保存动作
            var doubleClick = true;
            $("#submitPaypal").click(function () {
                if (doubleClick == true) {
                    doubleClick = false;
                    var bol = true;
                    //各种验证
                    var realNamePayPal = DelSpace($("#realNamePayPal").val());
                    if (realNamePayPal == "") {
                        bol = false;
                        $("#errorRealNamePayPal").html("请填写姓名！").show();
                    } else if (GetStrLength(realNamePayPal) > 50) {
                        bol = false;
                        $("#errorRealNamePayPal").html("姓名长度不能超过50字节！").show();
                    }
                    var accountPayPal = DelSpace($("#accountPayPal").val());
                    //对电子邮件的验证
                    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                    if (accountPayPal == "") {
                        bol = false;
                        $("#errorAccountPayPal").html("请填写paypal账户").show();
                    } else if (!myreg.test(accountPayPal)) {/////////////////////////////////////////////////////////////////////////
                        bol = false;
                        $("#errorAccountPayPal").html("您的paypal账户不存在/已被他人填写过").show();
                    }
                    //选择的国家ID
                    var countryId = $("#ddlCountry").val();

                    //accountPayPal
                    if (bol) {
                        dtime = new Date().getTime();
                        $.post("/publish/Ajax/AjaxAddRecAccount.aspx", {
                            chineseArea: chineseArea,
                            userid: "2600363", 
                            houseid: "324548", 
                            CountryId: countryId,
                            RealName: realNamePayPal,
                            PayPalAccount: accountPayPal,
                            RecAccountID: "",
                            dtime: dtime
                        }, function (data) {
                            if (data == "True" || data == "true") {
                                $("#complete").submit();
                                doubleClick = true;
                            } else {
                                alert("收款账户设置失败");
                                history.go(-1);
                                doubleClick = true;
                            }
                        });
                    } else {
                        doubleClick = true;
                    }
                }
            });
            //paypal文本框获取焦点隐藏错误提示
            HideError("realNamePayPal", "errorRealNamePayPal");
            HideError("accountPayPal", "errorAccountPayPal");
        });
        //获取焦点隐藏错误提示
        function HideError(objId, errorId) {
            $("#" + objId).focusin(function () {
                $("#" + errorId).hide();
            })
        }
        function edit() {
            $("#addpaycount").show();
            $("#editpay").show();
        }
        function quxiao() {
            $("#addpaycount").hide();
            $("#editpay").hide();
        }
        function del(v) {
            if (confirm("确定要删除此收款帐号吗？删除后将不能恢复")) {
                var vform = document.getElementById("vform");
                vform.action = "/profile/User/Account/RecAccount.aspx";
                $("#delrecid").val(v);
                vform.submit();
            } else {
                return false;
            }
        }
        //判断字节长度
        function GetStrLength(str) {
            var reg = /[\u4E00-\u9FA5]/g;
            var matchs = str.match(reg);
            if (matchs != null) {
                return (matchs + "").split(',').length + str.length;
            }
            return str.length;
        }
        function SpanBankClick() {
            $("#SpanBank").hide();
        }
        function SpanZFBClick() {
            $("#SpanZFB").hide();
        }
        function addpay() {
            $("#addpaycount").show();
            $("#editpay").show();
            $("#quxiao1").show();
        }
        //读取URL参数
        function geturlpara() {
            if (document.URL.indexOf("recaccount") < 0) {
                return 0;
            } else {
                return 1;
            }
        }

        function DefaultZhifubaohuming() {
            if ($("#zhifubaohuming").val() == "") {
                $("#zhifubaohuming").val(zhifubaohuming);
            }
        }
        function DefaultZhifubao() {
            if ($("#zhifubao").val() == "") {
                $("#zhifubao").val(zhifubao);
            }
        }

        function autoLength() {
            $("#strSubBranch").css("width", "auto");
        }
        //RD改变触发事件
        function RdChkChange() {
            $.each($("input[class^='input_b inputtxt_l']"), function (e, v) {
                $(v).next().hide();
            });
            $(".Newerror").hide();
            if (document.getElementById("rd2").checked == true) {
                setDivDisable(1);
                $("#SpanBank").text("亲爱的用户，银行转账很慢，建议使用支付宝哦！").show();
                $("#SpanZFB").hide();
                //<!--2012-8-6修改-->
                $(".SpanZFB02").show();
                $(".SpanZFB01").hide();
                //<!--2012-8-6修改-结束-->

                if ($("#strBankName").val() == "") {
                    $("#liSubBranch").hide();
                }
            } else {
                setDivDisable(2);
                $("#SpanZFB").text("支付宝即时到账且免费哦！").show();
                $("#SpanBank").hide();

                //<!--2012-8-6修改-->
                $(".SpanZFB01").show();
                $(".SpanZFB02").hide();
                //<!--2012-8-6修改-结束-->

                $("#SpanZhifubaoName").hide();
                $("#SpanZhifubao").hide();

                $("#MessZhifubaoName").show();
                $("#MessZhifubao").show();
            }
        }
        //RD1改变触发事件
        function Rd1ChkChange() {
            $.each($("input[class^='input_b inputtxt_l']"), function (e, v) {
                $(v).next().hide();
            });
            $(".Newerror").hide();
            var bankName = $("#strBankName").val();

            if (document.getElementById("rd4").checked) {
                checkBank(bankName);
            } else {
                $("#liSubBranch").show();
                var Province = $("#strProvince").val();
                strCityChanged($("#strProvince").val(), $("#strCity").val(), $("#strBankName").val(), "strSubBranch", true, subBranch);
            }
        }
        function checkBank(bankName) {
            if (NeedZhihang(bankName)) {
                $("#liSubBranch").show();
            } else {
                $("#liSubBranch").hide();
                $("#strSubBranch").find('option[value]').remove();
                var temp = $('<option value="">请选择开户支行</option>');
                $("#strSubBranch").append(temp);
            }
        }
        function setDivDisable(rd) {
            if (rd == "1") {
                $("#ulZFB").hide();
                $("#ulYHK").show();
                $(".li_bottom").addClass("UlBorder");
                $(".li_input").removeClass("UlBorder");
            } else {
                $("#ulZFB").show();
                $("#ulYHK").hide();
                $(".li_input").addClass("UlBorder");
                $(".li_bottom").removeClass("UlBorder");
            }
        }
        //去除首尾空格
        function DelSpace(str) {
            var str1 = str.replace(/\s+/g, "");
            return str1;
        }
        /* 
        中文判断函数
        返回true表示是符合条件，返回false表示不符合 
        */
        function isChinese(str) {
            str = str.replace(/[\u4E00-\u9FA5]/g, '');
            if ("" != str) {
                return false;
            }
            return true;
        }
        function checkClick() {
            var bolzfb = false;
            var bolzfbhm = false;
            var objExp = new RegExp(/\s/g);

            if ($("#rd1").attr("checked") == "checked") {
                var zfbName = $("#zhifubaohuming").val();
                var zfbAccount = $("#zhifubao").val();

                if (zfbName != "" && zfbName != zhifubaohuming) {
                    var zfbNameNoSpace = DelSpace(zfbName);  //允许用户在最前和最后输入空格，保存时自动去除

                    if (!isChinese(zfbNameNoSpace)) {  //必须为中文
                        $("#SpanZhifubaoName").hide();
                        $("#MessZhifubaoName").show();
                        bolzfbhm = true;
                    } else if (GetStrLength(zfbNameNoSpace) > 50) {   //中文不能超过25个字，超过25个字会超过数据库字段长度
                        $("#SpanZhifubaoName").text("您的户名太长").show();
                        bolzfbhm = false;
                    } else if (GetStrLength(zfbNameNoSpace) <= 2) {   //不能为单个中文
                        $("#SpanZhifubaoName").text("您的户名太短").show();
                        // $("#MessZhifubaoName").hide();
                        bolzfbhm = false;
                    } else if (objExp.test(zfbName)) {
                        $("#SpanZhifubaoName").text("您的户名不能存在空格").show();
                        // $("#MessZhifubaoName").hide();
                        bolzfbhm = false;
                    } else {
                        $("#SpanZhifubaoName").hide();
                        // $("#MessZhifubaoName").show();
                        bolzfbhm = true;
                    }
                } else {
                    $("#SpanZhifubaoName").text("您的户名不能为空").show();
                    //$("#MessZhifubaoName").hide();
                    bolzfbhm = false;
                }

                if (zfbAccount != "" && zfbAccount != zhifubao) {
                    zfbAccount = DelSpace(zfbAccount); //允许用户在最前和最后输入空格，保存时自动去除
                    //判断邮箱格式
                    var objExp = new RegExp(/^[a-zA-Z0-9_\-]{1,}@[a-zA-Z0-9_\-]{1,}\.[a-zA-Z0-9_\-.]/g);
                    if (objExp.test(zfbAccount) == true) {
                        if (GetStrLength(zfbAccount) > 50) {
                            $("#SpanZhifubao").text("您的支付宝账号过长").show();
                            // $("#MessZhifubao").hide();
                            bolzfb = false;
                        }
                        else {
                            $("#SpanZhifubao").hide();
                            // $("#MessZhifubao").show();
                            bolzfb = true;
                        }
                    } else {   //不是邮箱格式时，必须为11位手机号码
                        var objExp = new RegExp(/^\d{11}$/g);
                        if (objExp.test(zfbAccount)) {
                            $("#SpanZhifubao").hide();
                            //$("#MessZhifubao").show();
                            bolzfb = true;
                        } else {
                            zfbAccount = zfbAccount.replace(/[0-9]/g, '');
                            if ("" != zfbAccount) {
                                $("#SpanZhifubao").text("您的支付宝账号格式不符合规范").show();
                                //  $("#MessZhifubao").hide();
                                bolzfb = false;
                            } else {
                                $("#SpanZhifubao").text("您的支付宝账号应为11位手机号码").show();
                                // $("#MessZhifubao").hide();
                                bolzfb = false;
                            }
                        }
                    }
                } else {  //不能为空
                    $("#SpanZhifubao").text("您的支付宝账号不能为空").show();
                    // $("#MessZhifubao").hide();
                    bolzfb = false;
                }
                if (!(bolzfbhm && bolzfb)) {
                    return false;
                }

                $(".myDivPopup").click();
                $("#SpanZFB").hide();
                $("#divWait").show();
                $("#divCheckSucceed").hide();
                $("#divCheckFailed").hide();

                //checkZFB(zfbAccount, zfbName);
		$("#divWait").hide();
                $("#divCheckSucceed").show();
                $("#divCheckFailed").hide();
                $("#SpanCheckFailed").hide();
            } else {
                document.getElementById("addpaycount").style.display = "";
                document.getElementById("editpay").style.display = "";
                alert("请选择您的收款方式！");
            }
        }
        function checkZFB(account, username) {
            $.ajax({
                url: "/publish/Ajax/AjaxCheckZFB.aspx",
                data: "Account=" + escape(account) + "&UserName=" + escape(username),
                type: "GET",
                success: function (a, b, c) {
                    var result = a;
                    if (result != null) {

                        if (result == "0") {
                            $("#divWait").hide();
                            $("#divCheckSucceed").show();
                            $("#divCheckFailed").hide();
                            $("#SpanCheckFailed").hide();
                        } else if (result == "2") {
                            $("#divWait").hide();
                            $("#divCheckSucceed").hide();
                            $("#divCheckFailed").show();
                            $("#SpanCheckFailed").text("支付宝姓名和账号不匹配").show();
                            return false;
                        } else {
                            if (result == "USER_NOT_EXIST") {
                                $("#divWait").hide();
                                $("#divCheckSucceed").hide();
                                $("#divCheckFailed").show();
                                $("#SpanCheckFailed").text("该支付宝账户不存在").show();
                                return false;
                            }
                        }
                    }
                },
                error: function (a, b, c) { alert("错误！"); return false; }
            });
        }
        function strProvinceChanged(province, id, isInit, city, isChange) {
            if (province == "") {
                $("#" + id).find('option').remove();
                var temp = $('<option value="">请选择城市</option>');
                $("#strCity").append(temp);
            } else {
                $("#" + id).attr("disabled", "disabled");
                $.ajax({
                    url: "/publish/Ajax/AjaxRecAccount.aspx",
                    data: "province=" + escape(province) + "&getType=1",
                    type: "GET",
                    success: function (a, b, c) {
                        var result = eval(a);
                        $("#" + id).find('option').remove();
                        if (result != null) {
                            var temp = null;
                            for (var i = 0; i < result.length; i++) {
                                temp = $('<option value="' + result[i].CityName + '">' + result[i].CityName + '</option>');
                                $("#" + id).append(temp);
                            }
                            if (isInit) {
                                if (city != "") {
                                    $("#" + id).val(city);
                                }
                            }

                            if (isChange) {
                                if ($("#strBankName").val() == "") {
                                    clearSelect(1);
                                } else {
                                    var Province = $("#strProvince").val();
                                    var City = result[0].CityName;
                                    var BankName = $("#strBankName").val();
                                    strCityChanged(Province, City, BankName, "strSubBranch", false, null);
                                }
                            }
                        }
                    },
                    error: function (a, b, c) { alert("未能成功获得该省份下的城市列表！"); }
                });
                $("#" + id).prop("disabled", false);
            }
        }
        function strCityChanged(province, city, bank, id, isInit, subBranch) {
            var maxlength = 0;
            var currentlength;
            if (province == "" || bank == "") {
                $("#" + id).find('option').remove();
                var temp = $('<option value="">请选择开户支行</option>');
                $("#strSubBranch").append(temp);
            } else {
                $("#" + id).attr("disabled", "disabled");
                $.ajax({
                    url: "/publish/Ajax/AjaxRecAccount.aspx",
                    data: "province=" + escape(province) + "&city=" + escape(city) + "&bank=" + escape(bank) + "&getType=2",
                    type: "GET",
                    success: function (a, b, c) {
                        var result = eval(a);
                        $("#" + id).find('option').remove();
                        if (result != null) {
                            var temp = null;
                            for (var i = 0; i < result.length; i++) {
                                temp = $('<option value="' + result[i].SubBranchName + '">' + result[i].SubBranchName + '</option>');
                                $("#" + id).append(temp);

                                currentlength = GetStrLength(result[i].SubBranchName)
                                if (currentlength > maxlength) {
                                    maxlength = currentlength;
                                }
                            }

                            if (maxlength > 30) {
                                $("#strSubBranch").css("width", "auto");
                            } else {
                                $("#strSubBranch").css("width", "208px");
                            }

                            $("#" + id).val(result[0].SubBranchName);

                            if (isInit) {
                                $("#" + id).val(subBranch);
                            }
                        } else {
                            clearSelect(2);
                        }
                    },
                    error: function (a, b, c) { alert("未能成功获得相应的支行列表！"); }
                });
                $("#" + id).prop("disabled", false);
            }
        }
        function clearSelect(type) {
            $("#strSubBranch").find('option[value!=""]').remove();
            if (type == "1") {
                var temp = $('<option value="">请选择开户支行</option>');
                $("#strSubBranch").append(temp);
            }
            else if (type == "2") {
                var temp = $('<option value="">该地区无相应支行</option>');
                $("#strSubBranch").append(temp);
                document.getElementById("strSubBranch").disabled = true;
            }
        }
        $(document).ready(function () {
            DefaultZhifubaohuming();
            DefaultZhifubao();
            $("#zhifubaohuming").focus(function () {
                if ($("#zhifubaohuming").val() == zhifubaohuming) {
                    $("#zhifubaohuming").val("");
                }
            });
            $("#zhifubao").focus(function () {
                if ($("#zhifubao").val() == zhifubao) {
                    $("#zhifubao").val("");
                }
            });
            $("#zhifubaohuming").blur(function () {
                DefaultZhifubaohuming();
            });
            $("#zhifubao").blur(function () {
                DefaultZhifubao();
            });
            //支付方式初始化
            SetPayWay();
            $("#ddlCountry").change(function () {
                SetPayWay();
            });

            //
            $("#radioPaypal").click(function () {
                RadioBankClick(false);
            });
            $("#radioBank").click(function () {
                RadioBankClick(true);
            });
            RadioBankClick(false);
            //单选按钮“台湾-国际支付”单击事件
            $("#radioTaiwan1").click(function () {
                RadioTaiwanClick(true);
            });
            $("#radioTaiwan2").click(function () {
                RadioTaiwanClick(false);
            });
            RadioTaiwanClick(true);
            $("#ddlChineseArea").change(function () {
                if ($("#ddlChineseArea").val() == "4") {
                    AbroadPayShow();
                    $("#radioPaypal").attr("checked", "checked");
                    RadioBankClick(false);
                } else {
                    ChinesePayShow();
                }
                chineseArea = $("#ddlChineseArea").val();
            });
            //“地区”下拉菜单选中初始化
            InitDdlChineseArea();
            //国际支付提交按钮单击事件
            var doubleClick = true;
            $("#SubmitInternationalPay").click(function () {
                if (doubleClick == true) {
                    doubleClick = false;
                    var bol = true;
                    if ($("#radioTaiwan1").attr("checked") == "checked") {//国际支付
                        //各种验证
                        var bankName = $.trim($("#txtBankName1").val());
                        var bankAddress = $.trim($("#txtBankAddress1").val());
                        var receiver = $.trim($("#txtReceiver1").val());
                        var bankAccount = $.trim($("#txtBankAccount").val());
                        var bankCode = $.trim($("#txtBankCode").val());
                        var swiftBic = $.trim($("#txtSwiftBic1").val());
                        var additionalInfo = $.trim($("#txtAdditionalInfo1").val());
                        if (bankName == "" || receiver == "" || bankAccount == "" || swiftBic == "") { bol = false; alert("请填写带'*'的必填项"); }
                        //                        if (bankName == "") { bol = false; alert("Please complete the fields marked with '*'"); doubleClick = true; return; }
                        //                        if (receiver == "") { bol = false; alert("Please complete the fields marked with '*'"); doubleClick = true; return; }
                        //                        if (bankAccount == "") { bol = false; alert("Please complete the fields marked with '*'"); doubleClick = true; return; }
                        //                        if (swiftBic == "") { bol = false; alert("Please complete the fields marked with '*'"); doubleClick = true; return; }

                        if (GetStrLength(bankName) > 50 ||
                        GetStrLength(bankAddress) > 50 ||
                        GetStrLength(receiver) > 50 ||
                        GetStrLength(bankAccount) > 50 ||
                        GetStrLength(bankCode) > 50 ||
                        GetStrLength(swiftBic) > 50 ||
                        GetStrLength(additionalInfo) > 50
                        ) {
                            bol = false;
                            alert("填写的内容长度不能超过50个字符");
                        }
                        //                        if (GetStrLength(bankName) > 50) { bol = false; alert("银行名称长度不能超过50个字符！"); doubleClick = true; return; }
                        //                        if (GetStrLength(bankAddress) > 50) { bol = false; alert("银行地址长度不能超过50个字符！"); doubleClick = true; return; }
                        //                        if (GetStrLength(receiver) > 50) { bol = false; alert("收款人长度不能超过50个字符！"); doubleClick = true; return; }
                        //                        if (GetStrLength(bankAccount) > 50) { bol = false; alert("银行账号长度不能超过50个字符！"); doubleClick = true; return; }
                        //                        if (GetStrLength(bankCode) > 50) { bol = false; alert("银行代码长度不能超过50个字符！"); doubleClick = true; return; }
                        //                        if (GetStrLength(swiftBic) > 50) { bol = false; alert("SWIFT BIC长度不能超过50个字符！"); doubleClick = true; return; }
                        //                        if (GetStrLength(additionalInfo) > 50) { bol = false; alert("附加信息长度不能超过50个字符！"); doubleClick = true; return; }
                        if (bol) {
                            var dtime = new Date().getTime();
                            $.post("/publish/Ajax/AjaxAddRecAccount.aspx", {
                                userid: "2600363",
                                houseid: "324548",
                                interPayFirst: "interPayFirst",
                                countryId: $("#ddlCountry").val(),
                                chineseArea: chineseArea,
                                bankName: bankName,
                                bankAddress: bankAddress,
                                receiver: receiver,
                                bankAccount: bankAccount,
                                bankCode: bankCode,
                                swiftBic: swiftBic,
                                additionalInfo: additionalInfo,
                                dtime: dtime
                            }, function (data) {
                                if (data == "True" || data == "true") {
                                    $("#complete").submit();
                                    doubleClick = true;
                                } else {
                                    alert("保存失败！");
                                    //history.go(-1);
                                    doubleClick = true;
                                }
                            });
                        } else {
                            doubleClick = true;
                        }
                    } else if ($("#radioTaiwan2").attr("checked") == "checked") { //
                        //各种验证
                        var bankName = $.trim($("#txtBankName2").val());
                        var bankAddress = $.trim($("#txtBankAddress2").val());
                        var receiver = $.trim($("#txtReceiver2").val());
                        var iban = $.trim($("#txtIban").val())
                        var swiftBic = $.trim($("#txtSwitfBic2").val());
                        var additionalInfo = $.trim($("#txtAdditionalInfo2").val());

                        if (bankName == "" || receiver == "" || iban == "" || swiftBic == "") {
                            bol = false; alert("请填写待'*'的必填项");
                        }
                        //                        if (bankName == "") { bol = false; alert("Please complete the fields marked with '*'"); doubleClick = true; return; }
                        //                        if (receiver == "") { bol = false; alert("Please complete the fields marked with '*'"); doubleClick = true; return; }
                        //                        if (iban == "") { bol = false; alert("Please complete the fields marked with '*'"); doubleClick = true; return; }
                        //                        if (swiftBic == "") { bol = false; alert("Please complete the fields marked with '*'"); doubleClick = true; return; }

                        if (GetStrLength(bankName) > 50 ||
                        GetStrLength(bankAddress) > 50 ||
                        GetStrLength(receiver) > 50 ||
                        GetStrLength(iban) > 50 ||
                        GetStrLength(swiftBic) > 50 ||
                        GetStrLength(additionalInfo) > 50) {
                            bol = false; alert("填写的内容长度不能超过50个字符");
                        }
                        //                        if (GetStrLength(bankName) > 50) { bol = false; alert("Please enter 1-50 characters"); doubleClick = true; return; }
                        //                        if (GetStrLength(bankAddress) > 50) { bol = false; alert("Please enter 1-50 characters"); doubleClick = true; return; }
                        //                        if (GetStrLength(receiver) > 50) { bol = false; alert("Please enter 1-50 characters"); doubleClick = true; return; }
                        //                        if (GetStrLength(iban) > 50) { bol = false; alert("Please enter 1-50 characters"); doubleClick = true; return; }
                        //                        if (GetStrLength(swiftBic) > 50) { bol = false; alert("Please enter 1-50 characters"); doubleClick = true; return; }
                        //                        if (GetStrLength(additionalInfo) > 50) { bol = false; alert("Please enter 1-50 characters"); doubleClick = true; return; }
                        if (bol) {
                            var dtime = new Date().getTime();
                            $.post("/publish/Ajax/AjaxAddRecAccount.aspx", {
                                userid: "2600363",
                                houseid: "324548",
                                interPaySecond: "interPaySecond",
                                countryId: $("#ddlCountry").val(),
                                chineseArea: chineseArea,
                                bankName: bankName,
                                bankAddress: bankAddress,
                                receiver: receiver,
                                iban: iban,
                                swiftBic: swiftBic,
                                additionalInfo: additionalInfo,
                                dtime: dtime
                            }, function (data) {
                                if (data == "True" || data == "true") {
                                    $("#complete").submit();
                                    doubleClick = true;
                                } else {
                                    alert("保存失败！");
                                    history.go(-1);
                                    doubleClick = true;
                                }
                            });
                        } else {
                            doubleClick = true;
                        }
                    }
                }
            });
        });
        //切换到Paypal或国际支付
        function RadioBankClick(isBank) {
            if (isBank) {
                $("#ulPaypal").hide();
                $("#liBank1").show();
                $("#liBank2").show();
                $("#divBankTransfer").addClass("UlBorder");
                $("#divPayPal").removeClass("UlBorder");
            } else {
                $("#ulPaypal").show();
                $("#liBank1").hide();
                $("#liBank2").hide();
                $("#divBankTransfer").removeClass("UlBorder");
                $("#divPayPal").addClass("UlBorder");
            }
        }
        //两个“台湾-国际支付”单选按钮点击事件
        function RadioTaiwanClick(isFirst) {
            if (isFirst) {
                $("#liTaiwan1").show();
                $("#liTaiwan2").hide();
            } else {
                $("#liTaiwan1").hide();
                $("#liTaiwan2").show();
            }
        }
        //国内、国外支付方式显示隐藏
        function SetPayWay() {
            if ($("#ddlCountry").val() == "44") {
                ChinesePayShow();
                $("#divChineseArea").show();
                $("#ddlChineseArea").val("1");
                chineseArea = $("#ddlChineseArea").val();
                $("#spanDistrict1").text("台湾"); //置为台湾
                $("#spanDistrict2").text("台湾"); //置为台湾
            } else {
                AbroadPayShow();
                chineseArea = "0";
                $("#divChineseArea").hide();
                $("#spanDistrict1").text($("option[value='" + $("#ddlCountry").val() + "']").text()); //置为别的国家
                $("#spanDistrict2").text($("option[value='" + $("#ddlCountry").val() + "']").text()); //置为别的国家
            }
        }

        //国外的支付方式显示出来
        function ChinesePayShow() {
            $("#ulForEn").hide(); //
            $("#ulForCn").show();
            $(".floatl H6").hide();
            $(".payout_country_select .card").css("margin-top", "30px");
        }
        //国外的支付方式显示出来
        function AbroadPayShow() {
            $("#ulForCn").hide(); //
            $("#ulForEn").show();
            $(".floatl H6").show();
            $(".payout_country_select .card").css("margin-top", "0px");
        }
        function InitDdlChineseArea() {
            var provinceId = "2";
            switch (provinceId) {
                case "32":
                    $("#ddlChineseArea").val("2");
                    break;
                case "33":
                    $("#ddlChineseArea").val("3");
                    break;
                case "34":
                    $("#ddlChineseArea").val("4");

//                    if ($("#ddlChineseArea").val() == "4") {
//                        AbroadPayShow();
//                        $("#radioPaypal").attr("checked", "checked");
//                        RadioBankClick(false);
//                    } else {
//                        ChinesePayShow();
                    //                    }
                    AbroadPayShow();
                    $("#radioPaypal").attr("checked", "checked");
                    RadioBankClick(false);
                    chineseArea = $("#ddlChineseArea").val();

                    break;
                default:
            }
        }
    </script>


    
   
<script src="static/publish_house_5/saved_resource"></script><link rel="stylesheet" type="text/css" href="static/publish_house_5/Youtx_WebIM.css"></head>
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
<script type="text/javascript" src="static/publish_house_5/Login_Cookie.js.下载"></script>
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
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="static/publish_house_5/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/publish_house_5/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
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
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/publish_house_5/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/publish_house_5/ewmBNew.jpg" width="102" height="102"></dd>
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
                   <div id="FavNumLi" style="display: none;"><a target="_self" href="http://www.youtx.com/payment/User/MyCollection/Collection.aspx" title="查看我收藏的房间" rel="nofollow">收藏夹</a></div>
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
            <img src="static/publish_house_5/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/publish_house_5/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/publish_house_5/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/publish_house_5/ewmBNew.jpg" width="102" height="102"></dd>
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
    <div class="Description">
        <div class="ReleaseProcess">
            <h1>发布您的房间 <span>简单发布，轻松出租，让您的房子每天帮您赚钱</span></h1>
            <a href="http://www.youtx.com/help/Manage/" target="_blank" class="ProcessDetail">了解详情&nbsp;&gt;&gt;</a>
        </div>
        <div class="DescriptionContent">
            <h3><img id="daohang" src="static/publish_house_5/publishPlan505_.jpg" alt=""></h3>
            
    <div class="RoomPosition">
        收款方式</div>
    <!--收款方式list end-->
    <div class="payout_country_select" id="addpaycount">
        <!--choise county begin-->
        <div class="InCountry">
            所在国家：
            <select id="ddlCountry" class="CountrySelect">
                <option value="2">阿尔巴尼亚</option><option value="3">阿尔及利亚</option><option value="1">阿富汗</option><option value="10">阿根廷</option><option value="221">阿拉伯联合酋长国</option><option value="205">阿拉伯叙利亚共和国</option><option value="12">阿鲁巴岛</option><option value="159">阿曼</option><option value="15">阿塞拜疆</option><option value="62">埃及</option><option value="67">埃塞俄比亚</option><option value="101">爱尔兰</option><option value="66">爱沙尼亚</option><option value="5">安道尔</option><option value="6">安哥拉</option><option value="7">安圭拉岛</option><option value="9">安提瓜和巴布达</option><option value="14">奥地利 </option><option value="13">澳大利亚</option><option value="19">巴巴多斯</option><option value="163">巴布亚新几内亚</option><option value="16">巴哈马群岛</option><option value="160">巴基斯坦</option><option value="164">巴拉圭</option><option value="17">巴林岛</option><option value="162">巴拿马</option><option value="30">巴西</option><option value="20">白俄罗斯</option><option value="24">百慕大群岛</option><option value="33">保加利亚</option><option value="157">北马里亚诺群岛</option><option value="23">贝宁</option><option value="21">比利时</option><option value="96">冰岛</option><option value="170">波多黎各</option><option value="168">波兰</option><option value="27">波斯尼亚</option><option value="26">玻利维亚</option><option value="22">伯利兹</option><option value="28">博茨瓦纳</option><option value="25">不丹</option><option value="34">布基纳法索</option><option value="35">布隆迪</option><option value="29">布维岛</option><option value="64">赤道几内亚</option><option value="57">丹麦</option><option value="79">德国</option><option value="210">多哥</option><option value="59">多米尼加岛</option><option value="60">多米尼加共和国</option><option value="174">俄罗斯联邦</option><option value="61">厄瓜多尔</option><option value="65">厄立特里亚</option><option value="72">法国</option><option value="69">法罗群岛</option><option value="74">法属波利尼西亚</option><option value="73">法属圭亚那</option><option value="75">法属南部领地</option><option value="227">梵蒂冈</option><option value="166">菲律宾</option><option value="70">斐济</option><option value="71">芬兰</option><option value="39">佛得角</option><option value="68">福克兰群岛</option><option value="77">冈比亚</option><option value="49">刚果</option><option value="47">哥伦比亚</option><option value="51">哥斯达黎加</option><option value="84">格林纳达</option><option value="83">格陵兰</option><option value="78">格鲁吉亚</option><option value="54">古巴</option><option value="85">瓜德罗普岛</option><option value="86">关岛</option><option value="90">圭亚那</option><option value="107">哈萨克斯坦</option><option value="91">海地</option><option value="194">韩国</option><option value="148">荷兰</option><option value="149">荷属安的列斯</option><option value="92">赫德岛和麦克唐纳群岛</option><option value="140">黑山共和国</option><option value="93">洪都拉斯</option><option value="109">基里巴斯</option><option value="58">吉布提</option><option value="112">吉尔吉斯斯坦</option><option value="88">几内亚</option><option value="89">几内亚比绍</option><option value="38">加拿大</option><option value="80">加纳</option><option value="76">加蓬</option><option value="36">柬埔寨</option><option value="56">捷克共和国</option><option value="236">津巴布韦</option><option value="150">喀里多尼亚</option><option value="37">喀麦隆</option><option value="171">卡塔尔</option><option value="40">开曼群岛</option><option value="46">科科斯群岛</option><option value="48">科摩罗</option><option value="110">科索沃</option><option value="52">科特迪亚</option><option value="111">科威特</option><option value="53">克罗地亚</option><option value="108">肯尼亚</option><option value="50">库克群岛</option><option value="114">拉脱维亚</option><option value="116">莱索托</option><option value="113">老挝</option><option value="115">黎巴嫩</option><option value="120">立陶宛</option><option value="117">利比里亚</option><option value="118">利比亚</option><option value="119">列支敦士登</option><option value="172">留尼旺岛</option><option value="121">卢森堡</option><option value="175">卢旺达</option><option value="173">罗马尼亚</option><option value="124">马达加斯加岛</option><option value="127">马尔代夫</option><option value="125">马拉维</option><option value="126">马来西亚</option><option value="128">马里</option><option value="132">马里塔尼亚</option><option value="123">马其顿</option><option value="129">马其他</option><option value="130">马绍尔群岛</option><option value="131">马提尼克</option><option value="134">马约特岛</option><option value="133">毛里求斯</option><option value="223">美国</option><option value="231">美属维京群岛</option><option value="139">蒙古</option><option value="141">蒙特色拉特岛</option><option value="18">孟加拉国</option><option value="165">秘鲁</option><option value="136">密克罗尼西亚</option><option value="144">缅甸</option><option value="137">摩尔多瓦</option><option value="142">摩洛哥</option><option value="138">摩纳哥</option><option value="143">莫桑比克</option><option value="135">墨西哥</option><option value="145">纳米比亚</option><option value="193">南非</option><option value="8">南极洲</option><option value="146">瑙鲁</option><option value="147">尼泊尔</option><option value="152">尼加拉瓜</option><option value="153">尼日尔</option><option value="154">尼日利亚</option><option value="155">纽埃</option><option value="158">挪威</option><option value="156">诺福克岛</option><option value="161">帕劳</option><option value="167">皮特克恩岛</option><option value="169">葡萄牙</option><option value="105">日本</option><option value="203">瑞典</option><option value="204">瑞士</option><option value="63">萨尔瓦多</option><option value="180">萨摩亚</option><option value="4">萨摩亚群岛</option><option value="185">塞尔维亚</option><option value="187">塞拉利昂</option><option value="184">塞内加尔</option><option value="55">塞浦路斯</option><option value="186">塞舌尔</option><option value="183">沙特阿拉伯</option><option value="176">圣巴托洛缪岛</option><option value="45">圣诞岛</option><option value="182">圣多美与普林希比共和国</option><option value="197">圣赫勒拿岛</option><option value="177">圣基茨和尼维斯</option><option value="178">圣卢西亚岛</option><option value="181">圣马力诺</option><option value="198">圣皮埃尔和密克隆岛</option><option value="179">圣文森特及格林纳丁斯</option><option value="196">斯里兰卡</option><option value="189">斯洛伐克</option><option value="190">斯洛文尼亚</option><option value="201">斯瓦尔巴特和扬马延岛</option><option value="202">斯威士兰</option><option value="199">苏丹</option><option value="200">苏里南</option><option value="191">所罗门群岛</option><option value="192">索马里</option><option value="207">塔吉克斯坦</option><option value="209">泰国</option><option value="208">坦桑尼亚</option><option value="212">汤加</option><option value="217">特克斯和凯科斯群岛</option><option value="213">特立尼达和多巴哥</option><option value="214">突尼斯</option><option value="218">图瓦卢</option><option value="215">土耳其</option><option value="216">土库曼斯坦</option><option value="211">托克劳群岛</option><option value="232">瓦利斯群岛和富图纳群岛</option><option value="226">瓦努阿图</option><option value="87">危地马拉</option><option value="228">委内瑞拉</option><option value="32">文莱达鲁萨兰国</option><option value="219">乌干达</option><option value="220">乌克兰</option><option value="224">乌拉圭</option><option value="225">乌兹别克斯坦</option><option value="195">西班牙</option><option value="233">西撒哈拉</option><option value="82">希腊</option><option value="188">新加坡</option><option value="151">新西兰</option><option value="95">匈牙利</option><option value="104">牙买加</option><option value="11">亚美尼亚</option><option value="234">也门</option><option value="100">伊拉克</option><option value="99">伊朗</option><option value="102">以色列</option><option value="103">意大利</option><option value="97">印度</option><option value="98">印度尼西亚</option><option value="222">英国</option><option value="230">英属维京群岛</option><option value="31">英属印度洋领地</option><option value="106">约旦</option><option value="229">越南</option><option value="235">赞比亚</option><option value="42">乍得</option><option value="81">直布罗陀</option><option value="43">智利</option><option value="41">中非共和国</option><option selected="selected" value="44">中国</option>
            </select>&nbsp;
        </div>
        <div id="divChineseArea" class="InCountry">
              <span style="width:60px;display:inline-block;text-align:right">地区：</span>
              <select id="ddlChineseArea" style="width:170px;" class="CountrySelect">
                     <option value="1">中国大陆</option>
                     <option value="2">香港</option>
                     <option value="3">澳门</option>
                     <option value="4">台湾</option>
              </select>
        </div>
        <!--编辑收款方式 begin/user/Account/RecAccount.aspx-->
        <div id="editpay">
            <form action="http://www.youtx.com/room/newcomplete/324548" method="post" id="complete">
            </form>
            <div class="payout_country_select">
                <div class="floatl">
                    <div class="card" style="margin-top: 30px;">
                        <div id="ulForCn">
                        <!--2012-8-6修改--> <!--修改ul类名   li添加  class="positionaaa、增加div SpanZFB01、SpanZFB02--> 
                            <ul>
                                <li class="positionaaa" style="margin-bottom: 0;">
                                 <span id="SpanZFB" style="" class="account_note_zfb" onclick="SpanZFBClick()">支付宝即时到账且免费哦！</span>
                                  <div class="SpanZFB01" style=""></div>   
                                 </li>
                                <li class="positionaaa" style="margin-bottom: 0;">
                                   <span id="SpanBank" style="display: none" class="account_note_bank" onclick="SpanBankClick()"></span>
                                    <div class="SpanZFB02" style="display:none"></div>
                                </li>
                                <!--2012-8-6修改-结束-->

                                <li class="li_middle">
                                    <div class="li_input UlBorder">
                                        <input id="rd1" type="radio" class="mr10" checked="checked" name="rd" value="2" onclick="RdChkChange()">
                                        <img width="88" class="pay_zhi" src="static/publish_house_5/alipay_small.gif" height="30">
                                    </div>
                                    <div class="li_bottom">
                                        <input id="rd2" type="radio" class="mr10" name="rd" value="3" onclick="RdChkChange()"><b class="font16 font_right">银行卡
                                        </b>
                                    </div>
                                </li>
                                <li class="border_b">
                                    <ul id="ulZFB" style="display: block;">
                                        <li style="margin-bottom: 20px;">
                                            <label class="savetxt">
                                                <span id="MZifubaoname" class="redmessage">*</span>真实姓名</label>
                                            <input id="zhifubaohuming" name="zhifubaohuming" type="text" size="30" class="input_b inputtxt_l" value="请输入您的真实姓名" \="" onfocus="if (value ==&#39;请输入您的真实姓名&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;请输入您的真实姓名&#39;}">
                                            <span style="display: none;" id="SpanZhifubaoName" class="Newerror">您的户名不能为空</span>
                                            <div id="" class="message02">
                                                请输入与支付宝账户相匹配的真实姓名，否则会导致无法收款！</div>
                                        </li>
                                        <li>
                                            <label class="savetxt">
                                                <span id="MZifubao" class="redmessage">*</span>支付宝账户</label>
                                            <input id="zhifubao" name="zhifubao" type="text" size="30" class="input_b inputtxt_l" value="邮箱地址/手机号码" onfocus="if (value ==&#39;邮箱地址/手机号码&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;邮箱地址/手机号码&#39;}">
                                            <span id="SpanZhifubao" class="Newerror" style="display: none;">您的支付宝账号不能为空</span> <span id="" style="display: none;" class="Newerror">您的支付宝账号格式不符合规范</span>
                                            <div id="MessZhifubao" class="message02">
                                                请填写您的支付宝账户名，为了避免您无法收款，请认真核对是否有误！</div>
                                        </li>
                                        <li class="YanzhengButton">
                                            <input type="button" value="立即验证" onclick="checkClick()">
                                            <span>点击验证，系统会验证您填写的支付宝信息是否正确</span> <a class="myDivPopup"></a></li>
                                    </ul>
                                    <div class="lbytck tck_success_width" id="alertnextInfo" style="display: none;">
                                        
                                        
                                        
                                    </div>
                                    <ul id="ulYHK" style="display: none;">
                                        <li>
                                            <label class="savetxt">
                                                帐户属性</label>
                                            <input id="rd4" type="radio" checked="checked" class="mr10" name="rd1" value="1" onclick="Rd1ChkChange()">
                                            <span class="mr_left">个人</span>
                                            <input id="rd5" type="radio" class="mr10" name="rd1" value="2" onclick="Rd1ChkChange()">
                                            <span>企业</span> </li>
                                        <li>
                                            <label class="savetxt">
                                                <span id="MKaihuyinhang" class="redmessage">*</span>开户银行
                                            </label>
                                            <select id="strBankName" class="CountrySelect" name="strBankName" style="width: 208px;">
                                                <option value="">请选择银行</option>
                                                
                                                <option value="中国工商银行">
                                                    中国工商银行</option>
                                                
                                                <option value="中国建设银行">
                                                    中国建设银行</option>
                                                
                                                <option value="中国农业银行">
                                                    中国农业银行</option>
                                                
                                                <option value="招商银行">
                                                    招商银行</option>
                                                
                                                <option value="中国邮政储蓄银行">
                                                    中国邮政储蓄银行</option>
                                                
                                                <option value="中国银行">
                                                    中国银行</option>
                                                
                                                <option value="交通银行">
                                                    交通银行</option>
                                                
                                                <option value="上海浦东发展银行">
                                                    上海浦东发展银行</option>
                                                
                                                <option value="中国光大银行">
                                                    中国光大银行</option>
                                                
                                                <option value="广东发展银行">
                                                    广东发展银行</option>
                                                
                                                <option value="中信银行">
                                                    中信银行</option>
                                                
                                                <option value="兴业银行">
                                                    兴业银行</option>
                                                
                                                <option value="中国民生银行">
                                                    中国民生银行</option>
                                                
                                                <option value="华夏银行">
                                                    华夏银行</option>
                                                
                                                <option value="平安银行">
                                                    平安银行</option>
                                                
                                                <option value="城市商业银行">
                                                    城市商业银行</option>
                                                
                                                <option value="城市信用社">
                                                    城市信用社</option>
                                                
                                                <option value="农村商业银行">
                                                    农村商业银行</option>
                                                
                                                <option value="农村合作银行">
                                                    农村合作银行</option>
                                                
                                                <option value="农村信用社">
                                                    农村信用社</option>
                                                
                                                <option value="杭州银行">
                                                    杭州银行</option>
                                                
                                                <option value="上海农商银行">
                                                    上海农商银行</option>
                                                
                                                <option value="浙商银行">
                                                    浙商银行</option>
                                                
                                                <option value="渤海银行">
                                                    渤海银行</option>
                                                
                                                <option value="徽商银行股份有限公司">
                                                    徽商银行股份有限公司</option>
                                                
                                                <option value="东亚银行">
                                                    东亚银行</option>
                                                
                                                <option value="恒丰银行">
                                                    恒丰银行</option>
                                                
                                                <option value="恒生银行">
                                                    恒生银行</option>
                                                
                                                <option value="花旗银行">
                                                    花旗银行</option>
                                                
                                                <option value="华一银行">
                                                    华一银行</option>
                                                
                                                <option value="汇丰银行">
                                                    汇丰银行</option>
                                                
                                                <option value="渣打银行">
                                                    渣打银行</option>
                                                
                                            </select>
                                            <span id="SpanBankName" style="display: none" class="Newerror">请选择开户银行</span></li>
                                        <li>
                                            <label class="savetxt" for="label">
                                                <span id="MShengfenchengshi" class="redmessage">*</span>省份城市
                                            </label>
                                            <select id="strProvince" class="CountrySelect" name="strProvince">
                                                <option value="">选择省份</option>
                                                
                                                <option value="北京市">
                                                    北京市</option>
                                                
                                                <option value="重庆市">
                                                    重庆市</option>
                                                
                                                <option value="上海市">
                                                    上海市</option>
                                                
                                                <option value="天津市">
                                                    天津市</option>
                                                
                                                <option value="安徽省">
                                                    安徽省</option>
                                                
                                                <option value="澳门">
                                                    澳门</option>
                                                
                                                <option value="福建省">
                                                    福建省</option>
                                                
                                                <option value="广西">
                                                    广西</option>
                                                
                                                <option value="贵州省">
                                                    贵州省</option>
                                                
                                                <option value="广东省">
                                                    广东省</option>
                                                
                                                <option value="甘肃省">
                                                    甘肃省</option>
                                                
                                                <option value="黑龙江省">
                                                    黑龙江省</option>
                                                
                                                <option value="湖北省">
                                                    湖北省</option>
                                                
                                                <option value="湖南省">
                                                    湖南省</option>
                                                
                                                <option value="河南省">
                                                    河南省</option>
                                                
                                                <option value="海南省">
                                                    海南省</option>
                                                
                                                <option value="河北省">
                                                    河北省</option>
                                                
                                                <option value="江苏省">
                                                    江苏省</option>
                                                
                                                <option value="江西省">
                                                    江西省</option>
                                                
                                                <option value="吉林省">
                                                    吉林省</option>
                                                
                                                <option value="辽宁省">
                                                    辽宁省</option>
                                                
                                                <option value="宁夏">
                                                    宁夏</option>
                                                
                                                <option value="内蒙古">
                                                    内蒙古</option>
                                                
                                                <option value="青海省">
                                                    青海省</option>
                                                
                                                <option value="陕西省">
                                                    陕西省</option>
                                                
                                                <option value="四川省">
                                                    四川省</option>
                                                
                                                <option value="山东省">
                                                    山东省</option>
                                                
                                                <option value="山西省">
                                                    山西省</option>
                                                
                                                <option value="台湾">
                                                    台湾</option>
                                                
                                                <option value="香港">
                                                    香港</option>
                                                
                                                <option value="西藏">
                                                    西藏</option>
                                                
                                                <option value="新疆">
                                                    新疆</option>
                                                
                                                <option value="云南省">
                                                    云南省</option>
                                                
                                                <option value="浙江省">
                                                    浙江省</option>
                                                
                                            </select>
                                            <select id="strCity" name="strCity" class="selectstyle CountrySelect">
                                                <option value="">选择城市</option>
                                            </select>
                                            <span id="Province_City" style="display: none" class="Newerror">请选择省份城市</span><span style="display: none">
                                                <select class="selectstyle" name="strDistrict" id="strDistrict" style="width: 100px;">
                                                </select></span>
                                            <script language="javascript">
                                             <!--
                                                function V(id) { return document.getElementById(id); }
                                                //var OP = V('strProvince');
                                                //var OC = V('strCity');
                                                // var OD = V('strDistrict');
                                                //  FullP(OP);
                                                //  Full(OP.value, OC.value, OD.value, OP, OC, OD);
                                                //                                                         FullC(OC, OD, OP);//-->
//                                                var prince = '';
//                                                var city = '';
//                                                var bankName = ''
//                                                var payType = ''
//                                                var subBranch = ''
//                                                var isSelf = ''
//                                                window.onload = function () {

//                                                    if (payType == "3") {
//                                                        sed(V('strBankName'), bankName);
//                                                        sed(V('strProvince'), prince);
//                                                        strProvinceChanged(prince, "strCity", true, city, false);
//                                                        strCityChanged(prince, city, bankName, "strSubBranch", true, subBranch);
//                                                    }
//                                                    if (isSelf == "1") {
//                                                        checkBank(bankName);
//                                                    }
//                                                    else {
//                                                        $("#liSubBranch").show();
//                                                    }
//                                                };                                               
                                            </script>
                                        </li>
                                        <li id="liSubBranch" class="li_hidden" style="display: none;">
                                            <ul id="ulSubBranch">
                                                <li>
                                                    <label class="savetxt">
                                                        <span id="MKaihuzhihang" class="redmessage">*</span>开户支行
                                                    </label>
                                                    <select id="strSubBranch" name="strSubBranch" class="CountrySelect" style="width: 208px;">
                                                        <option value="">请选择开户支行</option>
                                                    </select>
                                                    <div class="message02">
                                                        如不清楚支行信息，请致电银行客服查询，支行信息错误将无法转账成功。</div>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <label class="savetxt">
                                                <span id="MYinhangzhanghu" class="redmessage">*</span>银行账户
                                            </label>
                                            <input id="BankAccount" name="BankAccount" type="text" size="30" class="input_b inputtxt_l" value="">
                                            <span id="SpanBankAccount" style="display: none" class="Newerror">您的银行账户格式不符合规范</span>
                                            <span style="display: none" class="Newerror">您的银行账号位数应该在12-25位之间</span> <span style="display: none" class="Newerror">您的支付账号不能为空</span>
                                            <div id="vs" style="padding-top: 7px;">
                                                <label class="savetxt">
                                                    <span id="Span1" class="redmessage">*</span>确认账户
                                                </label>
                                                <div id="v" class="message02">
                                                    <input id="QrBankAccount" name="QrBankAccount" type="text" size="30" class="input_b inputtxt_l" value="">
                                                    <span id="QrSpanBankAccount" style="display: none" class="Newerror">您的银行账户和确认账户不相同</span>
                                                </div>
                                            </div>
                                            <div class="message02">
                                                不支持信用卡做为收款方式</div>
                                        </li>
                                        <li>
                                            <label class="savetxt">
                                                <span id="MHuming" class="redmessage">*</span>户<span class="padl27"></span>名
                                            </label>
                                            <input id="UserName" name="UserName" type="text" size="30" class="input_b inputtxt_l" value="">
                                            <span id="SpanUserName" style="display: none" class="Newerror">请输入您的中文名</span> <span style="display: none" class="Newerror">不能为空，请输入您的户名</span> </li>
                                        <li>
                                         <!--2012-8-6修改-->
                                            <div class="YanzhengButton">
                                         <!--2012-8-6修改-结束-->

                                                <input id="submitAccount" name="submitAccount" type="button" value="确认保存" class="submitBtn">
                                                <input type="button" class="resetBtn" value="取 消">
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="clear"></div>
                            <ul class="mt30" style="display: none">
                                <li>
                                    <input id="rd3" type="radio" class="mr10" name="rd" value="1" onclick="RdChkChange()">
                                    <img class="pay_zhi" src="static/publish_house_5/cft.png" width="93" height="49">
                                </li>
                                <li class="mt10">
                                    <label class="savetxt">
                                        财付通户名</label>
                                    <input id="CaifutongName" name="CaifutongName" type="text" size="30" class="input_b inputtxt_l" value="">
                                    <span id="CaifutongNameSpan" style="display: none" class="Newerror"></span></li>
                                <li>
                                    <label class="savetxt">
                                        财付通账号</label>
                                    <input id="CaifutongZhanghao" name="CaifutongZhanghao" type="text" size="30" class="input_b inputtxt_l" value="">
                                    <span id="CaifutongZhanghaoSpan" style="display: none" class="Newerror"></span>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                        
                    </div>
                    <input id="recids" name="recids" type="hidden" value="">
                </div>
                <div class="float1">
                                      <ul id="ulForEn" class="card" style="display: none; margin-top: 30px;">
                                           <li class="li_middle">
                                                <div id="divPayPal" class="li_input UlBorder">
                                                    <input type="radio" id="radioPaypal" class="mr10" checked="checked" name="rdPaypalOrBank" value="2">
                                                    <img width="102" height="30" class="pay_zhi" src="static/publish_house_5/u12_original.gif">
                                                </div>
                                                <div id="divBankTransfer" class="li_bottom">
                                                    <input type="radio" id="radioBank" class="mr10" name="rdPaypalOrBank" value="3"><b class="font16 font_right">银行转账
                                                    </b>
                                                </div>
                                            </li>
                            <ul id="ulPaypal" style="padding: 20px 0 0 20px; line-height: 18px;">
                                
                                <li class="FwB PB15">注：使用Paypal收款时，您需要向Paypal支付一定比例的手续费</li>
                                <li style="margin-bottom: 20px;">
                                    <label class="savetxt">
                                        <span class="redmessage">*</span>真实姓名</label>
                                    <input id="realNamePayPal" value="" type="text" class="input_b inputtxt_l" size="30" name="">
                                    <span id="errorRealNamePayPal" class="Newerror" style="display: none;">财付通账号</span>
                                    <div class="message02">
                                        请输入与paypal账户相匹配的真实姓名</div>
                                </li>
                                <li>
                                    <label class="savetxt">
                                        <span class="redmessage">*</span>paypal账户</label>
                                    <input id="accountPayPal" value="" type="text" class="input_b inputtxt_l" size="30" name="">
                                    <span id="errorAccountPayPal" class="Newerror" style="display: none;">您的paypal账户不存在/已被他人填写过</span>
                                    
                                    
                                    <div class="message02">
                                        请填写您的paypal账户，为了避免您无法收款，请认真核对是否有误！</div>
                                </li>
                                <li class="YanzhengButton">
                                    <input id="submitPaypal" type="button" value="提 交"></li>
                            </ul>
                                            <li id="liBank1" class="border_b" style="display: none;">
                                                 <ul>
                                                     <li><h3 class="FwB">请填写所需信息</h3></li>
                                                     <li>货币种类：<select class="CountrySelect" name="">
                                                          <option value="">USD 美元</option>
                                                     </select>
                                                     </li>
                                                     <li><input type="radio" checked="checked" id="radioTaiwan1" name="Taiwan" class="pay_zhi mr10"><span class="FwB"><span id="spanDistrict1">台湾</span> - 国际支付</span></li>
                                                     <li id="liTaiwan1">
                                                          <ul class="PL30">
                                                               <li>
                                                        <label class="savetxt">
                                                            <span class="redmessage">*</span>银行名称
                                                        </label>
                                                        <input id="txtBankName1" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                        
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                           <span class="PR10"></span>银行地址
                                                        </label>
                                                        <input id="txtBankAddress1" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="redmessage">*</span>收款人
                                                        </label>
                                                        <input id="txtReceiver1" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="redmessage">*</span>银行账号
                                                        </label>
                                                        <input id="txtBankAccount" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="PR10"></span>银行代码
                                                        </label>
                                                        <input id="txtBankCode" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="redmessage">*</span>SWIFT BIC
                                                        </label>
                                                        <input id="txtSwiftBic1" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="PR10"></span>附加信息
                                                        </label>
                                                        <input id="txtAdditionalInfo1" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                          </ul>
                                                     </li>
                                                 </ul>
                                            </li>
                                            <li id="liBank2" class="border_b" style="display: none;">
                                                 <ul>
                                                     <li><input type="radio" name="Taiwan" id="radioTaiwan2" class="pay_zhi mr10"><span class="FwB"><span id="spanDistrict2">台湾</span> - 国际支付</span></li>
                                                     <li id="liTaiwan2" style="display: none;">
                                                          <ul class="PL30">
                                                               <li>
                                                        <label class="savetxt">
                                                            <span class="redmessage">*</span>银行名称
                                                        </label>
                                                        <input id="txtBankName2" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                           <span class="PR10"></span>银行地址
                                                        </label>
                                                        <input id="txtBankAddress2" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="redmessage">*</span>收款人
                                                        </label>
                                                        <input id="txtReceiver2" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="redmessage">*</span>IBAN
                                                        </label>
                                                        <input id="txtIban" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="redmessage">*</span>SWIFT BIC
                                                        </label>
                                                        <input id="txtSwitfBic2" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                     <li>
                                                        <label class="savetxt">
                                                            <span class="PR10"></span>附加信息
                                                        </label>
                                                        <input id="txtAdditionalInfo2" type="text" name="" size="30" class="input_b inputtxt_l" value="">
                                                     </li>
                                                          </ul>
                                                     </li>
                                                     <li class="YanzhengButton">
                                                          <input type="submit" id="SubmitInternationalPay" name="submitPaypal" value="提交">
                                                      </li>
                                                 </ul>
                                            </li>
                                      </ul>
                                </div>

            </div>
            <div class="clear">
            </div>
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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="static/publish_house_5/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="static/publish_house_5/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="static/publish_house_5/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="static/publish_house_5/TrustYoutx.gif" width="100" height="35px"></a></li>
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
</script><script src="static/publish_house_5/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="static/publish_house_5/21.gif" width="20" height="20"></a>

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
<script type="text/javascript" src="static/publish_house_5/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="static/publish_house_5/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="static/publish_house_5/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="static/publish_house_5/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="static/publish_house_5/youtx_mi_query.js.下载" type="text/javascript"></script><script src="static/publish_house_5/WebIM.js.下载" type="text/javascript"></script><script src="static/publish_house_5/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->  
    


<div class="popupLayer" style="position: absolute; z-index: 2; width: 360px; height: 0px; display: none;"><div class="PaymentTan" id="divWait" style="opacity: 1;">
                                            <div class="PaymentTan_L">
                                            </div>
                                            <div class="PaymentTan_C">
                                                <span class="PaymentErrors PaymentErrors03">验证中，请耐心等待…</span>
                                                <h3>
                                                    请不要关闭本页面</h3>
                                            </div>
                                            <div class="PaymentTan_R">
                                            </div>
                                        </div><div class="PaymentTan" style="opacity: 1;" id="divCheckSucceed">
                                            <div class="PaymentTan_L">
                                            </div>
                                            <div class="PaymentTan_C">
                                                <span class="PaymentErrors PaymentErrors02">恭喜您，验证成功</span>
                                                <div class="PaymentFanhui">
                                                    <input type="button" value="立即保存帐户" id="submitAcc" name="submitAcc"></div>
                                            </div>
                                            <div class="PaymentTan_R">
                                            </div>
                                        </div><div id="divCheckFailed" class="PaymentTan" style="opacity: 1;">
                                            <div class="PaymentTan_L">
                                            </div>
                                            <div class="PaymentTan_C">
                                                <span class="PaymentErrors">抱歉，验证失败</span>
                                                <h3 id="SpanCheckFailed">
                                                    支付宝姓名和账号不匹配</h3>
                                                <div class="PaymentFanhui">
                                                    <input class="btnclose" type="button" id="btnCheckClose" value="返回修改账号"></div>
                                                <a class="PaymentClose btnclose" id="btnCheckClose" href="javascript:void(0)"></a>
                                            </div>
                                            <div class="PaymentTan_R">
                                            </div>
                                        </div><iframe border="0" frameborder="0" style="position: absolute; z-index: -1; left: 0px; top: 0px; opacity: 0; width: 360px; height: 0px;" src="static/publish_house_5/saved_resource.html"></iframe></div><div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="static/publish_house_5/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/publish_house_5/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div><div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;"><div class="Talk  PosRe" id="Talk"><div class="UserMenu" id="UserBox"><div class="UserMain" id="UserM" style="cursor: move;"><ul class="TabHeader" id="UserNr" style="top:0px;"></ul></div><div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar" style="display:block; top:0px;"></span></div></div><div class="Talk_center"><span class="DownArrow" style="display:none;"><img src="static/publish_house_5/dowearrow.gif" width="16" height="16"></span><ul class="Yichu" style="display:none;"></ul><div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span class="RentName"></span><span class="Chat_min"><img src="static/publish_house_5/SIcon.png" width="25" height="25"></span></div><div class="clear"></div><div id="youtx_ch_webim"></div></div><div class="Talk_right"> </div><div class="HouseRe PosAb" style="display:none;"></div></div></div><div style="display:none;"> <ul id="youtx_none_li"></ul><div id="youtx_none_div"></div> </div><div id="house_webim_s" style="display:none;"></div> <div id="soundContainer" style=" width:10px; height:10px ;"><embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window" src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle" allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></div><div id="OutBox" class="OutBox" style="top: 516.6px; left: 759.5px;"><div class="OutBoxbg" id="OutBoxbg"></div><a href="http://www.youtx.com/room/newfiveplan/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic" class="OutBoxPic" src="http://www.youtx.com/room/newfiveplan/324548" style="top: 0px;"></div><div class="ChatSmall"><div><ul id="ChatSmallUl"><li id="ChatMes" class="ChatMes">短消息（0）</li></ul><div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2><p class="All_mes"><a target="blank" href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a></p><ul class="Mes_main" id="IDUlMes_main"></ul></div></div></div></body></html>