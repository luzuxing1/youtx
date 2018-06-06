<!DOCTYPE html>
<!-- saved from url=(0043)http://www.youtx.com/room/newtwoplan/324548 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="static/publish_house_2/countpv" width="0" height="0"><script charset="utf-8" src="static/publish_house_2/v.js.下载"></script><script type="text/javascript" async="" src="static/publish_house_2/load.min.js.下载"></script><script src="static/publish_house_2/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="static/publish_house_2/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
    <link href="static/publish_house_2/public.css" rel="stylesheet" type="text/css"> 
    
    <script type="text/javascript">
        var userid1;
        $(function () {
            userid1 = "2600363";
        });
    </script>
    
    <title>
        我要出租-填写描述-游天下</title>
    
    <link href="static/publish_house_2/DescriptionenNew.css" rel="stylesheet" type="text/css">
    <script src="static/publish_house_2/ClientValidation.js.下载" type="text/javascript"></script>
    <script type="text/javascript">
        var maxTitleLength = 35;
        var isChinese = "True"; //当前使用的语言是否是中文
        //获取焦点后默认文本消失，样式变为黑色；失去焦点后显示默认文本，样式为灰色
        function FixedMsg(id, msg, useGray) {
            $("#" + id).focusin(function () {
                if ($(this).val() == msg) {
                    $(this).val("");
                    if (useGray == true) $(this).css({ "color": "Black" });
                }
                $(this).css("border-color", "");
                if ($("#" + id + "Div")) {
                    $("#" + id + "Div").hide();
                }
            }).blur(function () {
                if ($(this).val() == "") {
                    $(this).val(msg);
                    if (useGray == true) $(this).css({ "color": "rgb(102,102,102)" });
                }
            });
            if ($("#" + id).val() == "") {
                $("#" + id).val(msg);
            }
            if ($("#" + id).val() == "" || $("#" + id).val() == msg) {
                if (useGray == true) {
                    $("#" + id).css({ "color": "rgb(102,102,102)" });
                }
            }
            else {
                $("#" + id).css({ "color": "Black" });
            }
        }
        function getsLength(titles) {
            var len = titles.length;
            var lengtha = 0;
            for (var i = 0; i < len; i++) {
                if (titles.charCodeAt(i) > 255) {
                    lengtha += 2;
                }
                else {
                    lengtha++;
                }
            }
            return parseInt(lengtha);
        }
        //add 20151221  价格验证方法
        function PriceKeyUp(obj, typeid) {
            obj.bind("keyup", function () {
                var type = "^[0-9]*[1-9][0-9]*$";
                var re = new RegExp(type);
                if (isNaN($.trim(obj.val())) || Number($.trim(obj.val())) < 0 || $.trim(obj.val()).match(re) == null) {
                    $(obj).val("");
                }
                if (typeid == 1) {
                    if (Number($.trim(obj.val())) > 9999) {
                        $(obj).val("");
                    }
                }
            });
        }

        $(document).ready(function () {
            var houseid = "324548";
            var idoSchedual = "DO";

            if ("" == "en-US") {
                $("#sBedRoomNum option[value='0']").html("none");
                //$("#sBedRoomNum option[value='100']").html("公共卫生间");
            }
            if (Number($("#Rooms").val()) > 1) {
                $("#RoomsTipInfo").show();
            } else {
                $("#RoomsTipInfo").hide();
            }
            if (Number("0") == 1) {
                document.getElementById("CKRoomsTipInfo").checked = true;
            }
            //提示房间布局
            $("#Rooms").change(function () {
                if (Number($("#Rooms").val()) > 1) {
                    $("#RoomsTipInfo").show();
                    document.getElementById("CKRoomsTipInfo").checked = true;
                } else {
                    $("#RoomsTipInfo").hide();
                }
            });
            //卫生间数量下拉菜单选“空”时隐藏卫生间类型
            if ($("#sBedRoomNum").val() == "0") {
                $("#wcType").hide();
                $("#wcTypeTip").hide();
            }
            $("#sBedRoomNum").change(function () {
                if ($("#sBedRoomNum").val() == "0") {
                    $("#wcType").hide();
                    $("#wcTypeTip").hide();
                } else {
                    $("#wcType").show();
                    $("#wcTypeTip").show();
                }
            });
            //add20151222 按下的数据是否问数字
            PriceKeyUp($("#txthouserarea1"), 2);   //房源面积
            PriceKeyUp($("#txtWasherPrice"), 1);  //洗衣机
            PriceKeyUp($("#txtAirCondtioningPrice"));  //空调
            PriceKeyUp($("#txtInternet"), 1);  //有线网络
            PriceKeyUp($("#txtWire"), 1);  //无线网络
            PriceKeyUp($("#txtParking"), 1);  //停车位
            PriceKeyUp($("#txtCanpickUpPrice"), 1);  //可以接送
            PriceKeyUp($("#txtEvents"), 1);  //适合举办活动
            PriceKeyUp($("#txtLuggageDepositPrice"), 1);  //行李寄存
            PriceKeyUp($("#txtKitchenPrice"), 1);  //可用厨房
            PriceKeyUp($("#txtMahjongDesk"), 1);  //自动麻将桌
            PriceKeyUp($("#txtAddBedPrice"), 1);  //加床服务
            PriceKeyUp($("#txtTicketAgentPrice"), 1);  //票务代理


            //中国房源逻辑中的母语：房源标题剩余可输入字数
            $("#txtHouseTitle1").bind("keyup", function () {
                if ($.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != "" && $.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != undefined) {
                    var titlelengh = Number(parseInt(getsLength($.trim($(this).val())) / 2));
                    if ((17 - titlelengh) >= 0) {
                        $("#span1").html("还能输入" + (17 - titlelengh) + "个汉字");
                    } else {
                        $("#span1").html("已经超过" + (titlelengh - 17) + "个汉字");
                    }
                }
                else {
                    $("#span1").html("还能输入" + 17 + "个汉字");
                }
            });
            $("#txtHouseTitle1").keyup();

            //中国房源逻辑中的外语：房源标题剩余可输入字数
            $("#enHouseTitle").bind("keyup", function () {
                if ($.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != "" && $.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != undefined) {
                    if ((maxTitleLength - Number(getsLength($.trim($(this).val())))) >= 0) {
                        $("#span1Two").html("还能输入" + (maxTitleLength - Number(getsLength($.trim($(this).val())))) + "个字符");
                    } else {
                        $("#span1Two").html("已经超过" + (Number(getsLength($.trim($(this).val()))) - maxTitleLength) + "个字符");
                    }
                }
                else {
                    $("#span1Two").html("还能输入" + maxTitleLength + "个字符");
                }
            });
            $("#enHouseTitle").keyup();
            //国外房源逻辑中的母语：房源标题剩余可输入字数
            $("#oneHouseTitle").bind("keyup", function () {
                if ($.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != "" && $.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != undefined) {
                    if ((maxTitleLength - Number(getsLength($.trim($(this).val())))) >= 0) {
                        $("#span3One").html("还能输入" + (maxTitleLength - Number(getsLength($.trim($(this).val())))) + "个字符");
                    } else {
                        $("#span3One").html("已经超过" + (Number(getsLength($.trim($(this).val()))) - maxTitleLength) + "个字符");
                    }
                }
                else {
                    $("#span3One").html("还能输入" + maxTitleLength + "个字符");
                }
            });
            $("#oneHouseTitle").keyup();
            //国外房源逻辑中的外语：房源标题剩余可输入字数
            $("#twoHouseTitle").bind("keyup", function () {
                if ($.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != "" && $.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != undefined) {
                    var titlelengh = Number(parseInt(getsLength($(this).val()) / 2));
                    if ((17 - titlelengh) >= 0) {
                        $("#span5Two").html("还能输入" + (17 - titlelengh) + "个汉字");
                    } else {
                        $("#span5Two").html("已经超过" + (titlelengh - 17) + "个汉字");
                    }
                }
                else {
                    $("#span5Two").html("还能输入" + 17 + "个字符");
                }
            });
            $("#twoHouseTitle").keyup();
            //国外房源逻辑中的母语备注
            $("#oneTxtBak").bind("keyup", function () {
                if ($.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != "" && $.trim($(this).val()).replace("好的标题会让您的房屋成为一个亮点", "") != undefined) {
                    if ((maxTitleLength - Number(getsLength($.trim($(this).val())))) >= 0) {
                        $("#span4One").html("还能输入" + (maxTitleLength - Number(getsLength($.trim($(this).val())))) + "个字符");
                    } else {
                        $("#span4One").html("已经超过" + (Number(getsLength($.trim($(this).val()))) - maxTitleLength) + "个字符");
                    }
                }
                else {
                    $("#span4One").html("还能输入" + maxTitleLength + "个字符");
                }
            });
            $("#oneTxtBak").keyup();

            //Add 2012-06-01
            $("#txtBak").bind("keyup", function () {
                if ($.trim($(this).val()).replace("辨别房间的参考信息，仅自己可见", "") != "" && $.trim($(this).val()).replace("辨别房间的参考信息，仅自己可见", "") != undefined) {
                    if ((17 - Number(getsLength($.trim($("#txtBak").val())) / 2)) >= 0) {
                        $("#span2").html("还能输入" + (17 - parseInt(getsLength($.trim($("#txtBak").val())) / 2)) + "个汉字");
                    } else {
                        $("#span2").html("已经超过" + (parseInt(getsLength($.trim($("#txtBak").val())) / 2) - 17) + "个汉字");
                    }
                }
                else {
                    $("#span2").html("还能输入" + 17 + "个汉字");
                }
            });
            $("#txtBak").keyup();

            //非默认值就是黑色
            //            function BlackOrGray(obj,defaultStr){
            //                if($.trim(obj.val())!=defaultStr){
            //                    obj.css("color","black");
            //                }else{
            //                    obj.css("color","rgb(102, 102, 102)");
            //                }
            //            }
            //            BlackOrGray($("#txthouserarea1"),"请输入整数");
            //            BlackOrGray($("#txtHouseTitle1"),"好的标题会让您的房屋成为一个亮点");
            //            BlackOrGray($("#txtBak"),"辨别房间的参考信息，仅自己可见");
            //            BlackOrGray($("#txtRoomdescription"),"如户型、面积、装修、家具家电、网络情况等");
            //            BlackOrGray($("#LandMarks"),"，如具体地点、周围的标志性建筑等");
            //            BlackOrGray($("#Traffic"),"，如公交站、地铁线路、如何去往机场或火车站等");
            //            BlackOrGray($("#arroundFacility"),"，如商场、超市、银行、医院等");
            //            BlackOrGray($("#attractions"),"如躺在床上就能欣赏海景等");


            //floor
            $("#iFloor").focus(function () {
                $("#errorFloor").hide();
                $("#iFloor").css("border-color", "");
            });
            $("#AllFloor").focus(function () {
                $("#errorFloor").hide();
                $("#AllFloor").css("border-color", "");
            });
            $("#txtHouseTitle1").focus(function () {
                $("#txtHouseTitle1Div").hide();
                $("#txtHouseTitle1").css("border-color", "");
            });
            //Add 2012-06-01
            $("#txtBak").focus(function () {
                $("#txtBakDiv").hide();
                $("#txtBak").css("border-color", "");
            });

            $("#txthouserarea1").focus(function () {
                $("#errorHouseArea").hide();
                $("#txthouserarea1").css("border-color", "");
                // $("#txthouserarea1").css("color", "black");
            });
            $("#txtRoomdescription").focus(function () {
                $("#txtRoomdescriptionDiv").hide();
                $("#txtRoomdescription").css("border-color", "");
            });
            //移到新发布页
            //            $("#LandMarks").focus(function () {
            //                $("#LandMarksDiv").hide();
            //                $("#LandMarks").css("border-color", "");
            //            });
            //jiao tong
            $("#Traffic").focus(function () {
                $("#TrafficDiv").hide();
                $("#Traffic").css("border-color", "");
            });
            //
            $("#arroundFacility").focus(function () {
                $("#arroundFacilityDiv").hide();
                $("#arroundFacility").css("border-color", "");
            });
            //
            $("#attractions").focus(function () {
                $("#attractionsDiv").hide();
                $("#attractions").css("border-color", "");
            });
            $("#other").focus(function () {
                $("#otherDiv").hide();
                $("#other").css("border-color", "");
            });



            ////////便利设施收费begin
            //全选按钮
            $("#checkallcheckbox").click(function () {
                if (isChinese == "True") {
                    if (document.getElementById("checkallcheckbox").checked) {
                        $("#spanCableTVPrice").show();
                        $("#spanInternetPrice").show();
                        $("#spanWirelessInternetPrice").show();
                        $("#spanSuitableForEventsPrice").show();
                        $("#spanParkingIncludedPrice").show();
                        $("#spanMahjongDesk").show();
                        $.each($(".RoomSituationTxt03 ul li input"), function (n, v) {
                            $(v).attr("checked", true);
                        });
                    } else {
                        $("#spanCableTVPrice").hide();
                        $("#spanInternetPrice").hide();
                        $("#spanWirelessInternetPrice").hide();
                        $("#spanSuitableForEventsPrice").hide();
                        $("#spanParkingIncludedPrice").hide();
                        $("#spanMahjongDesk").hide();
                        $.each($(".RoomSituationTxt03 ul li input"), function (n, v) {
                            $(v).attr("checked", false);
                        });
                    }
                } else if (isChinese == "False") {
                    if (document.getElementById("checkallcheckbox").checked) {
                        $.each($(".RoomSituationTxt03 ul li input"), function (n, v) {
                            $(v).attr("checked", true);
                        });
                    } else {
                        $.each($(".RoomSituationTxt03 ul li input"), function (n, v) {
                            $(v).attr("checked", false);
                        });
                    }
                }
            });

            //点击选择框时根据是否勾选来显示或隐藏便利设施收费设置
            function ckbClickShowHide(jsIsChina, ckbobj, spanobj) {
                if (jsIsChina == "True") {
                    if (ckbobj.attr("checked") == "checked") {
                        spanobj.show();
                    }
                    else {
                        spanobj.hide();
                    }
                }
            }
            //<!--2015-12-10Begin-->
            //洗衣机
            $("#ckbWasher").click(function () {
                ckbClickShowHide(isChinese, $("#ckbWasher"), $("#spanWasherPrice"));
            });
            //空调
            $("#ckbAirCondtioning").click(function () {
                ckbClickShowHide(isChinese, $("#ckbAirCondtioning"), $("#spanAirCondtioningPrice"));
            });
            //可以接送
            $("#ckbCanPickUp").click(function () {
                ckbClickShowHide(isChinese, $("#ckbCanPickUp"), $("#spanCanPickUpPrice"));
            });
            //行李寄存
            $("#ckbLuggageDeposit").click(function () {
                ckbClickShowHide(isChinese, $("#ckbLuggageDeposit"), $("#spanLuggageDepositPrice"));
            });
            //可用厨房
            $("#ckbKitchen").click(function () {
                ckbClickShowHide(isChinese, $("#ckbKitchen"), $("#spanKitchenPrice"));
            });
            //加床服务
            $("#ckbAddBed").click(function () {
                ckbClickShowHide(isChinese, $("#ckbAddBed"), $("#spanAddBedPrice"));
            });
            //票务代理
            $("#ckbTicketAgent").click(function () {
                ckbClickShowHide(isChinese, $("#ckbTicketAgent"), $("#spanTicketAgentPrice"));
            });
            // <!--2015-12-10End-->
            //有线电视20151211
            //            $("#ckbCableTV").click(function () {
            //                ckbClickShowHide(isChinese, $("#ckbCableTV"), $("#spanCableTVPrice"));
            //            });
            //有线上网
            $("#ckbInternet").click(function () {
                ckbClickShowHide(isChinese, $("#ckbInternet"), $("#spanInternetPrice"));
            });
            //无线上网
            $("#ckbWirelessInternet").click(function () {
                ckbClickShowHide(isChinese, $("#ckbWirelessInternet"), $("#spanWirelessInternetPrice"));
            });
            //自动麻将桌
            $("#ckbMahjongDesk").click(function () {
                ckbClickShowHide(isChinese, $("#ckbMahjongDesk"), $("#spanMahjongDesk"));
            });
            //停车位
            $("#ckbParkingIncluded").click(function () {
                ckbClickShowHide(isChinese, $("#ckbParkingIncluded"), $("#spanParkingIncludedPrice"));
            });
            //举办活动
            $("#ckbSuitableForEvents").click(function () {
                ckbClickShowHide(isChinese, $("#ckbSuitableForEvents"), $("#spanSuitableForEventsPrice"));
            });
            //出租类型
            var roomType = "0";
            if (roomType == 3 || roomType == 0) {
                $("#RadioYLive").attr("disabled", "disabled");
                $("#RadioNLive").attr("disabled", "disabled");
            }
            $("#roomType").change(function () {
                if ($("#roomType").val() == 3) {
                    $("#RadioYLive").attr("disabled", "disabled").attr("checked", false);
                    $("#RadioNLive").attr("disabled", "disabled").attr("checked", true);
                } else {
                    $("#RadioYLive").removeAttr("disabled").attr("checked", false);
                    $("#RadioNLive").removeAttr("disabled").attr("checked", false);
                }
            });
            ////////便利设施收费end
            if ("True" == "True") {
                //初始化房屋自定义类型：2013-01-23添加
                showZiDingYiInput();

                //注册房屋类型下拉框的change事件：2013-01-23添加
                clickSelHouseType();
            }

            //初始化便利设施收费价格
            InitFaciPrice("True");

            //下一步点击按钮
            var doubleClick = true;
            $("#btnNextStep").click(function () {
                $("#btnNextStep").css("background-position", "0 -70px");
                if (doubleClick == true) {
                    doubleClick = false;
                    var bol = true; //bol为true才允许提交

                    //Floor
                    var validFloor = true;
                    if (!isNaN($("#iFloor").val()) && Number($("#iFloor").val()) >= 1 && Number($("#iFloor").val()) <= 1000 && Number($("#iFloor").val()) <= Number($("#AllFloor").val())) {
                        $("#errorFloor").hide();
                    } else if ($.trim($("#iFloor").val()) == "") {
                        $("#errorFloor").hide();
                    } else {
                        bol = false;
                        validFloor = false;
                        $("#iFloor").css("border-color", "red");
                        //$("#errorFloor").show();
                    }
                    if (!isNaN($("#AllFloor").val()) && Number($("#AllFloor").val()) >= 1 && Number($("#AllFloor").val()) <= 1000) {
                        $("#errorFloor").hide();
                    } else if ($.trim($("#AllFloor").val()) == "") {
                        $("#errorFloor").hide();
                    } else {
                        bol = false;
                        validFloor = false;
                        $("#AllFloor").css("border-color", "red");
                        //$("#errorFloor").show();
                    }
                    if ($.trim($("#iFloor").val()) == "" && $.trim($("#AllFloor").val()) != "") {
                        bol = false;
                        validFloor = false;
                        $("#iFloor").css("border-color", "red"); $("#AllFloor").css("border-color", "black");
                    }
                    else if ($.trim($("#iFloor").val()) != "" && $.trim($("#AllFloor").val()) == "") {
                        bol = false;
                        validFloor = false;
                        $("#AllFloor").css("border-color", "red"); $("#iFloor").css("border-color", "black");
                    }
                    if (validFloor) {
                        $("#errorFloor").hide();
                    } else {
                        $("#errorFloor").show();
                    }


                    //房间面积
                    var type = "^[0-9]*[1-9][0-9]*$";
                    var re = new RegExp(type);
                    if (!isNaN($("#txthouserarea1").val()) && Number($("#txthouserarea1").val()) >= 1 && Number($("#txthouserarea1").val()) <= 100000 && $("#txthouserarea1").val().indexOf('0') != 0 && $.trim($("#txthouserarea1").val()).match(re) != null) {
                        $("#errorHouseArea").hide();
                    } else if ($("#txthouserarea1").val() == "" || $("#txthouserarea1").val() == "请输入整数") {
                        bol = false;
                        $("#txthouserarea1").css("border-color", "red");
                        $("#errorHouseArea").html("请正确输入房间面积，需为大于0的整数").show(); //blank
                    } else if (isNaN($("#txthouserarea1").val()) || $("#txthouserarea1").val().indexOf('0') == 0 || $.trim($("#txthouserarea1").val()).match(re) == null) {
                        $("#txthouserarea1").css("border-color", "red");
                        bol = false;
                        $("#errorHouseArea").html("请正确输入房间面积，需为大于0的整数").show(); //is not a number
                    } else {
                        bol = false;
                        $("#txthouserarea1").css("border-color", "red");
                        $("#errorHouseArea").html("房间面积必须<100000").show();
                    }

                    //卫生间类型
                    if ($("#sBedRoomNum").val() != "0" && (!document.getElementById("publicwc").checked && !document.getElementById("privatewc").checked)) {
                        bol = false;
                        $("#errorWCType").show();
                    } else {
                        $("#errorWCType").hide();
                    }
                    //是否与房东共住
                    var liveval = $('input:radio[name="ctl00$ctl00$body$RoomBody$RadioLive"]:checked').val();
                    if (liveval == null) {
                        bol = false;
                        $("#SpanLive").show();
                    } else {
                        $("#SpanLive").hide();
                    }

                    if ("True" == "True") {//中国房源
                        var oneTitleLength = Number(getsLength($.trim($("#txtHouseTitle1").val()).replace("好的标题会让您的房屋成为一个亮点", "")));
                        if (isChinese == "True") {//6-17个汉字
                            if (parseInt(oneTitleLength / 2) < 6 || parseInt(oneTitleLength / 2) > 17) {
                                bol = false;
                                $("#txtHouseTitle1").css("border-color", "red");
                                $("#txtHouseTitle1Div").html("标题长度在6-17个汉字之间！").show();
                            } else if ($.trim($("#txtHouseTitle1").val()).indexOf('学区') > 0) {
                                bol = false;
                                $("#txtHouseTitle1").css("border-color", "red");
                                $("#txtHouseTitle1Div").html("输入含有敏感词，请重新输入！");
                                $("#txtHouseTitle1Div").show();
                            }
                           
                        } else if (isChinese == "False") {//6-60个字符
                            if (oneTitleLength < 12 || oneTitleLength > maxTitleLength) {
                                bol = false;
                                $("#txtHouseTitle1").css("border-color", "red");
                                $("#txtHouseTitle1Div").html("标题长度在6-17个汉字之间！英文").show();
                            }
                        }
                      
                        //外语各种描述字段过滤联系方式、长度验证
                        /////////////////////////////////////////////////////////////////////////////////////////////////////////
                        //2012-06-01 备注
                        if ($("#span2").html().substring(0, 1) == "已" || $("#span2").html().indexOf("-") > 0) {
                            bol = false;
                            $("#txtBak").css("border-color", "red");
                            $("#txtBakDiv").html("请注意备注长度！").show();
                        }
                        //2012-07-05 特色标签
                        //母语：过滤联系方式,并检查字数
                        bol = ContactAndMaxLength($("#txtHouseTitle1"), bol, "好的标题会让您的房屋成为一个亮点");
                        bol = ContactAndMaxLength($("#txtBak"), bol, "");
                        bol = ContactAndMaxLength($("#txtRoomdescription"), bol, "如户型、面积、装修、家具家电、网络情况等");
                        // bol = ContactAndMaxLength($("#LandMarks"), bol, "");
                        bol = ContactAndMaxLength($("#Traffic"), bol, "");
                        bol = ContactAndMaxLength($("#arroundFacility"), bol, "");
                        bol = ContactAndMaxLength($("#attractions"), bol, "");
                        bol = ContactAndMaxLength($("#other"), bol, "");
                        //外语：过滤联系方式,并检查字数
                        bol = TwoContactAndMaxLength($("#enHouseTitle"), bol, "好的标题会让您的房屋成为一个亮点");
                        bol = TwoContactAndMaxLength($("#enRoomdescription"), bol, "");
                        bol = TwoContactAndMaxLength($("#enGeographicalPosition"), bol, "");
                        bol = TwoContactAndMaxLength($("#enTransportation"), bol, "");
                        bol = TwoContactAndMaxLength($("#enAroundSupport"), bol, "");
                        bol = TwoContactAndMaxLength($("#enScenicSpotsAround"), bol, "");
                        bol = TwoContactAndMaxLength($("#enOtherDescription"), bol, "");
                        //房屋自定义类型：2013-01-23添加
                        bol = checkHouseTypeLength($.trim($("#houseTypeInput").val()));

                        //便利设施收费数字验证
                        bol = faciMoneyValid(bol, 9999);
                        //便利设施必须至少选择一项
                        var choosebianli = 0;
                        if (ReturnCheck("ckbCanShower")) {  //淋浴
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbBathSupplies")) {  //洗浴用品
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbAllDayHotWater")) {  //24小时热水
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbSlipper")) {  //拖鞋
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbHotTub")) {  //热水浴缸
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbWasher")) {  //饮水机
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbTv")) {  //电视
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbIndoorFireplace")) {  //电冰箱
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbComputer")) {  //电脑
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbHeating")) {  //暖气
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbElevatorinBuilding")) {  //电梯
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbHandicapAccessible")) {  //无障碍设施
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbDoorman")) {  //保安
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbBuzzer")) {  //对讲门禁系统
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbGym")) {  //免费健身房
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbPool")) {  //免费游泳池
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbBreakfast")) {  //免费早餐
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbCanSmoking")) {  //可以吸烟
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbpet")) {  //可携带宠物
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbReceptionChild")) {  //可接待家庭/孩子
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbAirCondtioning")) {  //空调/孩子
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbWasher")) {  //洗衣机
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbInternet")) {  //有线网络
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbWirelessInternet")) {  //无线网络
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbParkingIncluded")) {  //停车位
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbMahjongDesk")) {  //自动麻将桌
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbCanPickUp")) {  //可以接送
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbKitchen")) {  //可用厨房
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbTicketAgent")) {  //票务代理
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbLuggageDeposit")) {  //行李寄存
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbAddBed")) {  //加床服务
                            choosebianli = choosebianli + 1;
                        }
                        if (ReturnCheck("ckbSuitableForEvents")) {  //适合举办活动
                            choosebianli = choosebianli + 1;
                        }
                        //<div id="ckbRoomDescriptionError" style="" class="SituationWarning">请填写房间描述</div>
                        if (choosebianli <= 0) {
                            bol = false;
                            $("#ckbRoomDescriptionError").html("请勾选便利设施！").show();
                        } else {
                            $("#ckbRoomDescriptionError").hide();
                        }
                        //便利设施必须至少选择一项end

                        //页面滚动到验证不通过的地方
                        var scrol = 0;
                        $.each($("[class^='SituationWarning']"), function (n, v) {
                            if ($(v).css("display") != "none") {
                                bol = false;
                                if (scrol == 0) {
                                    var offset = $(v).offset();
                                    scrol = 1;
                                    window.scrollTo($(v).width(), Number(offset.top) - 150);
                                }
                            }
                        });
                        //post
                        if (bol) {
                            var dtime = new Date().getTime();
                            var wcType = ""; //卫生间类型
                            var ckRoomsTip = "";  //房间布局提示
                            if ($("#sBedRoomNum").val() == "0") {
                                wcType = "0";
                            } else {
                                if (document.getElementById("publicwc").checked) { wcType = "1"; }
                                if (document.getElementById("privatewc").checked) { wcType = "2"; }
                            }
                            if (document.getElementById("CKRoomsTipInfo").checked) {
                                ckRoomsTip = 1;
                            } else {
                                ckRoomsTip = 0;
                            }

                            var miaoshu = $("#txtRoomdescription").val().replace("如户型、面积、装修、家具家电、网络情况等", "");
                            // var landMarks = $("#LandMarks").val().replace("如具体地点、周围的标志性建筑等", "");
                            var traffic = $("#Traffic").val().replace("如公交站、地铁线路、如何去往机场或火车站等", "");
                            var facility = $("#arroundFacility").val().replace("如商场、超市、银行、医院等", "");
                            var attraction = $("#attractions").val().replace("如躺在床上就能欣赏海景等", "");
                            var theOther = $("#other").val();
                            var numval = 0;
                            //+ landMarks
                            if (getsLength(miaoshu + traffic + facility + attraction + theOther) >= 400) {
                                numval = 10;
                            }
                            var taginf = "";
                            if ($(".RoomTagList li") != "undefined" && $(".RoomTagList li").length > 0) {
                                $.each($(".RoomTagList li"), function (n, v) {
                                    taginf += $.trim($(v).html().replace("<A></A>", "").replace("<a></a>", "")) + "|";
                                });
                            }
                            //2013-01-23添加 begin
                            var houseTypeValue = $.trim($("#houseType option:selected").val());
                            var houseTypeString = $.trim($("#houseTypeInput").val());
                            if (houseTypeValue == "19") {
                                houseTypeValue = validateHouseType(houseTypeString);
                            }
                            //2013-01-23添加 end

                            $.post("/publish/Ajax/DescriptionEnAction.aspx", {
                                houseid: houseid,
                                numval: numval,
                                idoSchedual: idoSchedual,
                                housetype: houseTypeValue, //2013-01-23修改
                                //housetype: $.trim($("#houseType").val()),
                                roomtype: $.trim($("#roomType").val()),
                                live: $.trim(liveval),
                                floor: $.trim($("#iFloor").val()),
                                allFloor: $.trim($("#AllFloor").val()),
                                sroomNum: $.trim($("#sroomNum").val()),
                                sBedNum: $("#sBedNum").val(),
                                sBedType: $("#sBedType").val(),
                                //sLiveManNum: $("#sLiveManNum").val(),
                                //Add 2012-11-07
                                sLiveManNum: $("#sLiveManNum").val(),  //标准可住人数

                                sLiveManNumEwAdd: $("#sLiveManNumEwAdd").val(),  //额外可住人数

                                ZiDingYiHouseTypeStr: houseTypeString, //房东自定义房屋类型：2013-01-23添加

                                txthouserarea: $("#txthouserarea1").val(),
                                HouseAreaType: $("#HouseAreaType").val(),
                                sBedRoomNum: $("#sBedRoomNum").val(),
                                wcType: wcType,
                                rooms: $('#Rooms :selected').val(),
                                ckRoomsTip: ckRoomsTip,

                                LandlordTag: escape(taginf),

                                txtHouseTitle: escape($.trim($("#txtHouseTitle1").val().replace("好的标题会让您的房屋成为一个亮点", ""))),
                                txtBak: escape($.trim($("#txtBak").val().replace("辨别房间的参考信息，仅自己可见", ""))),
                                txtRoomdescription: escape($.trim(miaoshu.replace("如户型、面积、装修、家具家电、网络情况等", ""))),
                                //                                LandMarks: escape((($.trim($("#LandMarks").val()) == "如具体地点、周围的标志性建筑等") ? "" : $.trim($("#LandMarks").val()))),
                                Traffic: escape((($.trim($("#Traffic").val()) == "如公交站、地铁线路、如何去往机场或火车站等") ? "" : $.trim($("#Traffic").val()))),
                                arroundFacility: escape((($.trim($("#arroundFacility").val()) == "如商场、超市、银行、医院等") ? "" : $.trim($("#arroundFacility").val()))),
                                attractions: escape((($.trim($("#attractions").val()) == "如躺在床上就能欣赏海景等") ? "" : $.trim($("#attractions").val()))),
                                other: escape($.trim($("#other").val())),
                                enHouseTitle: escape($.trim($("#enHouseTitle").val().replace("好的标题会让您的房屋成为一个亮点", ""))), //外语描述开始
                                enRoomdescription: escape($.trim($("#enRoomdescription").val().replace("如户型、面积、装修、家具家电、网络情况等", ""))),
                                enGeographicalPosition: escape($.trim($("#enGeographicalPosition").val().replace("如具体地点、周围的标志性建筑等", ""))),
                                enTransportation: escape($.trim($("#enTransportation").val().replace("如公交站、地铁线路、如何去往机场或火车站等", ""))),
                                enAroundSupport: escape($.trim($("#enAroundSupport").val().replace("如商场、超市、银行、医院等", ""))),
                                enScenicSpotsAround: escape($.trim($("#enScenicSpotsAround").val().replace("如躺在床上就能欣赏海景等", ""))),
                                enOtherDescription: escape($.trim($("#enOtherDescription").val())),


                                ckbTv: ReturnCheck("ckbTv"),
                                ckbHeating: ReturnCheck("ckbHeating"),
                                ckbBreakfast: ReturnCheck("ckbBreakfast"),
                                //ckbCableTV: ReturnCheck("ckbCableTV"),
                                // txtCableTVPrice: $.trim($("#txtCableTV").val()), ///////////////////////////
                                ckbKitchen: ReturnCheck("ckbKitchen"),

                                ckbPool: ReturnCheck("ckbPool"),
                                ckbIndoorFireplace: ReturnCheck("ckbIndoorFireplace"),
                                ckbCanSmoking: ReturnCheck("ckbCanSmoking"),
                                ckbGym: ReturnCheck("ckbGym"),
                                ckbWasher: ReturnCheck("ckbWasher"),

                                ckbInternet: ReturnCheck("ckbInternet"),
                                txtInternetPrice: $.trim($("#txtInternet").val()), ///////////////////////////////////////
                                ckbElevatorinBuilding: ReturnCheck("ckbElevatorinBuilding"),
                                ckbAirCondtioning: ReturnCheck("ckbAirCondtioning"),

                                ckbWirelessInternet: ReturnCheck("ckbWirelessInternet"),
                                txtWirelessInternetPrice: $.trim($("#txtWire").val()), ////////////////////////////////
                                //Add 2013-01-16
                                ckbMahjongDesk: ReturnCheck("ckbMahjongDesk"),
                                txtMahjongDesk: $.trim($("#txtMahjongDesk").val()), ////////////////////////////////

                                ckbHandicapAccessible: ReturnCheck("ckbHandicapAccessible"),
                                ckbAllDayHotWater: ReturnCheck("ckbAllDayHotWater"),
                                ckbSuitableForEvents: ReturnCheck("ckbSuitableForEvents"),
                                txtSuitableForEventsPrice: $.trim($("#txtEvents").val()), //////////////
                                ddlSuitableForEventsType: $('#ddlSuitableForEventsType :selected').val(), //////////////
                                ckbDoorman: ReturnCheck("ckbDoorman"),
                                ckbCanShower: ReturnCheck("ckbCanShower"),
                                ckbParkingIncluded: ReturnCheck("ckbParkingIncluded"),
                                txtParkingIncludedPrice: $.trim($("#txtParking").val()), /////////////////////////
                                ckbBuzzer: ReturnCheck("ckbBuzzer"),
                                ckbHotTub: ReturnCheck("ckbHotTub"),
                                ckbpet: ReturnCheck("ckbpet"),
                                //ckbSuperMarket: ReturnCheck("ckbSuperMarket"),
                                ckbReceptionChild: ReturnCheck("ckbReceptionChild"),  //是否可接待家庭/孩子
                                // ckbBank: ReturnCheck("ckbBank"),
                                // ckbTableWare: ReturnCheck("ckbTableWare"),
                                //add 20151215 新加设施
                                ckbCanPickUp: ReturnCheck("ckbCanPickUp"),
                                ckbLuggageDeposit: ReturnCheck("ckbLuggageDeposit"),
                                ckbAddBed: ReturnCheck("ckbAddBed"),
                                ckbTicketAgent: ReturnCheck("ckbTicketAgent"),
                                ckbBathSupplies: ReturnCheck("ckbBathSupplies"),
                                ckbSlipper: ReturnCheck("ckbSlipper"),
                                ckbComputer: ReturnCheck("ckbComputer"),
                                ckbWaterDispenser: ReturnCheck("ckbWaterDispenser"),
                                //add 20151215 新加收费项目
                                txtCanpickUpPrice: $.trim($("#txtCanpickUpPrice").val()), //add 20151215 可以接送
                                txtKitchenPrice: $.trim($("#txtKitchenPrice").val()), //add 20151215 可用厨房
                                txtWasherPrice: $.trim($("#txtWasherPrice").val()), //add 20151215  洗衣机
                                txtAirCondtioningPrice: $.trim($("#txtAirCondtioningPrice").val()), //add 20151215 空调
                                txtLuggageDepositPrice: $.trim($("#txtLuggageDepositPrice").val()), //add 20151215 行李寄存
                                txtAddBedPrice: $.trim($("#txtAddBedPrice").val()), //add 20151215 加床服务
                                txtTicketAgentPrice: $.trim($("#txtTicketAgentPrice").val()), //add 20151215 票务代理
                                dtime: dtime
                            }, function (data) {
                                if (data == "3") {
                                    //alert("保存成功！");
                                    window.location.href = "/room/newthreeplan/324548";
                                } else if (data == "5") {
                                    alert("房源标题输入含有敏感词，请重新输入！");
                                } else {
                                    alert("保存失败！");
                                }
                                doubleClick = true;
                                $("#btnNextStep").css("background-position", "0 2px");
                            });
                        } else {
                            doubleClick = true;
                            $("#btnNextStep").css("background-position", "0 2px");
                        }
                    } else if ("True" == "False") {//国外房源
                        //标题长度
                        //备注长度
                        //过滤联系方式,并检查字数
                        bol = OneContactAndMaxLengthEn($("#oneHouseTitle"), bol, "好的标题会让您的房屋成为一个亮点");
                        bol = OneContactAndMaxLengthEn($("#oneTxtBak"), bol, "辨别房间的参考信息，仅自己可见");
                        bol = OneContactAndMaxLengthEn($("#oneTxtRoomdescription"), bol, "如户型、面积、装修、家具家电、网络情况等");
                        bol = TwoContactAndMaxLengthEn($("#twoHouseTitle"), bol, "好的标题会让您的房屋成为一个亮点");
                        bol = TwoContactAndMaxLengthEn($("#twoTxtRoomdescription"), bol, "如户型、面积、装修、家具家电、网络情况等");
                        //页面滚动到验证不通过的地方
                        var scrol = 0;
                        $.each($("[class^='SituationWarning']"), function (n, v) {
                            if ($(v).css("display") != "none") {
                                bol = false;
                                if (scrol == 0) {
                                    var offset = $(v).offset();
                                    scrol = 1;
                                    window.scrollTo($(v).width(), Number(offset.top) - 150);
                                }
                            }
                        });
                        if (bol) {
                            var dtime = new Date().getTime();
                            var wcType = ""; //卫生间类型
                            if ($("#sBedRoomNum").val() == "0") {
                                wcType = "0";
                            } else {
                                if (document.getElementById("publicwc").checked) { wcType = "1"; }
                                if (document.getElementById("privatewc").checked) { wcType = "2"; }
                            }
                            var miaoshu = $("#oneTxtRoomdescription").val().replace("Type of apartment, size, furnishing, appliances, Internet accessibilities, etc.", "");
                            var numval = 0;
                            if (getsLength(miaoshu) >= 400) {
                                numval = 10;
                            }
                            $.post("/publish/Ajax/DescriptionEnAction.aspx", {
                                houseid: houseid,
                                numval: numval,
                                idoSchedual: idoSchedual,
                                housetype: $.trim($("#houseType").val()),
                                roomtype: $.trim($("#roomType").val()),
                                floor: $.trim($("#iFloor").val()),
                                allFloor: $.trim($("#AllFloor").val()),
                                sroomNum: $.trim($("#sroomNum").val()),
                                sBedNum: $("#sBedNum").val(),
                                sBedType: $("#sBedType").val(),
                                //                                sLiveManNum: $("#sLiveManNum").val(),
                                //Add 2012-11-07
                                sLiveManNum: $("#sLiveManNum").val(),  //标准可住人数
                                sLiveManNumEwAdd: $("#sLiveManNumEwAdd").val(),  //额外可住人数
                                live: $.trim(liveval),
                                txthouserarea: $("#txthouserarea1").val(),
                                HouseAreaType: $("#HouseAreaType").val(),
                                sBedRoomNum: $("#sBedRoomNum").val(),
                                wcType: wcType,

                                oneHouseTitle: escape($.trim($("#oneHouseTitle").val().replace("好的标题会让您的房屋成为一个亮点", ""))),
                                oneTxtBak: escape($.trim($("#oneTxtBak").val().replace("辨别房间的参考信息，仅自己可见", ""))),
                                oneTxtRoomdescription: escape($.trim(miaoshu.replace("如户型、面积、装修、家具家电、网络情况等", ""))),
                                twoHouseTitle: escape($.trim($("#twoHouseTitle").val().replace("好的标题会让您的房屋成为一个亮点", ""))), //外语描述
                                twoTxtRoomdescription: escape($.trim($("#twoTxtRoomdescription").val().replace("如户型、面积、装修、家具家电、网络情况等", ""))),

                                ckbTv: ReturnCheck("ckbTv"),
                                ckbHeating: ReturnCheck("ckbHeating"),
                                ckbBreakfast: ReturnCheck("ckbBreakfast"),
                                // ckbCableTV: ReturnCheck("ckbCableTV"),
                                ckbKitchen: ReturnCheck("ckbKitchen"),
                                ckbPool: ReturnCheck("ckbPool"),
                                ckbIndoorFireplace: ReturnCheck("ckbIndoorFireplace"),
                                ckbCanSmoking: ReturnCheck("ckbCanSmoking"),
                                ckbGym: ReturnCheck("ckbGym"),
                                ckbWasher: ReturnCheck("ckbWasher"),
                                ckbInternet: ReturnCheck("ckbInternet"),
                                ckbElevatorinBuilding: ReturnCheck("ckbElevatorinBuilding"),
                                ckbAirCondtioning: ReturnCheck("ckbAirCondtioning"),
                                ckbWirelessInternet: ReturnCheck("ckbWirelessInternet"),
                                ckbHandicapAccessible: ReturnCheck("ckbHandicapAccessible"),
                                ckbAllDayHotWater: ReturnCheck("ckbAllDayHotWater"),
                                ckbSuitableForEvents: ReturnCheck("ckbSuitableForEvents"),
                                ckbDoorman: ReturnCheck("ckbDoorman"),
                                ckbCanShower: ReturnCheck("ckbCanShower"),
                                ckbParkingIncluded: ReturnCheck("ckbParkingIncluded"),
                                ckbBuzzer: ReturnCheck("ckbBuzzer"),
                                ckbHotTub: ReturnCheck("ckbHotTub"),
                                ckbpet: ReturnCheck("ckbpet"),
                                //ckbSuperMarket: ReturnCheck("ckbSuperMarket"),
                                ckbReceptionChild: ReturnCheck("ckbReceptionChild"),  //是否可接待家庭/孩子
                                //ckbBank: ReturnCheck("ckbBank"),
                                //ckbTableWare: ReturnCheck("ckbTableWare"),
                                ckbFirePlace: ReturnCheck("ckbFirePlace"), //室内壁炉
                                ckbDryer: ReturnCheck("ckbDryer"), //烘干机
                                //add 20151215 新加设施
                                ckbCanPickUp: ReturnCheck("ckbCanPickUp"),
                                ckbLuggageDeposit: ReturnCheck("ckbLuggageDeposit"),
                                ckbAddBed: ReturnCheck("ckbAddBed"),
                                ckbTicketAgent: ReturnCheck("ckbTicketAgent"),
                                ckbBathSupplies: ReturnCheck("ckbBathSupplies"),
                                ckbSlipper: ReturnCheck("ckbSlipper"),
                                ckbComputer: ReturnCheck("ckbComputer"),
                                ckbWaterDispenser: ReturnCheck("ckbWaterDispenser"),
                                //add 20151215 新加收费项目,国外房源价格都默认为0
                                // txtCanpickUpPrice: $.trim($("#txtCanpickUpPrice").val()), //add 20151215 可以接送
                                // txtKitchenPrice: $.trim($("#txtKitchenPrice").val()), //add 20151215 可用厨房
                                // txtWasherPrice: $.trim($("#txtWasherPrice").val()), //add 20151215  洗衣机
                                // txtAirCondtioningPrice: $.trim($("#txtAirCondtioningPrice").val()), //add 20151215 空调
                                // txtLuggageDepositPrice: $.trim($("#txtLuggageDepositPrice").val()), //add 20151215 行李寄存
                                // txtAddBedPrice: $.trim($("#txtAddBedPrice").val()), //add 20151215 加床服务
                                // txtTicketAgentPrice: $.trim($("#txtTicketAgentPrice").val()), //add 20151215 票务代理
                                dtime: dtime
                            }, function (data) {
                                if (data == "3") {
                                    //alert("保存成功！");
                                    window.location.href = "/room/newthreeplan/324548";
                                } else {
                                    alert("保存失败！");
                                }
                                doubleClick = true;
                                $("#btnNextStep").css("background-position", "0 2px");
                            });
                        } else {
                            doubleClick = true;
                            $("#btnNextStep").css("background-position", "0 2px");
                        }
                    }
                } else {
                    $("#btnNextStep").css("background-position", "0 2px");
                }
            });

            function ReturnCheck(idd) { return document.getElementById(idd).checked; }
            //是否包含邮箱、qq、手机联系方式
            $("#writeEnglishDes").click(function () {
                if ($("#tbEnglish").css("display") == "none") {
                    $("#tbEnglish").show();
                } else {
                    $("#tbEnglish").hide();
                }
            });
            $("#writeChineseDes").click(function () {
                if ($("#tbChinese").css("display") == "none") {
                    $("#tbChinese").show();
                } else {
                    $("#tbChinese").hide();
                }
            });
            function CheckMailQQTel(strVal) {
                var va = true;
                var regtel = new RegExp("(1[0-9]{10})");
                var regmail = new RegExp("\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+");
                var regqq = new RegExp("[0-9]{5,12}");
                if (getsLength(strVal) != getsLength(strVal.replace(regtel, ""))) {
                    va = false;
                }
                if (getsLength(strVal) != getsLength(strVal.replace(regmail, ""))) {
                    va = false;
                }
                if (getsLength(strVal) != getsLength(strVal.replace(regqq, ""))) {
                    va = false;
                }
                return va;
            }
            //过滤联系方式、检测字数上限
            function ContactAndMaxLength(obj, ibol, autovalue) {
                if (obj.attr("id") == "txtHouseTitle1") {//如果是标题框
                    if ($.trim($.trim(obj.val())) == "" || $.trim($.trim(obj.val())) == autovalue) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("标题长度在6-17个汉字之间！").show();
                        obj.css("border-color", "red");
                    } else if (!CheckMailQQTel($.trim(obj.val()))) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("标题不能包含联系方式！").show();
                        obj.css("border-color", "red");
                    } else if (Number(getsLength($.trim(obj.val()))) > 35 || Number(getsLength($.trim(obj.val()))) < 12) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("标题长度在12-35个字符之间！").show();
                        obj.css("border-color", "red");
                    } else if ($.trim(obj.val()).indexOf('学区') > 0) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("输入含有敏感词，请重新输入！").show();
                        obj.css("border-color", "red");
                    }
                     else if ("上海市" == "北京市") {
                        if ($.trim(obj.val()).indexOf('旅馆') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"旅馆"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('旅店') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"旅店"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('饭店') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"饭店"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('宾馆') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"宾馆"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('酒店') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"酒店"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('招待所') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"招待所"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('客栈') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"客栈"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('浴池') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"浴池"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('洗浴') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"洗浴"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('计时休息') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"计时休息"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('酒店式公寓') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"酒店式公寓"！').show();
                        }
                        else if ($.trim(obj.val()).indexOf('住宿') > -1) {
                            bol = false;
                            $("#txtHouseTitle1").css("border-color", "red");
                            $("#" + obj.attr("id") + "Div").html('不能输入"住宿"！').show();
                        }




                     }
                    
                    else {
                        $("#" + obj.attr("id") + "Div").hide();
                        obj.css("border-color", "");
                    }
                } else if (obj.attr("id") == "txtBak") {
                    if ($.trim($.trim(obj.val())) != "辨别房间的参考信息，仅自己可见") {
                        if (Number(getsLength($.trim(obj.val()))) > 35) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("请注意备注长度！").show();
                            obj.css("border-color", "red");
                        } else {
                            $("#" + obj.attr("id") + "Div").hide();
                            obj.css("border-color", "");
                        }
                    }
                } else if (obj.attr("id") == "txtRoomdescription") {//如果是描述
                    if ($.trim($.trim(obj.val())) == "" || $.trim($.trim(obj.val())) == autovalue) {
                        ibol = false;
                        obj.css("border-color", "red");
                        $("#" + obj.attr("id") + "Div").html("请填写房间描述").show();
                    } else if (!CheckMailQQTel($.trim(obj.val()))) {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 2000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式，且字数不能超过1000字").show();

                            obj.css("border-color", "red");
                        } else {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式").show();
                            obj.css("border-color", "red");
                        }
                    } else {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 2000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("字数不能超过1000字").show();

                            obj.css("border-color", "red");
                        } else {
                            $("#" + obj.attr("id") + "Div").hide();
                            obj.css("border-color", "");
                        }
                    }
                } else {//其他框既监测联系方式又监测字数
                    if (!CheckMailQQTel($.trim(obj.val()))) {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 2000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式，且字数不能超过1000字").show();

                            obj.css("border-color", "red");
                        } else {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式").show();
                            obj.css("border-color", "red");
                        }
                    } else {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 2000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("字数不能超过1000字").show();

                            obj.css("border-color", "red");
                        } else {
                            $("#" + obj.attr("id") + "Div").hide();
                            obj.css("border-color", "");
                        }
                    }

                }
                return ibol;
            }
            function TwoContactAndMaxLength(obj, ibol, autovalue) {
                if (obj.attr("id") == "enHouseTitle") {//如果是标题框
                    if (!CheckMailQQTel($.trim(obj.val()))) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("不能包含联系方式！").show();
                        obj.css("border-color", "red");
                    } else if ($.trim(obj.val()) != autovalue && Number(getsLength($.trim(obj.val()))) > maxTitleLength) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("标题长度在12-35个字符之间！").show();
                        obj.css("border-color", "red");
                    } else {
                        $("#" + obj.attr("id") + "Div").hide();
                        obj.css("border-color", "");
                    }
                } else if (obj.attr("id") == "enRoomdescription") {//如果是描述
                    if (!CheckMailQQTel($.trim(obj.val()))) {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 4000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式，且字数不能超过4000字符").show();

                            obj.css("border-color", "red");
                        } else {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式").show();
                            obj.css("border-color", "red");
                        }
                    } else {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 4000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("字数不能超过4000字符").show();

                            obj.css("border-color", "red");
                        } else {
                            $("#" + obj.attr("id") + "Div").hide();
                            obj.css("border-color", "");
                        }
                    }
                } else {//其他框既监测联系方式又监测字数
                    if (!CheckMailQQTel($.trim(obj.val()))) {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 4000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式，且字数不能超过4000字").show();

                            obj.css("border-color", "red");
                        } else {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式").show();
                            obj.css("border-color", "red");
                        }
                    } else {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 4000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("字数不能超过4000字符").show();

                            obj.css("border-color", "red");
                        } else {
                            $("#" + obj.attr("id") + "Div").hide();
                            obj.css("border-color", "");
                        }
                    }

                }
                return ibol;
            }
            //国外逻辑描述One验证
            function OneContactAndMaxLengthEn(obj, ibol, autovalue) {
                if (obj.attr("id") == "oneHouseTitle") {//如果是标题框
                    if (obj.attr("id") == "oneHouseTitle" && $.trim(obj.val()) == autovalue) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("请填写房间标题").show();
                        obj.css("border-color", "red");
                    }
                    else if (!CheckMailQQTel($.trim(obj.val()))) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("标题不能包含联系方式！").show();
                        obj.css("border-color", "red");
                    } else if (obj.attr("id") == "oneHouseTitle" && Number(getsLength($.trim(obj.val()))) > maxTitleLength || Number(getsLength($.trim(obj.val()))) < 12) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("标题长度在12-35个字符之间！").show();
                        obj.css("border-color", "red");
                    }
                    else {
                        $("#" + obj.attr("id") + "Div").hide();
                        obj.css("border-color", "");
                    }
                } else if (obj.attr("id") == "oneTxtBak" && $.trim(obj.val()) != autovalue && Number(getsLength($.trim(obj.val()))) > maxTitleLength) {
                    ibol = false;
                    $("#" + obj.attr("id") + "Div").html("备注内容过长").show();
                    obj.css("border-color", "red");
                }
                else if (obj.attr("id") == "oneTxtRoomdescription") {//如果是描述

                    if ($.trim($.trim(obj.val())) == autovalue) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("请填写房间描述").show();
                        obj.css("border-color", "red");
                    }
                    else if (!CheckMailQQTel($.trim(obj.val()))) {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 4000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式，且字数不能超过4000字符").show();

                            obj.css("border-color", "red");
                        } else {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式").show();
                            obj.css("border-color", "red");
                        }
                    } else {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 4000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("字数不能超过4000字符").show();

                            obj.css("border-color", "red");
                        } else {
                            $("#" + obj.attr("id") + "Div").hide();
                            obj.css("border-color", "");
                        }
                    }
                }
                return ibol;
            }
            //国外逻辑描述Two验证
            function TwoContactAndMaxLengthEn(obj, ibol, autovalue) {
                if ($.trim($.trim(obj.val())) == autovalue)
                { }
                else if (obj.attr("id") == "twoHouseTitle") {//如果是标题框
                    if (!CheckMailQQTel($.trim(obj.val()))) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("标题不能包含联系方式！").show();
                        obj.css("border-color", "red");
                    } else if (Number(getsLength($.trim(obj.val()))) > maxTitleLength || Number(getsLength($.trim(obj.val()))) < 12) {
                        ibol = false;
                        $("#" + obj.attr("id") + "Div").html("标题长度在12-35个字符之间！").show();
                        obj.css("border-color", "red");
                    } else {
                        $("#" + obj.attr("id") + "Div").hide();
                        obj.css("border-color", "");
                    }
                } else if (obj.attr("id") == "twoTxtRoomdescription") {//如果是描述
                    if (!CheckMailQQTel($.trim(obj.val()))) {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 4000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式，且字数不能超过2000汉字").show();

                            obj.css("border-color", "red");
                        } else {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("不能包含联系方式").show();
                            obj.css("border-color", "red");
                        }
                    } else {
                        if (Number(getsLength($.trim($.trim(obj.val())))) > 4000) {
                            ibol = false;
                            $("#" + obj.attr("id") + "Div").html("字数不能超过2000汉字").show();

                            obj.css("border-color", "red");
                        } else {
                            $("#" + obj.attr("id") + "Div").hide();
                            obj.css("border-color", "");
                        }
                    }
                }
                return ibol;
            }
            //页面初始化便利设施收费价格
            function InitFaciPrice(jsIsChina) {
                if (jsIsChina == "True") {
                    //20151211
                    //                    if (document.getElementById("ckbCableTV").checked) {
                    //                        $("#spanCableTVPrice").show();
                    //                    }
                    //add20151516 新增收费项目
                    if (document.getElementById("ckbWasher").checked) {
                        $("#spanInternetPrice").show();
                    }
                    if (document.getElementById("ckbAirCondtioning").checked) {
                        $("#spanAirCondtioningPrice").show();
                    }
                    if (document.getElementById("ckbCanPickUp").checked) {
                        $("#spanCanPickUpPrice").show();
                    }
                    if (document.getElementById("ckbLuggageDeposit").checked) {
                        $("#spanLuggageDepositPrice").show();
                    }
                    if (document.getElementById("ckbKitchen").checked) {
                        $("#spanKitchenPrice").show();
                    }
                    if (document.getElementById("ckbAddBed").checked) {
                        $("#spanAddBedPrice").show();
                    }
                    if (document.getElementById("ckbTicketAgent").checked) {
                        $("#spanTicketAgentPrice").show();
                    }
                    //add20151516 新增收费项目 end
                    if (document.getElementById("ckbInternet").checked) {
                        $("#spanWasherPrice").show();
                    }
                    if (document.getElementById("ckbWirelessInternet").checked) {
                        $("#spanWirelessInternetPrice").show();
                    }
                    //自动麻将桌
                    if (document.getElementById("ckbMahjongDesk").checked) {
                        $("#spanMahjongDesk").show();
                    }
                    if (document.getElementById("ckbSuitableForEvents").checked) {
                        $("#spanSuitableForEventsPrice").show();
                    }
                    if (document.getElementById("ckbParkingIncluded").checked) {
                        $("#spanParkingIncludedPrice").show();
                    }
                }
            }
            //便利设施收费数字验证,待优化
            function faciMoneyValid(ibol, max) {
                var valid = true;
                //                if (document.getElementById("ckbCableTV").checked) {
                //                    var obj = $("#txtCableTV");
                //                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                //                        $("#errorFaci1").hide();
                //                    } else {
                //                        $("#errorFaci1").show();
                //                        ibol = false;
                //                    }
                //                } else {
                //                    $("#errorFaci1").hide();
                //                }
                //add20151216 新加收费项目洗衣机，空调，可以接送，行李寄存，可用厨房，加床服务和票务代理
                if (document.getElementById("ckbWasher").checked) {
                    var obj = $("#txtWasherPrice");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci1").hide();
                    } else {
                        $("#errorFaci1").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci1").hide();
                }
                if (document.getElementById("ckbAirCondtioning").checked) {
                    var obj = $("#txtAirCondtioningPrice");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci1").hide();
                    } else {
                        $("#errorFaci1").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci1").hide();
                }
                if (document.getElementById("ckbCanPickUp").checked) {
                    var obj = $("#txtCanPickUpPrice");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci1").hide();
                    } else {
                        $("#errorFaci1").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci1").hide();
                }
                if (document.getElementById("ckbLuggageDeposit").checked) {
                    var obj = $("#txtLuggageDepositPrice");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci1").hide();
                    } else {
                        $("#errorFaci1").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci1").hide();
                }
                if (document.getElementById("ckbKitchen").checked) {
                    var obj = $("#txtKitchenPrice");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci1").hide();
                    } else {
                        $("#errorFaci1").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci1").hide();
                }
                if (document.getElementById("ckbAddBed").checked) {
                    var obj = $("#txtAddBedPrice");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci1").hide();
                    } else {
                        $("#errorFaci1").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci1").hide();
                }
                if (document.getElementById("ckbTicketAgent").checked) {
                    var obj = $("#txtTicketAgentPrice");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci1").hide();
                    } else {
                        $("#errorFaci1").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci1").hide();
                }
                //add20151216 end

                if (document.getElementById("ckbInternet").checked) {
                    var obj = $("#txtInternet");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci2").hide();
                    } else {
                        $("#errorFaci2").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci2").hide();
                }
                if (document.getElementById("ckbWirelessInternet").checked) {
                    var obj = $("#txtWire");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci3").hide();
                    } else {
                        $("#errorFaci3").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci3").hide();
                }
                //自动麻将桌
                if (document.getElementById("ckbMahjongDesk").checked) {
                    var obj = $("#txtMahjongDesk");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci6").hide();
                    } else {
                        $("#errorFaci6").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci6").hide();
                }
                if (document.getElementById("ckbSuitableForEvents").checked) {
                    var obj = $("#txtEvents");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci4").hide();
                    } else {
                        $("#errorFaci4").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci4").hide();
                }
                if (document.getElementById("ckbParkingIncluded").checked) {
                    var obj = $("#txtParking");
                    if (!isNaN($.trim(obj.val())) && Number($.trim(obj.val())) >= 1 && Number($.trim(obj.val())) <= max || $.trim(obj.val()) == "0" || $.trim(obj.val()) == "") {
                        $("#errorFaci5").hide();
                    } else {
                        $("#errorFaci5").show();
                        ibol = false;
                    }
                } else {
                    $("#errorFaci5").hide();
                }
                return ibol;
            }
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            if ("True" == "True") {//页面初始化
                $("[language='en']").hide();
                $("[language='zh']").show();
            } else {
                if (idoSchedual == "DO") { $("#sLiveManNum").val("2"); }
                $("[language='en']").show();
                $("[language='zh']").hide();
            }
            //FixedMsg("txthouserarea1", "", true); //房间面积
            FixedMsg("txthouserarea1", "请输入整数", true); //房间面积
            /*domestic*/
            FixedMsg("txtHouseTitle1", "好的标题会让您的房屋成为一个亮点", true); //标题
            FixedMsg("txtBak", "辨别房间的参考信息，仅自己可见", true); //备注
            FixedMsg("txtRoomdescription", "如户型、面积、装修、家具家电、网络情况等", true); //描述
            //  FixedMsg(LandMarks.ClientID", "如具体地点、周围的标志性建筑等", true); //地标
            FixedMsg("Traffic", "如公交站、地铁线路、如何去往机场或火车站等", true); //交通
            FixedMsg("arroundFacility", "如商场、超市、银行、医院等", true); //周边
            FixedMsg("attractions", "如躺在床上就能欣赏海景等", true); //景点
            FixedMsg("txtTagInputNew", "标签", true); //标签
            FixedMsg("enHouseTitle", "好的标题会让您的房屋成为一个亮点", true); //英文标题
            FixedMsg("enRoomdescription", "如户型、面积、装修、家具家电、网络情况等", true); //英文描述
            FixedMsg("enGeographicalPosition", "如具体地点、周围的标志性建筑等", true); //英文地标
            FixedMsg("enTransportation", "如公交站、地铁线路、如何去往机场或火车站等", true); //英文交通
            FixedMsg("enAroundSupport", "如商场、超市、银行、医院等", true); //英文周边
            FixedMsg("enScenicSpotsAround", "如躺在床上就能欣赏海景等", true); //英文景点
            /*abroad-->*/
            FixedMsg("oneHouseTitle", "好的标题会让您的房屋成为一个亮点", true); //
            FixedMsg("oneTxtBak", "辨别房间的参考信息，仅自己可见", true); //
            FixedMsg("oneTxtRoomdescription", "如户型、面积、装修、家具家电、网络情况等", true); //
            FixedMsg("twoHouseTitle", "好的标题会让您的房屋成为一个亮点", true); //
            FixedMsg("twoTxtRoomdescription", "如户型、面积、装修、家具家电、网络情况等", true); //
        });
        var houseTypeNew = "";
        //显示输入自定义类型标签：2013-01-23添加
        function showZiDingYiInput() {
            var OtherHouseType = $("#houseType option:selected").val();
            var houseTypeEle = "";
            if (OtherHouseType == "19") {
                var targetTr = "<tr id='CommonHouseTr'><td class='RoomSituationTxtTd'> 房东常用类型：</td><td> <div class='TagCase TagCase02'><ul id='HouseCommonType'><li>汽车</li><li>停车位</li><li>蒙古包</li><li>帐篷</li><li>工作室</li><li>酒吧</li><li>宴会厅</li></ul><div class='CB'></div></div></td></tr>";
                houseTypeEle = $("<input class='RoomSituationTxtInput' id='houseTypeInput' type='text' value='" + houseTypeNew + "' style='color:#333;'><ul id='divShow1' style='display:none;' class='TdInputDown'></ul><span id='showMsgSpan' style='display:inline-block;display:none;margin:7px;padding-top:3px;line-height:16px;vertical-align:middle;'>选填</span>");
                $("#standardTr").next("#CommonHouseTr").remove();
                $(targetTr).insertAfter("#standardTr");
                clickCommonHouseTypeLi();
                var childrens = $("#houseTypeTd").children();
                for (var i = 1; i < childrens.length; i++) {
                    $(childrens[i]).remove();
                }
                $("#houseTypeTd").append(houseTypeEle);
                init($("#houseTypeInput").val());
                $(document).mouseup(MouseDownOther);

            } else {
                houseTypeEle = $("<span id='showMsgSpan' style='display:inline-block;margin:7px 0;padding-top:3px;line-height:13px;vertical-align:middle;'></span> ");
                $("#standardTr").next("#CommonHouseTr").remove();
                var childrens = $("#houseTypeTd").children();
                for (var i = 1; i < childrens.length; i++) {
                    $(childrens[i]).remove();
                }
                $("#houseTypeTd").append(houseTypeEle);
            }
            //鼠标移入隐藏错误提示：2013-01-23添加
            var originaltxt = $("#houseTypeInput").val();
            $("#houseTypeInput").focus(function () {
                if ($.trim($("#showMsgSpan").attr("class")) == "SituationWarning") {
                    $("#showMsgSpan").css("display", "none").removeClass("SituationWarning");
                }

            }).keyup(function (e) {
                var inputVal = $("#houseTypeInput").val();
                if (e.keyCode == 32 || e.keyCode == 8 || e.keyCode == 46) {
                    if ($.trim(inputVal) != "" && originaltxt != inputVal) {
                        originaltxt = inputVal;
                        if ($.trim($("#houseTypeInput").val()) != "") {
                            queryHouseType();
                        } else {
                            $("#divShow1").hide();
                        }
                    } else {
                        $("#divShow1").hide();
                    }
                } else {
                    if ($.trim(inputVal) == "" && originaltxt != "")
                        originaltxt = "";
                    if ($.trim(inputVal) != "" && originaltxt != inputVal) {
                        originaltxt = inputVal;
                        if ($.trim($("#houseTypeInput").val()) != "") {
                            queryHouseType();
                        } else {
                            $("#divShow1").hide();
                        }
                    } else {
                        $("#divShow1").hide();
                    }
                }
            });

        }
        function clickSearchDiv() {
            var lis = $("#divShow1").find("li");
            $.each(lis, function (v, t) {
                $(t).css("cursor", "pointer");
                $(t).click(function () {
                    var thisTxt = $.trim($(this).text());
                    $("#houseTypeInput").val(thisTxt);
                }).mouseover(function () {
                    $(this).attr("class", "Curr").siblings(".Curr").removeClass("Curr");
                }).mouseout(function () {
                    $(this).removeClass("Curr");
                });
            });
        }
        function MouseDownOther(evt) {
            evt = evt || window.event;
            var ele = evt.target || evt.srcElement;
            if (ele != $("#divShow1")[0]) {
                $("#divShow1").hide();
            }
        }
        //鼠标右击粘贴的监听事件
        function init(originaltxt) {
            var isRight = false;
            var area = document.getElementById("houseTypeInput");
            area.onmousedown = rightEvent;
            area.onpaste = function () {
                pasetEvent(originaltxt);
            }
        }
        function rightEvent(event) {
            event = window.event || event;
            if (event.button == 2) {
                isRight = true;
            }
        }
        function pasetEvent(originaltxt) {
            if (isRight == true) {
                setTimeout(function () {
                    var inputVal = $("#houseTypeInput").val();
                    if ($.trim(inputVal) == "" && originaltxt != "")
                        originaltxt = "";
                    if ($.trim(inputVal) != "" && originaltxt != inputVal) {
                        originaltxt = inputVal;
                        if ($.trim($("#houseTypeInput").val()) != "") {
                            queryHouseType();
                        } else {
                            $("#divShow1").hide();
                        }
                    } else {
                        $("#divShow1").hide();
                    }
                }, 10);
            }
        }
        //注册房屋类型下拉框的change事件：2013-01-23添加
        function clickSelHouseType() {
            $("#houseType").change(function () {
                showZiDingYiInput();
            });
        }
        //房屋类型，联动数据的查询
        function queryHouseType() {
            $.getJSON("/publish/Ajax/DescriptionEnAction.aspx", {
                ZiDingYiHouseTypeStr: $.trim($("#houseTypeInput").val()),
                houseid: "324548",
                HouseTypeFlag: "1",
                datetime: new Date().getTime()
            }, function (data) {
                if (data != null && data != "") {
                    var jsonArr = data.JsonArr;
                    if (jsonArr.length > 0) {
                        var sbHtml = new stringBuilder();
                        sbHtml.append("<ul id='divShow1' class='TdInputDown'>");
                        for (var i = 0; i < jsonArr.length; i++) {
                            sbHtml.append("<li>" + $.trim(jsonArr[i]) + "</li>");
                        }
                        sbHtml.append("</ul>");
                        var searchDiv = sbHtml.toString();
                        $("#houseTypeInput").next("#divShow1").remove();
                        $(searchDiv).insertAfter("#houseTypeInput");
                        $("#divShow1").show();
                        clickSearchDiv();
                    }
                }
            });
        }
        //注册房屋常用类型选项鼠标移入、鼠标移出跟鼠标点击事件：2013-01-23添加
        function clickCommonHouseTypeLi() {
            var allLis = $("#HouseCommonType li");
            $.each(allLis, function (v, t) {
                $(t).mouseover(function () {
                    $(this).attr("class", "TagCaseCur").siblings(".TagCaseCur").removeClass("TagCaseCur");
                }).mouseout(function () {
                    $(this).removeClass("TagCaseCur");
                });
                $(t).click(function () {
                    var thisTxt = $.trim($(t).text());
                    $("#houseTypeInput").val(thisTxt);
                    $(this).removeClass("TagCaseCur");
                });
            });
        }
        //房屋类型数据的长度校验：2013-01-23添加
        function checkHouseTypeLength(strHouseType) {
            var len = getStringLength(strHouseType);
            if (len > 8) {
                $("#showMsgSpan").attr("class", "SituationWarning").text("四个汉字以内").css("display", "inline-block");
                return false;
            } else {
                return true;
            }
            return false;
        }
        //校验房东自定义类型是否为默认的房屋类型：2013-01-23添加
        function validateHouseType(strHouseType) {
            var allHouseTypeOption = $("#houseType");
            var validateResult = allHouseTypeOption.find("option:selected").val(); //默认为其他类型
            $.each(allHouseTypeOption.find("option"), function (v, t) {
                if ($.trim($(t).text()) == strHouseType) {//自定义类型为默认类型
                    validateResult = $(t).val();
                }
            });
            return validateResult;
        }
        
    </script>


    
   
