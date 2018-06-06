<!DOCTYPE html>
<!-- saved from url=(0045)http://www.youtx.com/room/newthreeplan/324548 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="${base}/static/publish_house_3/countpv" width="0" height="0"><script charset="utf-8" src="${base}/static/publish_house_3/v.js.下载"></script><script type="text/javascript" async="" src="${base}/static/publish_house_3/load.min.js.下载"></script><script src="${base}/static/publish_house_3/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="${base}/static/publish_house_3/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
    <link href="${base}/static/publish_house_3/public.css" rel="stylesheet" type="text/css"> 
    
    <script type="text/javascript">
        var userid1;
        $(function () {
            userid1 = "2600363";
        });
    </script>
    
   <title>我要出租-上传照片-游天下</title>
    <link href="${base}/static/publish_house_3/DescriptionenNew.css" rel="stylesheet" type="text/css">
    <style type="text/css">

        #content
        {
            background-repeat: no-repeat;
            padding-top: 5px;
            font-family: Trebuchet MS, Lucida Sans Unicode, Arial, sans-serif;
            height: 100%;
            width: 100%;
            margin: 10px;
            padding-left: 0px;
        }
        form
        {
            display: inline;
        }
        .imageBox, .imageBoxHighlighted
        {
            width: 170px; /* Total width of each image box */
            height: 180px; /* Total height of each image box */
            float: left;
            position: relative;
        }
        .imageBox_theImage
        {
            width: 160px; /* Width of image */
            height: 120px; /* Height of image */ /*Don't change these values */
            background-position: center center;
            background-repeat: no-repeat;
            margin: 0 auto;
            margin-bottom: 2px;
        }
        .imageBox .imageBox_theImage
        {
            border: 1px solid #DDD; /* Border color for not selected images */
            padding: 2px;
        }
        .imageBoxHighlighted .imageBox_theImage
        {
            border: 3px solid #316AC5; /* Border color for selected image */
            padding: 0px;
        }
        .imageBoxHighlighted span
        {
            /* Title of selected image */
            background-color: #316AC5;
            color: #FFFFFF;
            padding: 2px;
        }
        
        .imageBox_label
        {
            /* Title of images - both selected and not selected */
            text-align: center;
            font-family: arial;
            font-size: 12px;
            padding-top: 2px;
            margin: 0 auto;
            width: 164px;
        }
        
        /*DIV that indicates where the dragged image will be placed*/
        #insertionMarker
        {
            height: 180px;
            width: 6px;
            position: absolute;
            display: none;
        }
        
        #insertionMarkerLine
        {
            width: 6px; /* No need to change this value */
            height: 185px; /* To adjust the height of the div that indicates where the dragged image will be dropped */
        }
        
        #insertionMarker img
        {
            float: left;
        }
        
        /*DIV that shows the image as you drag it*/
        #dragDropContent
        {
            opacity: 0.4; /* 40 % opacity */
            filter: alpha(opacity=40); /* 40 % opacity */ /*No need to change these three values*/
            position: absolute;
            z-index: 10;
            display: none;
        }
        *
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
        }
        #fullbg
        {
            background-color: #000;
            display: none;
            z-index: 99;
            position: fixed;
            _position: absolute;
            left: 0px;
            top: 0px;
            filter: Alpha(Opacity=20); /* IE */
            -moz-opacity: 0.2; /* Moz + FF */
            opacity: 0.2;
        }
        #dialog
        {
            position: absolute;
            width: 790px;
            height: 475px;
            display: none;
            z-index:100;
        }
    </style>
    <script src="${base}/static/publish_house_3/floating-gallery.js.下载" type="text/javascript"></script>
    <script type="text/javascript">
        var saveFlag = 0;
        var clickFlag = 0;
        var img;
        var getPost = 0;
        var dtime;
        var FileExt;
        var timeOut;
        var houseID = "324548";
        var count;
        var cin = 0;
        var picAdd = 0;
        var oneormore = 0;
        var file1; //图片路径
        var yishenhe = 'http://js.youtx.com/images/yishenhe.png';
        var AllowExt = ".jpg|.jpeg|.gif|.bmp|.png|"; //允许上传的文件类型 ?为无限制 每个扩展名后边要加一个"|" 小写字母表示
        if (!myCookie) {
            var myCookie = {
                getExpDate: function (days, hours, minutes) {
                    var expDate = new Date();
                    if (typeof (days) == "number" && typeof (hours) == "number" && typeof (hours) == "number") {
                        expDate.setDate(expDate.getDate() + parseInt(days));
                        expDate.setHours(expDate.getHours() + parseInt(hours));
                        expDate.setMinutes(expDate.getMinutes() + parseInt(minutes));
                        return expDate.toGMTString();
                    }
                },
                setCookie: function (name, value, expiry, path, domain, secure) {
                    var nameString = name + "=" + value;
                    var expiryString = (expiry == null) ? "" : " ;expires = " + expiry;
                    var pathString = (path == null) ? "" : " ;path = " + path;
                    var domainString = (domain == null) ? "" : " ;domain = " + domain;
                    var secureString = (secure) ? ";secure" : "";
                    document.cookie = nameString + expiryString + pathString + domainString + secureString;
                },
                getCookie: function (name) {
                    var CookieFound = false;
                    var start = 0;
                    var end = 0;
                    var CookieString = document.cookie;
                    var i = 0;
                    while (i <= CookieString.length) {
                        start = i;
                        end = start + name.length;
                        if (CookieString.substring(start, end) == name) {
                            CookieFound = true;
                            break;
                        }
                        i++;
                    }
                    if (CookieFound) {
                        start = end + 1;
                        end = CookieString.indexOf(";", start);
                        if (end < start)
                            end = CookieString.length;
                        return unescape(CookieString.substring(start, end));
                    }
                    return "";
                },
                deleteCookie: function (name) {
                    var exp = new Date();
                    exp.setTime(exp.getTime() - 100);
                    var cval = myCookie.getCookie(name);
                    if (cval != null) {
                        document.cookie = name + "=a" + ";expires=" + exp.toGMTString() + " ;path=/ ;domain=youtx.com";
                    }
                }
            }
        }
        $(function () {
            //========2012-8-21点击按钮添加单张图片=====//

            //=======end========//
            //$("#dialog").attr("style","top:300px;left:500px;");
            if (Number($("#listCount").html()) >= 1) {
                try {
                    initGallery();
                } catch (e) {

                }
            }
            if (Number($("#listCount").html()) >= 3) {
                $("#upLoadError").hide();
            }
            //=======关闭flash=========
            $("#closeSwf").click(function () {
                $("#ShowSwf").prop("disabled", false);
            });
            //===打开单张图片上传入口==
            $(".SingleUploadClick").click(function () {
                if ($("#iconimage").val().length <= 0 && getPost == 1) {
                    $(".SingleUpload").hide();
                    getPost = 0;
                } else {
                    $(".SingleUpload").show();
                    getPost = 1;
                }
            });
            //=========单张图片上传===========
            $("#iconimage").change(function () {
                $("#upLoadError").hide();
                if ($("#iconimage").val() != "") {
                    $("#iconimagetxt").val($("#iconimage").val());
                    $("#ShowSwf").attr("disabled", true);
                } else {
                    $("#ShowSwf").prop("disabled", false);
                }
                uploadSingelPic();
            });


            //=======返回上一步=======
            $("#RoomNextBtnPrev").click(function () {
                location.href = "/room/newtwoplan/324548/";
            });
            //======进入下一步=======
            $("#RoomNextBtnNext").click(function () {
                if (clickFlag == 0) {
                    clickFlag = 1;
                    if (Number($("#listCount").html()) < 3) {
                        $("#upLoadError").attr("style", "").html("请至少上传3张照片！").show();
                        clickFlag = 0;
                        return;
                    } else {
                        if (saveFlag == 1) {
                            return;
                        }
                        $.get("/publish/Ajax/HouseInfoAction.aspx", { schedule: "1", houseid: houseID, dtim: new Date().getTime() }, function (date) {
                            $("#RoomNextBtnNext").attr("style", "background:url('http://js.youtx.com/images/PaymentBtn2.gif') repeat scroll 0 35px;");
                            clickFlag == 0;
                            location.href = "/room/newfourplan/324548/";
                        });

                    }
                }
            });
        });
        //=============单张图片上传==========
        function uploadSingelPic() {
            FileExt = jQuery.trim(jQuery("#iconimage").val()).substr(jQuery.trim(jQuery("#iconimage").val()).lastIndexOf(".")).toLowerCase();
            if (AllowExt != 0 && AllowExt.indexOf(FileExt + "|") == -1) //判断文件类型是否允许上传
            {
                $("#upLoadError").html("该文件类型不允许上传。请上传 " + AllowExt + " 类型的文件。");
                return;
            } else if ((jQuery.trim(jQuery("#iconimage").val()) == "")) {
                $("#upLoadError").html("请选择图片!");
                return;
            } else if (Number($("#listCount").html()) < 50) {
                var radtime = new Date();
                radtime = radtime.getTime();
                var vform = $("#postImg");
                vform.attr("action", "http://imgku.youtx.com/upload/duanzu?city=&channel=duanzu.houseinfo&sid=" + radtime + "&backurl=");
                $("#postImg").submit();
                var imgsrc = "";
                var timeWait = true;
                //图片上传漏斗开始
                $("#c4_p_g_l_two_red").hide();
                $("#c4_p_g_l_two_green").css("background", "").html('<img src=\"http://js.youtx.com/images/loading_03.gif\"/>');
                $("#c4_p_g_l_two_green").show();
                $("#c4_p_g_l_two_green").parent().show();
                setTimeout(function () {
                    var __uploadcheck_timeindex = 0;
                    __uploadcheck_timeindex = window.setInterval(function () {
                        var imgsrc = myCookie.getCookie("Picture_" + radtime);
                        if (imgsrc == "-1" || imgsrc == "302" || imgsrc == -1 || imgsrc == 302) {
                            myCookie.deleteCookie("Picture_" + radtime);
                            $("#c4_p_g_l_two_green").hide();
                            $("#upLoadError").text("上传失败，照片超过10M").css({ "color": "red", "background": "url('http://js.youtx.com/images/RoomErrorBtn.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();
                            window.clearInterval(__uploadcheck_timeindex);
                        } else if (imgsrc != "" && imgsrc.split('|')[0].indexOf(".") > 0) {
                            count = Number($("#listCount").html());
                            $("#listCount").html(count + 1);
                            myCookie.deleteCookie("Picture_" + radtime);
                            __uploadcheck_timeindex = 0;
                            img = imgsrc.split('|');
                            if (Number($("#listCount").html()) >= 3) {
                                $("#c4_p_g_l_two_green").text("上传成功，可继续上传新照片").css({ "color": "green", "background": "url('http://js.youtx.com/images/duigou.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();
                            } else {
                                $("#upLoadError").text("上传成功，可继续上传新照片").css({ "color": "green", "background": "url('http://js.youtx.com/images/duigou.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();

                                $("#c4_p_g_l_two_green").hide();
                            }
                            $("#iconimage").val("");
                            window.clearInterval(__uploadcheck_timeindex);
                            if (getPost == 0) {
                                oneormore = 1;
                                UpLoadPicOneOrMore(img[0]);
                            }
                            getPost = 0;
                            return;
                        }
                    }, 100);
                }, 3000);
                //漏斗结束
                getPost = 0;
            } else {
                $("#upLoadError").text("您上传的图片已经超过50张").css({ "color": "red", "background": "url('http://js.youtx.com/images/RoomErrorBtn.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();
                $("#ShowSwf").prop("disabled", false);
                $("#c4_p_g_l_two_green").hide();
                $("#c4_p_g_l_two_red").show();
                $("#c4_p_g_l_two_red").parent().show();
            }
            $("#ShowSwf").prop("disabled", false);
        }
        //==========图片上传=============
        function UpLoadPicOneOrMore(url) {
            dtime = new Date().getTime();
            if (url != "") {
                // $("#imgpath").val(url);
                $.get("/publish/Ajax/HouseInfoAction.aspx", { InsertPicstr: url, flagPic: "1", publishPic: "1", houseid: houseID, dtim: dtime }, function (date) {
                    if (date != "0" && date != "null") {
                        getPost = 1; $("#iconimagetxt").val("");
                        if (oneormore == 1) {//单张上传
                            if (navigator.userAgent.toLowerCase().indexOf("msie") > 0) {
                                $("#iconimage").change(function () {
                                    if (timeOut > 100) {
                                        return false;
                                    }
                                    $("#postImg").submit();
                                });
                            } else {
                                $("#iconimage").val("");
                            }
                        }
                        var datearr = date.split('|');
                        if (Number(datearr[0]) > 0) {
                            if (Number($("#listCount").html()) >= 3) {
                                $("#upLoadError").hide();
                            }
                            $("#sehngyuCount").html(50 - Number($("#listCount").html()));
                            var addTime = new Date().toString("yyyy-MM-dd HH:mm:ss");
                            if ($(".imageBoxHighlighted")) {
                                $("#" + $(".imageBoxHighlighted").attr("id")).attr("class", "imageBox");
                            }
                            var appStr = "<div class='imageBox' id='imageBox" + datearr[0] + "' style='cursor:pointer' name=imageBox><div type='' forfor='imageBox" + count + "' picurl='" + url + "' pictitle='' timetime='" + addTime + "' picid='" + datearr[0] + "' class='imageBox_theImage'  style='background-image:url(" + datearr[1] + ")'></div><div class='imageBox_label'><p forfor='imageBox" + count + "' picurl='" + url + "' pictitle='' timetime='" + addTime + "' picid='" + datearr[0] + "'><input id='pTitle" + datearr[0] + "' type='text' value='请对照片进行描述' onfocus='javascript:inputpFocus(" + datearr[0] + ");' onblur='javascript:inputpBlur(" + datearr[0] + ")'/></p><select style='width:-moz-available;width: 134px;height: 23px;border-top-width: 1px;margin-top: 5px;' onchange='javascript:picsechange(" + datearr[0] + ",this)'><option value ='0'>请给照片分类</option><option value ='1'>卧室</option><option value ='2'>客厅</option><option value ='3'>厨房</option><option value ='4'>洗手间</option><option value ='5'>阳台</option><option value ='6'>休闲区</option><option value ='7'>小区图</option><option value ='8'>景观图</option></select><div id='warning" + datearr[0] + "' class='SituationWarning'>标题过长，最多50个汉字！</div><div onclick='javascript:delPic(" + datearr[0] + ");' class='RoomPicolse'><img src='http://js.youtx.com/images/RoomcolseBtn.gif'/></div></div></div>";
                            $("#GalleryContainer").append(appStr);
                            $("#warning" + datearr[0]).hide();
                            getPost = 0;
                            initGallery();
                        }
                    } else {
                        $(".SituationWarning").text("上传失败！");
                    }
                });
            }
            getPost = 0;
        }
      
        //==========排序=============
        var nullpic = 0;
        actionAjxSort = function () {
            var ImgBox = $(".imageBox p");
            var newSort = "";
            var s = "";
            var sBox = $("div[id^='imageBox'][class='imageBox']");
            var intDel = 0;
            $.each(sBox, function (n, v) {
                if ($(v).css("display") == "block") {
                    s += $($(v).find("p")).attr("picid") + ",";
                }
            });
            if (s == "") {
                s = 'http://js.youtx.com/images/fangyuan.jpg';
            }
            dtime = new Date().getTime();
            $.get("/publish/Ajax/HouseInfoAction.aspx", {
                PicSort: s,
                houseid: houseID,
                dtim: dtime
            }, function (date) {
                if (date == "OK") {
                    //判断按钮url属性更改
                    $("#PicDefault").attr("src", 'http://js.youtx.com/images/fangyuan.jpg');
                } else {
                    var srr = date.split('|');
                    if (srr[0] == null || srr[0] == undefined || srr[0] == "") {
                        setTimeout(function () {
                            actionAjxSort();
                        }, 500);
                    } else {
                        var ti = $(".imageBox p[picid='" + srr[1] + "']").attr("pictitle");
                        if (ti != "") {
                            $("#imgname").val($(".imageBox p[picid='" + srr[1] + "']").attr("pictitle"));
                        }
                        else {
                            $("#imgname").val("请对照片进行描述");
                        }
                    }
                }
            });
        };
        //图片分类
        function picsechange(pId, t) {
        dtime = new Date().getTime();
        $.get("/publish/Ajax/HouseInfoAction.aspx", {
            EditPicType: $(t).val(),
            picid: pId,
            houseid: houseID,
            dtim: dtime
        }, function (data) {
            if (data == "success") {
                $("#warning" + pId).text("保存成功！").css({ "color": "green", "background": "url('http://js.youtx.com/images/duigou.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();
                setTimeout(function () {
                    $("#warning" + pId).hide();
                }, 1000);
            }
        });
    }
        //===========鼠标移入编辑标题=============
        function inputpFocus(pId) {
            $("#pTitle" + pId).css("color", "black");
            if ($("#pTitle" + pId).val() == "请对照片进行描述") {
                $("#pTitle" + pId).val("");
            }
            $(".SituationWarning").hide();
        }
        //===========鼠标移出保存标题=============
        function inputpBlur(pId) {
            if ($("#pTitle" + pId).val() == "" || $("#pTitle" + pId).val() == "请对照片进行描述") {
                $("#pTitle" + pId).val("请对照片进行描述").css("color", "#666");
            }
            if (Number(getsLength($("#pTitle" + pId).val())) > 50) {
                $(".imageBox_label").css("text-align", "left");
                //图片标题最多输入50个汉字
                $("#warning" + pId).text("标题过长，最多50个汉字！").css({ "color": "red", "background": "url('http://js.youtx.com/images/RoomErrorBtn.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();
                saveFlag = 1;
                clickFlag = 0;
                return;
            } else {
                if (CheckMailQQTel($("#pTitle" + pId).val()) == false) {
                    $(".imageBox_label").css("text-align", "left");
                    //图片标题不能包含联系方式
                    $("#warning" + pId).text("标题不能包含联系方式！").css({ "color": "red", "background": "url('http://js.youtx.com/images/RoomErrorBtn.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();
                    saveFlag = 1; clickFlag = 0;
                    return;
                } else {
                    //保存图片标题
                    if ((($("#imageBox" + pId + ">div").attr("pictitle") == $("#pTitle" + pId).val()) && $("#pTitle" + pId).val() != "") || $("#pTitle" + pId).val() == "请对照片进行描述") {
                        return;
                    }
                    dtime = new Date().getTime();
                    $.get("/publish/Ajax/HouseInfoAction.aspx", {
                        EditPicstr: $("#pTitle" + pId).val(),
                        picid: pId,
                        houseid: houseID,
                        dtim: dtime
                    }, function (date) {
                        if (date == "操作成功") {
                            $(".imageBox_label p[picid='" + pId + "']").attr("pictitle", $("#pTitle" + pId).val());
                            $("div.imageBox_theImage[picid='" + pId + "']").attr("pictitle", $("#pTitle" + pId).val());
                            $(".imageBox_label").css("text-align", "left");
                            if ($("#pTitle" + pId).val() == "") {
                                $("#pTitle" + pId).val("请对照片进行描述");
                            }
                            $("#warning" + pId).text("保存成功！").css({ "color": "green", "background": "url('http://js.youtx.com/images/duigou.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();
                            saveFlag = 0;
                            setTimeout(function () {
                                $("#warning" + pId).hide();
                            }, 1000);
                            clickFlag = 0;
                        }
                    });
                }
            }

        }

      
        //========图片删除执行的函数=========
        function delPic(pId) {
            $(".RoomPicolse").css("cursor", "pointer");
            if (confirm("您确定要删除这张照片吗？该操作不可恢复！")) {
                dtime = new Date().getTime();
                $.get("/publish/Ajax/HouseInfoAction.aspx", {
                    DelPicId: pId, houseid: houseID, dtim: dtime
                }, function (data) {
                    if (data == "OK") {
                        $(".imageBox_label").css("text-align", "left");
                        $("#warning" + pId).text("图片删除成功！").css({ "color": "green", "background": "url('http://js.youtx.com/images/duigou.gif') left top no-repeat", "line-height": "16px", "padding-left": "20px", "margin": "5px 0 7px" }).show();
                        setTimeout(function () {
                            $("#warning" + pId).hide();
                        }, 500);
                        $("#imageBox" + pId).remove();
                        actionAjxSort();
                        var picCount = 50 - Number($("#sehngyuCount").html()) - 1;
                        $("#sehngyuCount").html(50 - Number(picCount));
                        $("#listCount").html(Number($("#listCount").html()) - 1);
                        if ($("#listCount").html() < 3) {
                            $.post("/publish/Ajax/HouseInfoAction.aspx", { houseInfoID: houseID, delFlag: "1", Flag: "shenhe", datetime: new Date().getTime() }, function (data) {

                            });
                        }
                    }
                });
            }
        }
        var waitPicCount = 0;
        //================flash上传图片后回调的函数==========
        function startUpload() {
            if (Number($("#sehngyuCount").html()) - Number(waitPicCount) >= 0) {
                var radtime = new Date();
                radtime = radtime.getTime();
                var scriptURL = "http://imgku.youtx.com/upload/duanzu?city=&channel=duanzu.houseinfo&isflash=y&sid=" + radtime + "&backurl=";
                setTimeout(function () {
                    thisMovie("uploadfl").startFileUpload(scriptURL);
                }, 1000)
            } else {
                $("#divAlertTxt").html("共可上传50张照片<br>现超出" + (Number(waitPicCount) - Number($("#sehngyuCount").html())) + "张，请删除");
                $("#divNumAlert").show();
            }
        }
        //============获得字符长度=================
        function getsLength(titles) {
            var len = titles.length;
            var lengtha = 0;
            for (var i = 0; i < len; i++) {
                if (titles.charCodeAt(i) > 255) lengtha += 2;
                else lengtha++;
            }
            return parseInt(lengtha / 2);
        }
        function getFlieNum(num) {
            waitPicCount = num;
        }
        function getURL(url, iserror, isover) {
            oneormore = 2;
            if (url != "-1" && url != "302" && url != -1 && url != 302 && url != "") {
                var imgar = url.split('|');
                if (imgar[0].indexOf(".") > 0) {
                    UpLoadPicOneOrMore(imgar[0]);
                }
            }
        }
        function thisMovie(movieName) {
            var isIE = navigator.appName.indexOf("Microsoft") != -1;
            return document[movieName]; /*(!isIE) ? window[movieName] : */
        }
        //是否包含邮箱、qq、手机联系方式
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

            return parseInt(lengtha / 2);
        }
        //=====用于验证是否包含联系方式的函数=====
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
        function showBg(ct, content) {
            var bH = $("body").height();
            var bW = $("body").width() + 16;
            var objWH = getObjWh(ct);
            $("#fullbg").css({ width: bW, height: bH, display: "block" });
            var tbT = objWH.split("|")[0] + "px";
            var tbL = objWH.split("|")[1] - 30 + "px";
            $("#" + ct).css({ top: tbT, left: tbL, display: "block" });
            $("#" + content).html("<div style='text-align:center'>正在加载，请稍后…</div>");
            $(window).scroll(function () { resetBg() });
            $(window).resize(function () { resetBg() });
        }
        function getObjWh(obj) {
            var st = document.documentElement.scrollTop;
            var sl = document.documentElement.scrollLeft;
            var ch = document.documentElement.clientHeight;
            var cw = document.documentElement.clientWidth;
            var objH = $("#" + obj).height();
            var objW = $("#" + obj).width();
            var objT = Number(st) + (Number(ch) - Number(objH)) / 2;
            var objL = Number(sl) + (Number(cw) - Number(objW)) / 2;
            return objT + "|" + objL;
        }
        function resetBg() {
            var fullbg = $("#fullbg").css("display");
            if (fullbg == "block") {
                var bH2 = $("body").height();
                var bW2 = $("body").width() + 16;
                $("#fullbg").css({ width: bW2, height: bH2 });
                var objV = getObjWh("dialog");
                var tbT = objV.split("|")[0] + "px";
                var tbL = objV.split("|")[1] - 30 + "px";
                $("#dialog").css({ top: tbT, left: tbL });
            }
        }
        function closeBg() {
            $("#fullbg").css("display", "none");
            $("#dialog").css("display", "none");
        }
       
    </script>


    
   
<script src="${base}/static/publish_house_3/saved_resource"></script><link rel="stylesheet" type="text/css" href="${base}/static/publish_house_3/Youtx_WebIM.css"></head>
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
<script type="text/javascript" src="${base}/static/publish_house_3/Login_Cookie.js.下载"></script>
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
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="${base}/static/publish_house_3/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/publish_house_3/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
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
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/publish_house_3/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="${base}/static/publish_house_3/ewmBNew.jpg" width="102" height="102"></dd>
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
            <img src="${base}/static/publish_house_3/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/publish_house_3/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/publish_house_3/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="${base}/static/publish_house_3/ewmBNew.jpg" width="102" height="102"></dd>
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
            <h3><img id="daohang" src="${base}/static/publish_house_3/publishPlan503_.jpg" alt=""></h3>
            
    <div id="fullbg">
    </div>
    <div id="dialog" style="margin: 0px;" class="PhonesUplaoad">
        <!-- 上传图片按钮 -->
        <div>
            <div style="position: absolute; left: 330px; top: 420px; z-index: 3; display: block;">
                <input type="button" id="btnSubmit_F" class="scbuttonall02" onclick="startUpload();">
            </div>
            <div style="position: absolute; right: 1px; top: 1px; z-index: 3; display: block;">
                <a id="closeSwf" onclick="closeBg();" style="cursor: pointer;">
                    <img src="${base}/static/publish_house_3/xx.jpg" alt=""></a>
            </div>
            <div id="divNumAlert" class="tip_holder" style="display: none; left: 37%; top: 180px;">
                <div id="moreCount" class="poplayer01">
                    <div id="divAlertTxt" class="poplayer01_content">
                    </div>
                    <p>
                        <a onclick="jQuery(&quot;#divNumAlert&quot;).hide();jQuery(&quot;#divAlertTxt&quot;).html(&quot;&quot;)">
                            <img width="70" height="22" onmouseout="$(this).attr(&#39;src&#39;,&#39;http://js.youtx.com/images/icons09s.gif&#39;)" onmouseover="$(this).attr(&#39;src&#39;,&#39;http://js.youtx.com/images/icons09.gif&#39;)" id="Image5" src="${base}/static/publish_house_3/icons09.gif"></a></p>
                </div>
            </div>
        </div>
        <div id="event_upload">
            <object width="800" align="middle" height="445" id="uploadfl" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000">
                <param value="always" name="allowScriptAccess">
                <param value="true" name="allowFullScreen">
                <param value="/scripts/sfUpload.swf?a=20110802?d=1" name="movie">
                
                <param value="high" name="quality">
                
                <param value="#ffffff" name="bgcolor">
                <embed width="750" align="middle" height="430" allowscriptaccess="always" name="uploadfl" id="uploadfl" wmode="" bgcolor="#ffffff" quality="high" src="/scripts/sfUpload.swf?a=20110802?d=1" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">
            </object>
            <script type="text/javascript">
                $(document).ready(function () {
                    if (navigator.userAgent.toLowerCase().indexOf("firefox") > 0) {
                        $("embed[type='application/x-shockwave-flash']").attr("id", "uploadfl").attr("name", "uploadfl");
                    }
                    else if (navigator.userAgent.toLowerCase().indexOf("chrome") > 0) {
                        $("param[value='transparent']").remove();
                        $("param[value='Opaque']").remove();
                        $("embed[type='application/x-shockwave-flash']").attr("wmode", "").attr("id", "uploadfl").attr("name", "uploadfl").attr("width", 750).attr("height", 430);
                        $("#iconimage").css("width", "300px");
                    }
                    if (navigator.userAgent.toLowerCase().indexOf("msie 6.") >= 0) {
                        var floatDIV = $("#fullbg").clone(); $("#fullbg").remove(); $("div.wrapper:first").before(floatDIV);
                    }
                    //ie11兼容
                    if (navigator.userAgent.toLowerCase().search(/(msie\s|trident.*rv:)([\w.]+)/) >= 0) {
                        $("embed[type='application/x-shockwave-flash']").attr("id", "uploadfl").attr("name", "uploadfl");
                    }
                });
                var waitPicCount = 0;
                function startUpload() {
                    if (Number($("#sehngyuCount").html()) - Number(waitPicCount) >= 0) {
                        var radtime = new Date();
                        radtime = radtime.getTime();
                        var scriptURL = "http://imgku.youtx.com/upload/duanzu?city=&channel=duanzu.houseinfo&isflash=y&sid=" + radtime + "&backurl=";
                        setTimeout(function () {
                            thisMovie("uploadfl").startFileUpload(scriptURL);
                        }, 1000)
                    } else {
                        $("#divAlertTxt").html("共可上传50张照片<br>现超出" + (Number(waitPicCount) - Number($("#sehngyuCount").html())) + "张，请删除");
                        $("#divNumAlert").show();
                    }
                }
                function getFlieNum(num) { waitPicCount = num; }
                function getURL(url, iserror, isover) {
                    oneormore = 2;
                    if (url != "-1" && url != "302" && url != -1 && url != 302 && url != "") {
                        var imgar = url.split('|');
                        if (imgar[0].indexOf(".") > 0) {
                            var count = Number($("#listCount").html());
                            $("#listCount").html(count + 1);
                            UpLoadPicOneOrMore(imgar[0]);
                        }
                    }
                }
                function thisMovie(movieName) {
                    var isIE = navigator.appName.indexOf("Microsoft") != -1;
                    return document[movieName]; /*(!isIE) ? window[movieName] : */
                }
            </script>
        </div>
    </div>
    <iframe name="hidden_frame" id="hidden_frame" style="display: none" src="${base}/static/publish_house_3/saved_resource.html"></iframe>
    <form id="postImg" enctype="multipart/form-data" action="http://www.youtx.com/room/newthreeplan/324548" method="post" target="hidden_frame">
    <input type="text" id="CloseTime" style="display: none;" value="">
    <div id="listCount" style="display: none;">
        0</div>
    <div class="RoomDescription">
        <div class="RoomSituationTit">
            房间照片</div>
<!--2012-8-6修改--> <!--添加类名RoomSituationPhotoTxt-->
        <div class="RoomSituationTxt RoomSituationPhotoTxt">
<!--2012-8-6修改-结束-->
 
            <div class="RoomPhoto">
                <p>
                <!--2012-8-21修改--><!--错误，多了一个class-->
                    <input type="button" onclick="showBg(&#39;dialog&#39;,&#39;dialog_content&#39;);" id="ShowSwf" class="RoomPhotoBtn"></p>
                <!--2012-8-21修改-结束-->
                <p>
                    <strong>若批量上传功能无法使用，请使用 <a class="SingleUploadClick" href="javascript:void(0)">单张上传</a></strong></p>
                <p class="SingleUpload" style="display: none;">
                    <span class="photo_title">单张上传：</span>
                    <!--2012-8-21修改-->
                   <!-- <input type="file" style="border: #7f9db9 1px solid; background: #ebebe4; height: 27px;
                        vertical-align: middle; cursor: pointer;" size="50" id="iconimage" name="iconimage" />--> 
                    <input type="file" class="iconimage" size="36" id="iconimage" name="iconimage" style="width: 300px;">
                   
                    <span class="iconimagetxt"><input class="iconimageInput" type="text" id="iconimagetxt" value=""><input class="iconimageButton" type="button" value="浏览..." id="dianjiceshi"></span>

                <!--2012-8-21修改-结束-->
                </p>
                <div class="c4_p_g_l_two" style="display: none">
                    <p class="c4_p_g_l_two_red" id="c4_p_g_l_two_red" style="display: none">
                        上传成功了！</p>
                    <p class="c4_p_g_l_two_green" id="c4_p_g_l_two_green" style="font-size: 12px; font-weight: normal;
                        display: none">
                        正在上传照片...</p>
                </div>
                <div class="SituationWarning" id="upLoadError" style="display: none;">
                    请至少上传3张照片</div>
            </div>
<!--2012-8-6修改--> <!--修改类名-->
            <div class="RoomSimilar02">
<!--2012-8-6修改-结束-->
                <h5>
                    上传小提示：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <p class="RoomAreaTxtP">
                            * 需至少上传<span class="colorbd6600">3张</span>照片，图片大小在<span class="colorbd6600">10MB</span>以内，支持<span class="colorbd6600">批量上传</span>，每次最多18张，推荐比例4:3</p>
                       <p class="RoomAreaTxtP">* 可上传室内图、小区环境、周边设施等照片，多方位展示您的房源</p>
                        <p class="RoomAreaTxtP">
                            * 还可上传<span id="sehngyuCount">50</span>&nbsp;张，照片越多，越清晰，效果越好</p>
                        <p class="RoomAreaTxtP">* 为提高房源照片展示的美观度，房天下现所有照片均默认展示横版，请拍摄横版照片上传</p>
                    </div>
                </div>
            </div>
        </div>
        <!--2012-8-6修改-结束-->
        <!--2012-8-21修改--><!--清除浮动-->
       <div class="CB"></div>
        <!--2012-8-21修改-结束-->
        <div class="RoomPhotoPics">
            <h2>
                第一张照片是<span class="colorbd6600">标题图</span>，您可拖动对照片进行重新排序</h2>
            <div id="content">
                <div id="GalleryContainer">
                    
                </div>
                <p id="debug" style="clear: both; word-wrap: break-word; overflow: hidden;">
                </p>
                <div id="insertionMarker">
                    <img src="${base}/static/publish_house_3/marker_top.gif">
                    <img src="${base}/static/publish_house_3/marker_middle.gif" id="insertionMarkerLine">
                    <img src="${base}/static/publish_house_3/marker_bottom.gif">
                </div>
                <div id="dragDropContent">
                </div>
            </div>
            <div class="RoomNextBtn">
                
                <span id="RoomNextBtnPrev"><a href="http://www.youtx.com/room/newtwoplan/324548">&lt;&lt; 上一步</a></span>
                <input id="RoomNextBtnNext" class="RoomNextBtnNext" type="button" value="下一步">
            </div>
        </div>
    </div>
    
    <input type="hidden" id="imgpath">
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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="${base}/static/publish_house_3/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="${base}/static/publish_house_3/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="${base}/static/publish_house_3/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="${base}/static/publish_house_3/TrustYoutx.gif" width="100" height="35px"></a></li>
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
</script><script src="${base}/static/publish_house_3/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="${base}/static/publish_house_3/21.gif" width="20" height="20"></a>

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
<script type="text/javascript" src="${base}/static/publish_house_3/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="${base}/static/publish_house_3/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="${base}/static/publish_house_3/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="${base}/static/publish_house_3/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="${base}/static/publish_house_3/youtx_mi_query.js.下载" type="text/javascript"></script><script src="${base}/static/publish_house_3/WebIM.js.下载" type="text/javascript"></script><script src="${base}/static/publish_house_3/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->  
    


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="${base}/static/publish_house_3/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/publish_house_3/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div><div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;"><div class="Talk  PosRe" id="Talk"><div class="UserMenu" id="UserBox"><div class="UserMain" id="UserM" style="cursor: move;"><ul class="TabHeader" id="UserNr" style="top:0px;"></ul></div><div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar" style="display:block; top:0px;"></span></div></div><div class="Talk_center"><span class="DownArrow" style="display:none;"><img src="${base}/static/publish_house_3/dowearrow.gif" width="16" height="16"></span><ul class="Yichu" style="display:none;"></ul><div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span class="RentName"></span><span class="Chat_min"><img src="${base}/static/publish_house_3/SIcon.png" width="25" height="25"></span></div><div class="clear"></div><div id="youtx_ch_webim"></div></div><div class="Talk_right"> </div><div class="HouseRe PosAb" style="display:none;"></div></div></div><div style="display:none;"> <ul id="youtx_none_li"></ul><div id="youtx_none_div"></div> </div><div id="house_webim_s" style="display:none;"></div> <div id="soundContainer" style=" width:10px; height:10px ;"><embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window" src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle" allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></div><div id="OutBox" class="OutBox" style="top: 355px; left: 759.5px;"><div class="OutBoxbg" id="OutBoxbg"></div><a href="http://www.youtx.com/room/newthreeplan/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic" class="OutBoxPic" src="http://www.youtx.com/room/newthreeplan/324548" style="top: 0px;"></div><div class="ChatSmall"><div><ul id="ChatSmallUl"><li id="ChatMes" class="ChatMes">短消息（0）</li></ul><div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2><p class="All_mes"><a target="blank" href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a></p><ul class="Mes_main" id="IDUlMes_main"></ul></div></div></div></body></html>