<script src="static/publish_house_2/saved_resource"></script><link rel="stylesheet" type="text/css" href="static/publish_house_2/Youtx_WebIM.css"></head>
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
<script type="text/javascript" src="static/publish_house_2/Login_Cookie.js.下载"></script>
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
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="static/publish_house_2/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/publish_house_2/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
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
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/publish_house_2/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/publish_house_2/ewmBNew.jpg" width="102" height="102"></dd>
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
            <img src="static/publish_house_2/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="static/publish_house_2/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/publish_house_2/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="static/publish_house_2/ewmBNew.jpg" width="102" height="102"></dd>
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
            <h3><img id="daohang" src="static/publish_house_2/publishPlan502_.jpg" alt=""></h3>
            
    <form method="post" action="http://www.youtx.com/room/newtwoplan/324548?houseid=324548" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJOTE1MDc2NzAzZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WJgUiY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRwdWJsaWN3YwUjY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRwcml2YXRld2MFJGN0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkUmFkaW9ZTGl2ZQUkY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRSYWRpb05MaXZlBSljdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYkJhdGhTdXBwbGllcwUkY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRja2JTbGlwcGVyBStjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYkFsbERheUhvdFdhdGVyBSNjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYkhvdFR1YgUmY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRja2JDYW5TaG93ZXIFH2N0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiVHYFLGN0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiSW5kb29yRmlyZXBsYWNlBSVjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYkNvbXB1dGVyBSNjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYldhc2hlcgUrY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRja2JBaXJDb25kdGlvbmluZwUkY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRja2JIZWF0aW5nBSVjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYkludGVybmV0BS1jdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYldpcmVsZXNzSW50ZXJuZXQFK2N0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiV2F0ZXJEaXNwZW5zZXIFImN0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiRHJ5ZXIFL2N0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiRWxldmF0b3JpbkJ1aWxkaW5nBS9jdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYkhhbmRpY2FwQWNjZXNzaWJsZQUkY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRja2JEb29ybWFuBShjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYk1haGpvbmdEZXNrBSxjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYlBhcmtpbmdJbmNsdWRlZAUjY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRja2JCdXp6ZXIFIGN0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiR3ltBSFjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYlBvb2wFJmN0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiRmlyZVBsYWNlBSZjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYkNhblBpY2tVcAUmY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRja2JCcmVha2Zhc3QFK2N0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiUmVjZXB0aW9uQ2hpbGQFLmN0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiU3VpdGFibGVGb3JFdmVudHMFJGN0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiS2l0Y2hlbgUgY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRja2JwZXQFK2N0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiTHVnZ2FnZURlcG9zaXQFI2N0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkY2tiQWRkQmVkBShjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYlRpY2tldEFnZW50BSdjdGwwMCRjdGwwMCRib2R5JFJvb21Cb2R5JGNrYkNhblNtb2tpbmfvQa/uazizSoXdcTnoj/eFzyq1Mw==">
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="9152157E">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAFONPXaTHQ7YsxDb34ep/gypP0lZTvMBDa88WkBkavaeXCt9XZO+HLQvx80kzvnINt0kyBVlqtmdXQrEgfa5Atykz74XtfymhQBtlty52FXYveuiV+zSVIe5TGhRH1A88mEEtjpUV8Qn8QFO3ZnWId9yx32snpEi9q0DUxAl8wVS4LCNbxCEZwP6Yd9T7xEL60Q8TtpyfA3J2PCM9ycMvRVRPgsKzuqe7OLENhsW1E7pUg4+JqeWdPSFpLr/YEG1MyxnodRfE4N8ZbhybyTcuwfs+ybfCPG2NiUVV1SclMYYkRtvbjMLWbGedMrYcTy9Vbs+9jTaoE0VKCC63OcqrrBllfsBH3bY/EhpkLP+focFSREsf/DK5rYKghZsZjBLj1VeM4t4P1HdeUe+yiRW5NGZYQwjt62XgHR/Toq/WeJdAeG7Ao2JdgcMw1YmP3I5iYgfGh3fchFqulZjT3p1c5yNcgg/lui6eb+VA3E5l9bGnNH3fPX7gzUk/OILwpW7tDgvXk8FJOc/B5/WURDzC5TA4YyndHTUGl36rizKkwh+KxcbHRUSbQoK3HO0xdr1ZmAqkmGPtNw3YRN3uPF0rN4ClzkF2eHrLrj93s8fhWqDIHUVP4OGm4LNIPa1ARcjTb47XFflgUPgR0FK+w11kcChhBOtHarQ1mFmRY7tM0ProRa5ViTDg4b0vM4nnyXhGjyjNuqz302Olyxq9VuET2hbNtBoPtR/AFpw8uVQNt38npthNnykB7h5JhWRrneQFGnTXTydLELPbg/LuUitGWX1l5MDGiV8jUQmH+9d9JV/a58Y4Y95dpQYaBu3WR/+VVQCuUpDKE/uw5zsdejb04l98RBNV1BkTR0Yg9Js+na2oF3ys6OUf9Ea1C6QFTMSr6eGGbsytn3Zd/+TDP2I6E5S4GJHl3tLW1QLEpiRrdurU3n759YbWfTQ5Qf/5v3yy6xsfTAqy8Erlsr8eOTwkKDv2fdY17kCgjc8dG33c8umk0SjwwRc8M1YA9StQAwc/WxwE0h+GjyYqZI9urXJAvn8LSV3ylNskjPDUAdz5xFFoc23CJO0G2LLrBniaAVYaEq402FPpLQZtEgcsVLbzkqoDN1wb/KR3yGnlNu3sHuEyh+unOXOZKuGatp+XFgaY5czaKcCRhw45vd5lxwExkR79fKJ9FZBRZuyGtx9O0DL07Z6EAbAmTpSLRIFy8CtnenOHk6U+JkLtzpbaMlz1uddBeyu3SduZcDCDDAar2nWE6+gGuvTrpN2OuI3vu1V6HpK7lZhpJbi65F/hUA+F4NZ8/UlZUmq9pkgG6doJZFp0JwqAlcsEiEU/ZV4bww2P26UVLwJBmPUMzfhgZda/s9BCrdMZ+V1+9bJd739eTX7BzG6b4v1vVBI8b0Xt6MtCcp6Z6FALJehTNmHf5IxcITOqDO1aiEZBhQCcnaa89ZvfCcbcN8mXqFMazF89fuHG+WWurVtHRenAboikJD05xzOjEdW232QyyN/qqiEJJX5igIMZ6lyQlDLHSyF3snNM5HW81H0JO2QP6V2HUuDerErF0pqPCf27J+ZlJf83CygK1GkJSS7zhx4xYwGytdIMcvUp2nyQ/0oAAgs8Og9sPiteTKihR2YxEi6KwZn83MhhesjvSEfL1N3c3INT93cPvAzCcdcw2RFZE8+gcAN1U0Oga2h8Nrx3Yysv1FJdCi0kQ3ik1Yz5FneBpCcStaBZOnqDmr1lDnjqp7+LFa7QGrgHtchQ3Q0D6VTWp98mEhyXJa/U887vWRY4r4BS83Hz0wwVujJ">
</div>
    <div class="RoomDescription">
        <div class="RoomSituationTit">
            房间情况</div>
        <div class="RoomSituationTxt" style="padding-bottom: 50px;">
            <table width="550" border="0">
                <tbody><tr id="standardTr">
                    <td class="RoomSituationTxtTd">
                        <b>*</b>房屋类型：
                    </td>
                    <td id="houseTypeTd">
                        <select id="houseType">
                            <option value="1">公寓</option><option value="2">别墅</option><option value="13">民宿</option><option value="14">四合院</option><option value="16">旅馆</option><option value="36">活动场地</option><option value="37">农家院</option><option value="38">客栈</option><option value="19">其它</option>
                        </select>
                    <span id="showMsgSpan" style="display:inline-block;margin:7px 0;padding-top:3px;line-height:13px;vertical-align:middle;"></span></td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>出租类型：
                    </td>
                    <td>
                        <select name="ctl00$ctl00$body$RoomBody$roomType" id="roomType">
	<option value="3">整套出租</option>
	<option value="1">单间出租</option>
	<option value="2">床位出租</option>
	<option value="4">客厅沙发</option>
</select>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b></b>
                        楼层：
                    </td>
                    <td>
                        <input name="ctl00$ctl00$body$RoomBody$iFloor" type="text" id="iFloor" class="RoomSituationTxtInput" maxlength="3" style="color: black; width: 30px;">
                        层/共
                        <input name="ctl00$ctl00$body$RoomBody$AllFloor" type="text" id="AllFloor" class="RoomSituationTxtInput" maxlength="3" style="color: black; width: 30px;">
                        <span id="errorFloor" class="SituationWarning" style="margin: 5px 0 7px 10px; display: none;
                            padding-bottom: 3px;">
                            请正确填写数字</span>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>卧室数量：
                    </td>
                    <td>
                        <select name="ctl00$ctl00$body$RoomBody$sroomNum" id="sroomNum">
	<option value="0">0 </option>
	<option selected="selected" value="1">1 </option>
	<option value="2">2 </option>
	<option value="3">3 </option>
	<option value="4">4 </option>
	<option value="5">5 </option>
	<option value="6">6 </option>
	<option value="7">7 </option>
	<option value="8">8 </option>
	<option value="9">9 </option>
	<option value="10">10 </option>
	<option value="11">11 </option>
	<option value="12">12 </option>
	<option value="13">13 </option>
	<option value="14">14 </option>
	<option value="15">15 </option>
	<option value="16">16 </option>
	<option value="17">17 </option>
	<option value="18">18 </option>
	<option value="19">19 </option>
	<option value="20">20 </option>
	<option value="21">21 </option>
	<option value="22">22 </option>
	<option value="23">23 </option>
	<option value="24">24 </option>
	<option value="25">25 </option>
	<option value="26">26 </option>
	<option value="27">27 </option>
	<option value="28">28 </option>
	<option value="29">29 </option>
	<option value="30">30+ </option>
</select>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>床位数量：
                    </td>
                    <td>
                        <select name="ctl00$ctl00$body$RoomBody$sBedNum" id="sBedNum">
	<option selected="selected" value="0">0 </option>
	<option value="1">1 </option>
	<option value="2">2 </option>
	<option value="3">3 </option>
	<option value="4">4 </option>
	<option value="5">5 </option>
	<option value="6">6 </option>
	<option value="7">7 </option>
	<option value="8">8 </option>
	<option value="9">9 </option>
	<option value="10">10 </option>
	<option value="11">11 </option>
	<option value="12">12 </option>
	<option value="13">13 </option>
	<option value="14">14 </option>
	<option value="15">15 </option>
	<option value="16">16 </option>
	<option value="17">17 </option>
	<option value="18">18 </option>
	<option value="19">19 </option>
	<option value="20">20 </option>
	<option value="21">21 </option>
	<option value="22">22 </option>
	<option value="23">23 </option>
	<option value="24">24 </option>
	<option value="25">25 </option>
	<option value="26">26 </option>
	<option value="27">27 </option>
	<option value="28">28 </option>
	<option value="29">29 </option>
	<option value="30">30+ </option>
</select>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>床 型：
                    </td>
                    <td>
                        <select id="sBedType">
                            <option value="1">双人床</option><option value="2">单人床</option><option value="3">双层床</option><option value="4">沙发床</option><option value="5">折叠床</option><option value="6">榻榻米</option><option value="7">气垫床</option><option value="8">水床</option><option value="9">无
                        </option></select>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>标准可住人数：
                    </td>
                    <td>
                        <select name="ctl00$ctl00$body$RoomBody$sLiveManNum" id="sLiveManNum">
	<option value="1">1 </option>
	<option value="2">2 </option>
	<option value="3">3 </option>
	<option value="4">4 </option>
	<option value="5">5 </option>
	<option value="6">6 </option>
	<option value="7">7 </option>
	<option value="8">8 </option>
	<option value="9">9 </option>
	<option value="10">10 </option>
	<option value="11">11 </option>
	<option value="12">12 </option>
	<option value="13">13 </option>
	<option value="14">14 </option>
	<option value="15">15 </option>
	<option selected="selected" value="16">16 </option>
	<option value="17">17 </option>
	<option value="18">18 </option>
	<option value="19">19 </option>
	<option value="20">20 </option>
	<option value="21">21 </option>
	<option value="22">22 </option>
	<option value="23">23 </option>
	<option value="24">24 </option>
	<option value="25">25 </option>
	<option value="26">26 </option>
	<option value="27">27 </option>
	<option value="28">28 </option>
	<option value="29">29 </option>
	<option value="30">30+ </option>
</select>
                    </td>
                </tr>
                <!--2012-07-30修改start-->
                <tr>
                    <td class="RoomSituationTxtTd">
                        额外可增加人数：
                    </td>
                    <td>
                        <select name="ctl00$ctl00$body$RoomBody$sLiveManNumEwAdd" id="sLiveManNumEwAdd">
	<option selected="selected" value="0">0</option>
	<option value="1">1 </option>
	<option value="2">2 </option>
	<option value="3">3 </option>
	<option value="4">4 </option>
	<option value="5">5 </option>
	<option value="6">6 </option>
	<option value="7">7 </option>
	<option value="8">8 </option>
	<option value="9">9 </option>
	<option value="10">10 </option>
	<option value="11">11 </option>
	<option value="12">12 </option>
	<option value="13">13 </option>
	<option value="14">14 </option>
	<option value="15">15 </option>
	<option value="16">16 </option>
	<option value="17">17 </option>
	<option value="18">18 </option>
	<option value="19">19 </option>
	<option value="20">20 </option>
	<option value="21">21 </option>
	<option value="22">22 </option>
	<option value="23">23 </option>
	<option value="24">24 </option>
	<option value="25">25 </option>
	<option value="26">26 </option>
	<option value="27">27 </option>
	<option value="28">28 </option>
	<option value="29">29 </option>
	<option value="30">30+ </option>
</select>
                    </td>
                </tr>
                <!--2012-07-30修改end-->
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>房间面积：
                    </td>
                    <td>
                        <input name="ctl00$ctl00$body$RoomBody$txthouserarea1" value="请输入整数" id="txthouserarea1" type="text" class="RoomSituationTxtInput" style="float: left; color: rgb(102, 102, 102);">
                        <select name="ctl00$ctl00$body$RoomBody$HouseAreaType" id="HouseAreaType" style="float: left; margin: 0 15px 0 5px;">
	<option value="1">平方米</option>
	<option value="2">英尺</option>
</select>
                        <br>
                        <div id="errorHouseArea" class="SituationWarning" style="float: left; display: none;">
                            房间面积必须&lt;100000</div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>卫生间数量：
                    </td>
                    <td>
                        <select name="ctl00$ctl00$body$RoomBody$sBedRoomNum" id="sBedRoomNum">
	<option value="0">无</option>
	<option selected="selected" value="10">1 </option>
	<option value="20">2 </option>
	<option value="30">3 </option>
	<option value="40">4 </option>
	<option value="50">5 </option>
	<option value="60">6 </option>
	<option value="70">7 </option>
	<option value="80">8 </option>
	<option value="90">9 </option>
	<option value="100">10 </option>
	<option value="110">11 </option>
	<option value="120">12 </option>
	<option value="130">13 </option>
	<option value="140">14 </option>
	<option value="150">15 </option>
	<option value="160">16 </option>
	<option value="170">17 </option>
	<option value="180">18 </option>
	<option value="190">19 </option>
	<option value="200">20 </option>
	<option value="210">21 </option>
	<option value="220">22 </option>
	<option value="230">23 </option>
	<option value="240">24 </option>
	<option value="250">25 </option>
	<option value="260">26 </option>
	<option value="270">27 </option>
	<option value="280">28 </option>
	<option value="290">29 </option>
	<option value="300">30+ </option>
</select>
                    </td>
                </tr>
                <tr id="wcType">
                    <td class="RoomSituationTxtTd">
                        <b>*</b>卫生间类型：
                    </td>
                    <td class="Roomradio">
                        <label>
                            <input value="1" name="ctl00$ctl00$body$RoomBody$" type="radio" id="publicwc">&nbsp;公共卫生间</label>
                        <label>
                            <input value="2" name="ctl00$ctl00$body$RoomBody$" type="radio" id="privatewc">&nbsp;独立卫生间</label>
                        <br>
                        <span id="errorWCType" class="SituationWarning" style="margin: 5px 0 7px; *margin: 0px 0 7px;
                            padding-bottom: 3px; display: none;">
                            请选择卫生间类型</span>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>是否与房东共住：
                    </td>
                    <td class="Roomradio">
                        <label>
                            <input value="1" name="ctl00$ctl00$body$RoomBody$RadioLive" type="radio" id="RadioYLive" disabled="disabled">&nbsp;是</label>
                        <label>
                            <input value="2" name="ctl00$ctl00$body$RoomBody$RadioLive" type="radio" id="RadioNLive" checked="checked" disabled="disabled">&nbsp;否</label>
                        <br>
                        <span id="SpanLive" class="SituationWarning" style="margin: 5px 0px 7px; padding-bottom: 3px;
                            display: none;">请选择是否与房东共住</span>
                    </td>
                </tr>
            </tbody></table>
            <!--2012-07-30修改start-->
            <div class="RoomArea" style="top: 125px;">
                <h5>
                    可住人数：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <p>
                            *
                            标准可住人数：房间正常可容纳的人数</p>
                        <p>
                            *
                            额外增加人数：加床、沙发等可容纳的人数</p>
                    </div>
                </div>
            </div>
            <!--2012-07-30修改 end-->
            <div class="RoomArea">
                <h5>
                    房间面积：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <p>
                            *
                            出租给客人，可供客人使用的面积</p>
                    </div>
                </div>
            </div>
            <!--2013-1-17修改-->
            <div class="RoomArea" style="top: 27px;">
                <h5>
                    房屋类型：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <p>
                            *
                            当现有房屋类型无法准确表达时，请选择“其它类型”，自行填写</p>
                    </div>
                </div>
            </div>
            <!--2013-1-17修改-结束-->
            <div id="wcTypeTip" class="RoomArea RoomToilet">
                <h5>
                    卫生间类型：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <p>
                            *
                            公用卫生间：租客需要与他人共用一个卫生间</p>
                        <p>
                            *
                            独立卫生间：有独立卫生间供租客单独使用</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div language="zh" class="RoomDescription">
        <div class="RoomSituationTit">
            多套类似房源出租</div>
        <div class="RoomSituationTxt" style="padding: 35px 0 15px;">
            <table width="500" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd" style="line-height: normal; vertical-align: middle;">
                        <b></b>
                        类似房源总数：
                    </td>
                    <td>
                        <select name="ctl00$ctl00$body$RoomBody$Rooms" id="Rooms">
	<option selected="selected" value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
	<option value="24">24</option>
	<option value="25">25</option>
	<option value="26">26</option>
	<option value="27">27</option>
	<option value="28">28</option>
	<option value="29">29</option>
	<option value="30">30</option>
	<option value="31">31</option>
	<option value="32">32</option>
	<option value="33">33</option>
	<option value="34">34</option>
	<option value="35">35</option>
	<option value="36">36</option>
	<option value="37">37</option>
	<option value="38">38</option>
	<option value="39">39</option>
	<option value="40">40</option>
	<option value="41">41</option>
	<option value="42">42</option>
	<option value="43">43</option>
	<option value="44">44</option>
	<option value="45">45</option>
	<option value="46">46</option>
	<option value="47">47</option>
	<option value="48">48</option>
	<option value="49">49</option>
	<option value="50">50</option>
</select>
                        <span class="color666" style="display: none">
                            有多个类似/相同的房间出租</span>
                    </td>
                </tr>
                <!--2012-06-11-->
                <tr style="display: none" id="RoomsTipInfo">
                    <td class="RoomSituationTxtTd">
                        &nbsp;
                    </td>
                    <td>
                        <div class="CKRoomsTipInfo">
                            <label>
                                <input name="CKRoomsTipInfo" id="CKRoomsTipInfo" type="checkbox" value="0" style="vertical-align: middle;
                                    margin: -3px 5px 0 0;">房间布局和设施类似/相同，租客入住的房间可能与描述和照片略有差异</label>
                        </div>
                    </td>
                </tr>
                <!--2012-06-11-->
            </tbody></table>
            <div class="RoomArea RoomSimilar">
                <h5>
                    类似房间：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <p>
                            酒店式公寓、便捷酒店等，房间均相同，在这里选择相同房间的总数量，这样便于日后对于房间的整体管理。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--国内描述逻辑-->
    <div language="zh" class="RoomDescription">
        <div class="RoomSituationTit">
            房间描述</div>
        <div class="RoomSituationTxt">
            <table width="550" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        <b>*</b>标 题：
                    </td>
                    <td style="line-height: 22px;">
                        <input name="ctl00$ctl00$body$RoomBody$txtHouseTitle1" value="好的标题会让您的房屋成为一个亮点" id="txtHouseTitle1" type="text" class="textinput" style="color: rgb(102, 102, 102);">
                        <span id="span1" class="color666">还能输入17个汉字</span><br>
                        <span class="color666">
                            例如：东城四合院老北京特色便利实惠单间
                            
                            
                            </span>
                        <div style="display: none;" id="txtHouseTitle1Div" class="SituationWarning">
                            请填写房间标题</div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        备注：
                    </td>
                    <td style="line-height: 22px;">
                        <input name="ctl00$ctl00$body$RoomBody$txtBak" type="text" id="txtBak" class="textinput" value="辨别房间的参考信息，仅自己可见" style="color: rgb(102, 102, 102);">
                        <span id="span2" class="color666">还能输入17个汉字</span><br>
                        <div style="display: none;" id="txtBakDiv" class="SituationWarning">
                            备注内容过长
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        <b>*</b>房间内部情况介绍：
                    </td>
                    <td>
                        <textarea name="ctl00$ctl00$body$RoomBody$txtRoomdescription" id="txtRoomdescription" class="textarea" style="color: rgb(102, 102, 102);">如户型、面积、装修、家具家电、网络情况等</textarea>
                        <div id="txtRoomdescriptionDiv" style="display: none;" class="SituationWarning">
                            请填写房间描述</div>
                    </td>
                </tr>
                
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        <b></b>
                        交 通：
                    </td>
                    <td>
                        <textarea name="ctl00$ctl00$body$RoomBody$Traffic" id="Traffic" class="textarea" style="color: rgb(102, 102, 102);">如公交站、地铁线路、如何去往机场或火车站等</textarea>
                        <div id="TrafficDiv" class="SituationWarning" style="display: none;">
                            不能包含联系方式</div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        <b></b>
                        周边生活配套：
                    </td>
                    <td>
                        <textarea name="ctl00$ctl00$body$RoomBody$arroundFacility" id="arroundFacility" class="textarea" style="color: rgb(102, 102, 102);">如商场、超市、银行、医院等</textarea>
                        <div id="arroundFacilityDiv" class="SituationWarning" style="display: none;">
                            不能包含联系方式</div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        <b></b>
                        周围景点：
                    </td>
                    <td>
                        <textarea name="ctl00$ctl00$body$RoomBody$attractions" id="attractions" class="textarea" style="color: rgb(102, 102, 102);">如躺在床上就能欣赏海景等</textarea>
                        <div id="attractionsDiv" class="SituationWarning" style="display: none;">
                            不能包含联系方式</div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        <b></b>
                        其它：
                    </td>
                    <td>
                        <textarea name="ctl00$ctl00$body$RoomBody$other" id="other" style="color: Black;" class="textarea"></textarea>
                        <div id="otherDiv" class="SituationWarning" style="display: none;">
                            不能包含联系方式</div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        特色标签：
                    </td>
                    <td>
                        <div class="RoomTag" style="height: auto;">
                            <ul class="RoomTagList">
                            </ul>
                            <input name="ctl00$ctl00$body$RoomBody$txtTagInput" type="text" id="txtTagInput" class="TagInput">
                            <div class="CB">
                            </div>
                        </div>
                        <input id="txtTagInputNew" style="display: none; color: rgb(102, 102, 102);" class="textinput" type="text" name="" value="">
                        <p class="color666">
                            可输入3个标签，标签间空格分隔，每个最多5个字</p>
                        <div style="display: none;" id="errorTagInputNew" class="SituationWarning">
                            您输入的标签已超过5个字</div>
                        
                        <!--2013-1-30修改-->
                        <div id="TeSeTag" class="TagCase">
                            <ul style="height: 90px;">
                                <li>海景</li>
                                <li>山景</li>
                                <li>湖景</li>
                                <li class="">田园风光</li>
                                <li>复式</li>
                                <li>欧式</li>
                                <li>日韩风格</li>
                                <li>古色古香</li>
                                <li>历史人文</li>
                                <li>古镇风情</li>
                                <li>影视基地</li>
                                <li>名人故居</li>
                                <li>南北通透</li>
                                <li>落地窗</li>
                                <li>观景露台</li>
                                <li>聚会</li>
                                <li>公司年会</li>
                                <li>飘窗</li>
                                <li>榻榻米</li>
                                <li>东北土炕</li>
                                <li>假日狂欢</li>
                                <li>商务出行</li>
                                <li>合家出行</li>
                                <li>古道老街</li>
                                <li>休闲度假</li>
                                <li>浪漫之旅</li>
                                <li>沙滩漫步</li>
                                <li>温泉</li>
                                <li>滑雪胜地</li>
                                <li>私家花园</li>
                                <li>机场附近</li>
                                <li>火车站附近</li>
                                <li>大学周边</li>
                                <li>医院周边</li>
                                <li>交通便利</li>
                                <li>免费接站</li>
                                <li>导游</li>
                                <li>提供车辆</li>
                                <li>送门票</li>
                            </ul>
                            <div class="CB">
                            </div>
                            <div class="TagCaseChoose TaR">
                                <span class="ZhanKai">展开</span><span class="ShouQi">收起</span></div>
                            <script type="text/javascript">
                                $(function () {
                                    var oTagCaseHeight = $(".TagCase ul").height();
                                    if (oTagCaseHeight > 90) {
                                        $(".TagCase ul").css('height', '90px');
                                    }
                                    else {
                                        $(".TagCaseChoose").hide();
                                    }
                                    $(".TagCaseChoose span").click(function () {
                                        var oTagCaseHeight = $(".TagCase ul").height();
                                        if (oTagCaseHeight == 90) {
                                            $(".TagCase ul").css('height', 'auto');
                                            $(this).parent().addClass("status");
                                        } else {
                                            $(".TagCase ul").css('height', '90px');
                                            $(this).parent().removeClass("status");
                                        }
                                    })
                                    $(".TagCase ul li").mouseover(function () {
                                        $(this).addClass("TagCaseHover").siblings().removeClass("TagCaseHover");
                                    })
                                    $(".TagCase ul li").mouseout(function () {
                                        $(this).removeClass("TagCaseHover");
                                    })
                                })
                            </script>
                        </div>
                        <div class="CB">
                        </div>
                        <!--2013-1-30修改-结束-->
                    </td>
                </tr>
            </tbody></table>
            <script type="text/javascript">
                $(function () {
                    if ('' != "" && '' != "标签" && '' != null) {
                        var taglis = "".split('|'); //alert(taglis.length);
                        var lilis = $("#TeSeTag li");
                        for (var i = 0; i < taglis.length; i++) {
                            $.each(lilis, function (n, v) {
                                if (taglis[i] != undefined && taglis[i] != "") {
                                    if ($(v).html() == taglis[i]) {
                                        $(v).attr("class", "TagCaseCur");
                                    }
                                    if (HtmlStrInfo(taglis[i])) {
                                        CreateHtml(taglis[i]);
                                    }
                                }
                            });
                        }
                        $("#txtTagInputNew").val("").css("color", "black");
                    }
                    else {
                        $("#txtTagInputNew").val("标签");
                    }
                    $(".RoomTag").mouseover(function () {
                        $(".TagInput").focus();
                    });

                    $("#TeSeTag li").click(function () {  //选择Tag
                        if (HtmlStrInfo($.trim($(this).html()))) {
                            CreateHtml($.trim($(this).html()));
                            $(this).attr("class", "TagCaseCur");
                        }
                        if ($("#txtTagInputNew").val() == "标签") {
                            $("#txtTagInputNew").val($(this).html()).css("color", "black");
                        } else {
                            $("#txtTagInputNew").val($(this).html()).css("color", "black");
                            $("#txtTagInputNew").keyup();
                        }
                    });
                    $("#txtTagInputNew").keyup(function () {
                        var fontWidth = $("#txtTagInputNew").val().replace(/[^\x00-\xff]/g, "**").length; //得到输入的字节数
                        if (fontWidth > 10) {
                            var shengyu = fontWidth - 10;
                            // var val = $("#txtTagInputNew").val().toString().substr(Math.ceil(Number(shengyu / 2)));
                            //$("#txtTagInputNew").val(val);
                        }
                    });
                    $(".TagInput").keyup(function () {
                        var inputWidth = $(".TagInput").width() - 10;
                        var fontWidth = $(".TagInput").val().replace(/[^\x00-\xff]/g, "**").length; //得到输入的字节数
                        if (fontWidth <= 10) {
                            $(".TagInput").css("width", fontWidth * 6 + 10 + "px");
                        } else {
                            var shengyu = fontWidth - 10;
                            var val = $(".TagInput").val().toString().substr(Math.ceil(Number(shengyu / 2)));
                            $(".TagInput").val(val);
                            $(".TagInput").css("width", val.replace(/[^\x00-\xff]/g, "**").length * 6 + 10 + "px");
                        }
                    });

                    $(".TagInput").keydown(function (e) {
                        var inputWidth = $(".TagInput").width() - 10;
                        var fontWidth = $(".TagInput").val().replace(/[^\x00-\xff]/g, "**").length; //得到输入的字节数
                        if (e.keyCode == 32) {
                            if ($(".TagInput").val() == "" || $(".TagInput").val().toString().indexOf(' ') > -1) {
                                $(".TagInput").val("");
                                e.returnValue = false;
                                return false;
                            } else {
                                //                                 $(".RoomTagList").append($("<li></li>").html($(".TagInput").val() + "<a href=\"javascript:void(0)\"></a>")); 
                                if (HtmlStrInfo($(".TagInput").val())) {
                                    CreateHtml($(".TagInput").val());
                                }
                                $(".TagInput").val("");
                                e.returnValue = false;
                                return false;
                            }
                        } else if (e.keyCode == 8) {
                            var lis = $(".TagInput").prev().children();
                            if (lis.length > 0 && $(".TagInput").val() == "") {
                                $(lis[lis.length - 1]).remove();
                            }
                        }
                    });
                    $(".TagInput").blur(function () {
                        var inputWidth = $(".TagInput").width() - 10;
                        var fontWidth = $(".TagInput").val().replace(/[^\x00-\xff]/g, "**").length; //得到输入的字节数
                        if (fontWidth <= 10) {
                            $(".TagInput").css("width", fontWidth * 6 + 10 + "px");
                        } else {
                            var shengyu = fontWidth - 10;
                            var val = $(".TagInput").val().toString().substr(Math.ceil(Number(shengyu / 2)));
                            // $(".TagInput").val(val);
                            $(".TagInput").css("width", val.replace(/[^\x00-\xff]/g, "**").length * 6 + 10 + "px");
                        }

                        if ($(".TagInput").val() == "" || $(".TagInput").val().toString().indexOf(' ') > -1) {
                            $(".TagInput").val("");
                        } else {
                            if (HtmlStrInfo($(".TagInput").val())) {
                                CreateHtml($(".TagInput").val());
                            }
                            $(".TagInput").val("");
                        }
                    });
                });
                function CreateHtml(str) {
                    $(".RoomTagList").append($("<li></li>").html(str + "<A></A>"));
                    $(".RoomTagList li a").click(function () {
                        var tsli = $("#TeSeTag li[class='TagCaseCur']");
                        var str1 = $(this).parent().html().replace("<A></A>", "").replace("<a></a>", "");
                        $.each(tsli, function (n, v) {
                            if ($(v).html() == str1) {
                                $(v).removeClass("TagCaseCur");
                            }
                        });
                        $(this).parent().remove();
                    });
                }
                //验证当前输入的文字信息是否已经存在
                function HtmlStrInfo(str) {
                    var bol = true;
                    var inf = $(".RoomTagList li");
                    $.each(inf, function (n, v) {
                        if ($.trim($(v).html().replace("<A></A>", "").replace("<a></a>", "")) == $.trim(str)) {
                            bol = false;
                        }
                    });
                    if (inf) {  //判断标签数量
                        if (inf.length >= 3) {
                            bol = false;
                        }
                    }

                    if (Number(getsLength(str)) > 10) {
                        bol = false;
                    }
                    return bol;
                }
                function remove(ths) {  //关闭
                    $(ths).parent().remove();
                }
            </script>
            <!--2013-1-30修改-->
            <div class="CB" style="width: 700px; hiehgt: 1px; overflow: hidden;">
            </div>
            <!--2013-1-30修改-结束-->
            <!--2012-7-9修改-->
            
            <!--2012-09-12修改start-->
            <div class="X_EnglishDes">
                <a href="javascript:void(0)" id="writeEnglishDes">
                    请填写英文描述</a>
                <span>可接待外宾的房源，请填写英文描述，经审核可免费进入游天下国际站进行展示。</span>
            </div>
            <!--2012-09-12修改end-->
            <!--////////////////////////////////////////////////////////////////////////-->
            <div id="tbEnglish" style="display: none;">
                <table width="550" border="0">
                    <tbody><tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            标 题：
                        </td>
                        <td style="line-height: 22px;">
                            <input name="ctl00$ctl00$body$RoomBody$enHouseTitle" id="enHouseTitle" type="text" class="textinput" style="color: rgb(102, 102, 102);">
                            <span id="span1Two" class="color666">还能输入35个字符</span><br>
                            <span class="color666">
                                例如：东城四合院老北京特色便利实惠单间</span>
                            <div style="display: none;" id="enHouseTitleDiv" class="SituationWarning">
                                请填写房间标题</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            房间内部情况介绍：
                        </td>
                        <td>
                            <textarea name="ctl00$ctl00$body$RoomBody$enRoomdescription" id="enRoomdescription" class="textarea" style="color: rgb(102, 102, 102);"></textarea>
                            <div id="enRoomdescriptionDiv" style="display: none;" class="SituationWarning">
                                请填写房间描述</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            <b></b>
                            地理位置/地标性建筑：
                        </td>
                        <td>
                            <textarea name="ctl00$ctl00$body$RoomBody$enGeographicalPosition" id="enGeographicalPosition" class="textarea" style="color: rgb(102, 102, 102);"></textarea>
                            <div id="enGeographicalPositionDiv" class="SituationWarning" style="display: none;">
                                不能包含联系方式</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            <b></b>
                            交 通：
                        </td>
                        <td>
                            <textarea name="ctl00$ctl00$body$RoomBody$enTransportation" id="enTransportation" class="textarea" style="color: rgb(102, 102, 102);"></textarea>
                            <div id="enTransportationDiv" class="SituationWarning" style="display: none;">
                                不能包含联系方式</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            <b></b>
                            周边生活配套：
                        </td>
                        <td>
                            <textarea name="ctl00$ctl00$body$RoomBody$enAroundSupport" id="enAroundSupport" class="textarea" style="color: rgb(102, 102, 102);"></textarea>
                            <div id="enAroundSupportDiv" class="SituationWarning" style="display: none;">
                                不能包含联系方式</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            <b></b>
                            周围景点：
                        </td>
                        <td>
                            <textarea name="ctl00$ctl00$body$RoomBody$enScenicSpotsAround" id="enScenicSpotsAround" class="textarea" style="color: rgb(102, 102, 102);"></textarea>
                            <div id="enScenicSpotsAroundDiv" class="SituationWarning" style="display: none;">
                                不能包含联系方式</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            <b></b>
                            其它：
                        </td>
                        <td>
                            <textarea name="ctl00$ctl00$body$RoomBody$enOtherDescription" id="enOtherDescription" style="color: Black;" class="textarea"></textarea>
                            <div id="enOtherDescriptionDiv" class="SituationWarning" style="display: none;">
                                不能包含联系方式</div>
                        </td>
                    </tr>
                </tbody></table>
            </div>
            <!--2012-7-9修改-结束-->
            <div class="RoomArea RoomDescription">
                <h5>
                    房间描述：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <h6>
                            包括以下内容可帮助租客更好地了解房间：</h6>
                        <p>
                            * <b>
                                内部情况介绍</b>如户型、面积、装修、家具家电、网络情况等</p>
                        
                        <p>
                            * <b>
                                交通</b>，如公交站、地铁线路、如何去往机场或火车站等</p>
                        <p>
                            * <b>
                                周边生活配套</b>，如商场、超市、银行、医院等</p>
                        <p>
                            * <b>
                                周围景点</b>，如躺在床上就能欣赏海景等</p>
                        <h6>
                            不应包括：</h6>
                        <p>
                            *
                            电话号码、QQ号码等联系方式，影响线上成交量和房间排名否则信息将会被删除</p>
                    </div>
                </div>
            </div>
            <div class="RoomArea" style="top: 555px;">
                <h5>
                    您可以从以下方面编辑特色标签：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        
                        <p>
                            <b>风景：</b>如海景、山景
                        </p>
                        <p>
                            <b>风格：</b>如藏式、日式
                        </p>
                        <p>
                            <b>人文：</b>如古镇、故居
                        </p>
                        <p>
                            <b>服务：</b>如免费接站、送景区门票、导游、提供车辆
                        </p>
                        <p>
                            <b>位置：</b>如机场附近、车站附近、医院周边、学校周边
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--国外描述逻辑-->
    <div language="en" class="RoomDescription" style="display: none;">
        <div class="RoomSituationTit">
            房间描述</div>
        <div class="RoomSituationTxt">
            <table width="550" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        <b>*</b>标 题：
                    </td>
                    <td style="line-height: 22px;">
                        <input name="ctl00$ctl00$body$RoomBody$oneHouseTitle" id="oneHouseTitle" type="text" class="textinput" style="color: rgb(102, 102, 102);">
                        <span id="span3One" class="color666">还能输入35个字符</span><br>
                        <span class="color666">
                            例如：东城四合院老北京特色便利实惠单间</span>
                        <div style="display: none;" id="oneHouseTitleDiv" class="SituationWarning">
                            请填写房间标题</div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        备注：
                    </td>
                    <td style="line-height: 22px;">
                        <input name="ctl00$ctl00$body$RoomBody$oneTxtBak" type="text" id="oneTxtBak" class="textinput" style="color: rgb(102, 102, 102);">
                        <span id="span4One" class="color666">还能输入35个字符</span><br>
                        <div style="display: none;" id="oneTxtBakDiv" class="SituationWarning">
                            备注内容过长
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd" style="line-height: 20px;">
                        <b>*</b>描述：
                    </td>
                    <td>
                        <textarea name="ctl00$ctl00$body$RoomBody$oneTxtRoomdescription" id="oneTxtRoomdescription" class="textarea textarea02" style="color: rgb(102, 102, 102);"></textarea>
                        <div id="oneTxtRoomdescriptionDiv" style="display: none;" class="SituationWarning">
                            请填写房间描述</div>
                    </td>
                </tr>
            </tbody></table>
            
            <div class="X_EnglishDes">
                <a id="writeChineseDes" href="javascript:void(0)">
                    请填写英文描述</a>
                <span>可接待外宾的房源，请填写英文描述，经审核可免费进入游天下国际站进行展示。</span>
            </div>
            
            <div style="display: none; padding-top: 30px;" id="tbChinese">
                <table width="550" border="0">
                    <tbody><tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            标 题：
                        </td>
                        <td style="line-height: 22px;">
                            <input name="ctl00$ctl00$body$RoomBody$twoHouseTitle" id="twoHouseTitle" type="text" class="textinput" style="color: rgb(102, 102, 102);">
                            <span id="span5Two" class="color666">还能输入17个字符</span><br>
                            <span class="color666">
                                例如：东城四合院老北京特色便利实惠单间</span>
                            <div style="display: none;" id="twoHouseTitleDiv" class="SituationWarning">
                                请填写房间标题</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="RoomSituationTxtTd" style="line-height: 20px;">
                            描述：
                        </td>
                        <td>
                            <textarea name="ctl00$ctl00$body$RoomBody$twoTxtRoomdescription" id="twoTxtRoomdescription" class="textarea textarea02" style="color: rgb(102, 102, 102);"></textarea>
                            <div id="twoTxtRoomdescriptionDiv" style="display: none;" class="SituationWarning">
                                请填写房间描述</div>
                        </td>
                    </tr>
                </tbody></table>
            </div>
            <div class="RoomArea RoomDescription">
                <h5>
                    房间描述：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <h6>
                            包括以下内容可帮助租客更好地了解房间：</h6>
                        <p>
                            * <b>
                                内部情况介绍</b>如户型、面积、装修、家具家电、网络情况等</p>
                        <p>
                            * <b>
                                地理位置/地标性建筑</b>，如具体地点、周围的标志性建筑等</p>
                        <p>
                            * <b>
                                交通</b>，如公交站、地铁线路、如何去往机场或火车站等</p>
                        <p>
                            * <b>
                                周边生活配套</b>，如商场、超市、银行、医院等</p>
                        <p>
                            * <b>
                                周围景点</b>，如躺在床上就能欣赏海景等</p>
                        <h6>
                            不应包括：</h6>
                        <p>
                            *
                            电话号码、QQ号码等联系方式，影响线上成交量和房间排名否则信息将会被删除</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--便利设施-->
    <div class="RoomDescription">
        <div class="RoomSituationTit">
            便利设施</div>
        
        <div class="RoomSituationTxt RoomSituationTxt03">
            <!--2015-12-10Begin-->
            <div class="RoomFac PT10">
                <h2 class="RoomFacTit">
                    卫浴设施</h2>
                <ul class="Roomcheckboxs clearfix">
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbBathSupplies" type="checkbox" id="ckbBathSupplies">洗浴用品</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbSlipper" type="checkbox" id="ckbSlipper">拖鞋</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbAllDayHotWater" type="checkbox" id="ckbAllDayHotWater">24小时热水</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbHotTub" type="checkbox" id="ckbHotTub">热水浴缸</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbCanShower" type="checkbox" id="ckbCanShower">淋浴</label></li>
                </ul>
            </div>
            <div class="RoomFac">
                <h2 class="RoomFacTit">
                    家电及网络</h2>
                <ul class="Roomcheckboxs clearfix">
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbTv" type="checkbox" id="ckbTv">电视</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbIndoorFireplace" type="checkbox" id="ckbIndoorFireplace">电冰箱</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbComputer" type="checkbox" id="ckbComputer">电脑</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbWasher" type="checkbox" id="ckbWasher">洗衣机</label>
                        <span style="display: none;" id="spanWasherPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtWasherPrice" type="text" id="txtWasherPrice" value="0" maxlength="4" style="color: black;">元/桶</span>
                    </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbAirCondtioning" type="checkbox" id="ckbAirCondtioning">空调</label>
                        <span style="display: none;" id="spanAirCondtioningPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtAirCondtioningPrice" type="text" id="txtAirCondtioningPrice" value="0" maxlength="4" style="color: black;">元/天</span> </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbHeating" type="checkbox" id="ckbHeating">暖气</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbInternet" type="checkbox" id="ckbInternet">有线网络</label>
                        <span style="display: none;" id="spanInternetPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtInternet" type="text" id="txtInternet" value="0" maxlength="4" style="color: black;">元/天
                        </span></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbWirelessInternet" type="checkbox" id="ckbWirelessInternet">无线网络</label>
                        <span style="display: none;" id="spanWirelessInternetPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtWire" type="text" id="txtWire" value="0" maxlength="4" style="color: black;">元/天</span>
                    </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbWaterDispenser" type="checkbox" id="ckbWaterDispenser">饮水机</label></li>
                    <li language="en" style="display: none;">
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbDryer" type="checkbox" id="ckbDryer">烘干机</label></li>
                </ul>
            </div>
            <div class="RoomFac">
                <h2 class="RoomFacTit">
                    物业及房源其他设施</h2>
                <ul class="Roomcheckboxs clearfix">
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbElevatorinBuilding" type="checkbox" id="ckbElevatorinBuilding">电梯</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbHandicapAccessible" type="checkbox" id="ckbHandicapAccessible">无障碍设施</label>
                    </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbDoorman" type="checkbox" id="ckbDoorman">保安</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbMahjongDesk" type="checkbox" id="ckbMahjongDesk">自动麻将桌</label>
                        <span style="display: none;" id="spanMahjongDesk" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtMahjongDesk" type="text" id="txtMahjongDesk" value="0" maxlength="4" style="color: black;">元/天</span>
                    </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbParkingIncluded" type="checkbox" id="ckbParkingIncluded">停车位</label>
                        <span style="display: none;" id="spanParkingIncludedPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtParking" type="text" id="txtParking" value="0" maxlength="4" style="color: black;">元/天</span>
                    </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbBuzzer" type="checkbox" id="ckbBuzzer">对讲门禁系统</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbGym" type="checkbox" id="ckbGym">免费健身房</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbPool" type="checkbox" id="ckbPool">免费游泳池</label></li>
                    <li language="en" style="display: none;">
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbFirePlace" type="checkbox" id="ckbFirePlace">室内壁炉</label></li>
                </ul>
            </div>
            <div class="RoomFac">
                <h2 class="RoomFacTit">
                    服务</h2>
                <ul class="Roomcheckboxs clearfix">
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbCanPickUp" type="checkbox" id="ckbCanPickUp">可以接送</label>
                        <span id="spanCanPickUpPrice" style="display: none;" class="Charges">
                            收费<input name="ctl00$ctl00$body$RoomBody$txtCanpickUpPrice" type="text" id="txtCanpickUpPrice" value="0" maxlength="4" style="color: black;">元/次</span> </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbBreakfast" type="checkbox" id="ckbBreakfast">免费早餐</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbReceptionChild" type="checkbox" id="ckbReceptionChild">可接待家庭/孩子</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbSuitableForEvents" type="checkbox" id="ckbSuitableForEvents">适合举办活动</label>
                        <span style="display: none;" id="spanSuitableForEventsPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtEvents" type="text" id="txtEvents" value="0" maxlength="4" style="color: black;">元/
                            <select name="ctl00$ctl00$body$RoomBody$ddlSuitableForEventsType" id="ddlSuitableForEventsType">
	<option value="0">天</option>
	<option value="1">次</option>
</select>
                        </span></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbKitchen" type="checkbox" id="ckbKitchen">可用厨房</label>
                        <span style="display: none;" id="spanKitchenPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtKitchenPrice" type="text" id="txtKitchenPrice" value="0" maxlength="4" style="color: black;">元/天</span>
                    </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbpet" type="checkbox" id="ckbpet">可以携带宠物</label></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbLuggageDeposit" type="checkbox" id="ckbLuggageDeposit">行李寄存</label>
                        <span style="display: none;" id="spanLuggageDepositPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtLuggageDepositPrice" type="text" id="txtLuggageDepositPrice" value="0" maxlength="4" style="color: black;">元/天</span> </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbAddBed" type="checkbox" id="ckbAddBed">加床服务</label>
                        <span style="display: none;" id="spanAddBedPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtAddBedPrice" type="text" id="txtAddBedPrice" value="0" maxlength="4" style="color: black;">元/张</span>
                    </li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbTicketAgent" type="checkbox" id="ckbTicketAgent">票务代理</label>
                        <span style="display: none;" id="spanTicketAgentPrice" class="Charges">收费<input name="ctl00$ctl00$body$RoomBody$txtTicketAgentPrice" type="text" id="txtTicketAgentPrice" value="0" maxlength="4" style="color: black;">元/张</span></li>
                    <li>
                        <label>
                            <input name="ctl00$ctl00$body$RoomBody$ckbCanSmoking" type="checkbox" id="ckbCanSmoking">可以吸烟</label></li>
                </ul>
                <div id="errorFaci1" class="SituationWarning" style="display: none;">
                    请正确填写"有线电视"收费金额，请输入0或1-9999之间的数字</div>
                <div id="errorFaci2" class="SituationWarning" style="display: none;">
                    请正确填写"有线上网"收费金额，请输入0或1-9999之间的数字</div>
                <div id="errorFaci3" class="SituationWarning" style="display: none;">
                    请正确填写"无线上网"收费金额，请输入0或1-9999之间的数字</div>
                <div id="errorFaci4" class="SituationWarning" style="display: none;">
                    请正确填写"适合举办活动"收费金额，请输入0或1-9999之间的数字</div>
                <div id="errorFaci5" class="SituationWarning" style="display: none;">
                    请正确填写"停车位"收费金额，请输入0或1-9999之间的数字</div>
                <div id="errorFaci6" class="SituationWarning" style="display: none;">
                    请正确填写"自动麻将桌"收费金额，请输入0或1-9999之间的数字</div>
            </div>
            <!--2015-12-10End-->
            <div id="ckbRoomDescriptionError" style="display: none;" class="SituationWarning">请勾选便利设施！</div>
        </div>
        <div class="RoomNextBtn">
            <span><a href="http://www.youtx.com/room/new/324548/">&lt;&lt;
                上一步</a></span>
            <input id="btnNextStep" class="RoomNextBtnNext" type="button" value="下一步">
        </div>
    </div>
    </form>

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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="static/publish_house_2/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="static/publish_house_2/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="static/publish_house_2/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="static/publish_house_2/TrustYoutx.gif" width="100" height="35px"></a></li>
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
</script><script src="static/publish_house_2/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="static/publish_house_2/21.gif" width="20" height="20"></a>

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
<script type="text/javascript" src="static/publish_house_2/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="static/publish_house_2/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="static/publish_house_2/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="static/publish_house_2/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="static/publish_house_2/youtx_mi_query.js.下载" type="text/javascript"></script><script src="static/publish_house_2/WebIM.js.下载" type="text/javascript"></script><script src="static/publish_house_2/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->  
    


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="static/publish_house_2/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="static/publish_house_2/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div><div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;"><div class="Talk  PosRe" id="Talk"><div class="UserMenu" id="UserBox"><div class="UserMain" id="UserM" style="cursor: move;"><ul class="TabHeader" id="UserNr" style="top:0px;"></ul></div><div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar" style="display:block; top:0px;"></span></div></div><div class="Talk_center"><span class="DownArrow" style="display:none;"><img src="static/publish_house_2/dowearrow.gif" width="16" height="16"></span><ul class="Yichu" style="display:none;"></ul><div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span class="RentName"></span><span class="Chat_min"><img src="static/publish_house_2/SIcon.png" width="25" height="25"></span></div><div class="clear"></div><div id="youtx_ch_webim"></div></div><div class="Talk_right"> </div><div class="HouseRe PosAb" style="display:none;"></div></div></div><div style="display:none;"> <ul id="youtx_none_li"></ul><div id="youtx_none_div"></div> </div><div id="house_webim_s" style="display:none;"></div> <div id="soundContainer" style=" width:10px; height:10px ;"><embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window" src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle" allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></div><div id="OutBox" class="OutBox" style="top: 355px; left: 759.5px;"><div class="OutBoxbg" id="OutBoxbg"></div><a href="http://www.youtx.com/room/newtwoplan/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic" class="OutBoxPic" src="http://www.youtx.com/room/newtwoplan/324548" style="top: 0px;"></div><div class="ChatSmall"><div><ul id="ChatSmallUl"><li id="ChatMes" class="ChatMes">短消息（0）</li></ul><div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2><p class="All_mes"><a target="blank" href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a></p><ul class="Mes_main" id="IDUlMes_main"></ul></div></div></div></body></html>