//问答相关内容
var RecordCount = 0;
var da = 0;
var cookieLanguage = "LN";
var cookieCoin = "huobi";
var FavPath = "/s/fuser";
var NewAnswer = 0;
$(function () {
    if (document.domain.indexOf("en.youtx.com") > -1) {
        $.cookie(cookieLanguage, "en-US", {
            expires: 30,
            path: '/',
            domain: 'youtx.com'
        });
        if ($.cookie(cookieCoin) == "" || !$.cookie(cookieCoin)) {
            $.cookie(cookieCoin, "USD", {
                expires: 30,
                path: '/',
                domain: 'youtx.com'
            });
        }
    }
    else if (document.domain.indexOf("big5.youtx.com") > -1) {
        $.cookie(cookieLanguage, "zh-Hant", {
            expires: 30,
            path: '/',
            domain: 'youtx.com'
        });
        if ($.cookie(cookieCoin) == "" || !$.cookie(cookieCoin)) {
            $.cookie(cookieCoin, "USD", {
                expires: 30,
                path: '/',
                domain: 'youtx.com'
            });
        }
    }
    else if (document.domain.indexOf("www.youtx.com") > -1) {
        FavPath = "/list/fuser";
        $.cookie(cookieLanguage, "zh", {
            expires: 30,
            path: '/',
            domain: 'youtx.com'
        });
        //if ($.cookie(cookieCoin) == "" || !$.cookie(cookieCoin)) {
        $.cookie(cookieCoin, "CNY", {
            expires: 30,
            path: '/',
            domain: 'youtx.com'
        });
        //}
    }
    else {
        FavPath = "http://www.youtx.com/list/fuser";
    }
    //20140414潘志鹏添加
    if (document.domain.indexOf("hotel.beta.www.youtx.com") > -1 || document.domain.indexOf("hotel.youtx.com") > -1) {
        FavPath = "/hotel/hfuser";
    }
    if (getcookie("loginname") == '' || typeof (getcookie("loginname")) == 'undefined' || typeof (getcookie("loginname")) == 'null') {
        $("#youtxlogin").hide();
        $("#youtxloginw").show();
    }
    else {
        $("#youtxlogin").show();
        $("#youtxloginw").hide();
        var names = getgbchr(getcookie("loginname"));
        if (name(names)) {
            names = names.replace('|', '');
            names = subStr(names, 'ch');
            $("#liname").text(names);
        } else {
            var username = names.split("|");
            var namesEn = username[0] + " " + username[1];
            namesEn = subStr(namesEn, 'en');
            $("#liname").text(namesEn);
        }
        //20141027 去掉
        //$("#FavNumLi a").attr("href", FavPath + getcookie("new_loginid") + "/");
        $.ajax({
            url: HostUrl + '/profile/Ajax/GetFavourite.aspx?action=AllMsgCount&userid=' + $.cookie("new_loginid") + '&r=' + Math.random(),
            dataType: "jsonp",
            jsonp: 'callback',
            success: function (json) {
                $("#MsgNumSpan").text('(' + json.Result + ')');
                $("#SysMsgNumSpan").text('(' + json.Result_sys + ')');
                $("#RoomsNumSpan").text('(' + json.Result_Rooms + ')');
                if (Number(json.MallShop) > 0) {
                    $("#MallShopNum").text('我的店铺');
                    $("#MallShopNum").attr('href', HostMallShop + '/myshops/');
                }
            }
        });
        //问答相关内容
        function loadt1(PageIndex, ListType, PageSize) {
            $.ajax({
                url: HostUrl + '/profile/ajax/getAskContent.aspx?ListType=' + ListType + '&PageSize=' + PageSize + '&PageIndex=' + PageIndex + '&t=' + Math.random(),
                type: 'GET',
                async: false,
                timeout: 1000,
                dataType: 'xml',
                error: function (xml) {
                },
                success: function (xml) {
                    RecordCount = $(xml).find('SearchInfo').find("RecordCount").text();
                    if (RecordCount > 0) {
                        $('#wencount').html(RecordCount);
                    }
                    else {
                        $('#wen').hide();
                    }
                }
            });
        }
        //我提出的问题
        function loadt13(PageIndex, ListType, PageSize) {
            $.ajax({
                url: HostUrl + '/profile/ajax/getAskContent.aspx?ListType=' + ListType + '&PageSize=' + PageSize + '&PageIndex=' + PageIndex + '&t=' + Math.random(),
                type: 'GET',
                async: false,
                timeout: 1000,
                dataType: 'xml',
                error: function (xml) {
                },
                success: function (xml) {
                    $(xml).find('Ask').each(function (i) {
                        NewAnswer += parseInt($(this).children("NewAnswer").text());
                    });
                    if (NewAnswer > 0) {
                        //$(".HeaderTiShi02").show();
                        $('#dacount').html(NewAnswer);
                    }
                    else {
                        // $(".HeaderTiShi02").hide();
                    }
                }
            });
        }
        //loadt1(1, 1, 1);
        //loadt2(1, 8, 1);
        //loadt13(1, 2, 10000);
    }
    window.setTimeout(function () {
        if ((NewAnswer > 0 || da > 0) && $.cookie("answertop") != 'false') {
            $(".HeaderTiShi02").show();
        }
        else {
            $(".HeaderTiShi02").hide();
        }
    },
    4000);
});

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
    str = str.replace(/[\u4E00-\u9FA5]/g, '%#');
    if (str == "%#")
        return true;
    return false;
}
//截取中英文名字（中10英20）
function subStr(str, tp) {
    if (tp == "ch") {
        if (str.length > 10) {
            return str.substring(0, 10) + "...";
        }
        else {
            return str;
        }
    }
    else if (tp == "en") {
        if (str.length > 21) {
            return str.substring(0, 20) + "...";
        }
        else {
            return str;
        }
    }
    else {
        return str;
    }
}

var userid = getcookie('new_loginid');
if (parseInt(userid) > 0) {
    $.ajax({
        type: 'POST',
        url: HostUrl + '/profile/Ajax/AjaxPassport.aspx',
        data: 'type=isBlackList&UserID=' + userid,
        success: function (data) {
        },
        error: function (err) {
        }
    });

}
$(function () {
//    $(".first,.Species").mouseenter(function () {
//        $(this).children(".UlName").show();
//        $(this).addClass("firstCur");
//        var oFirstSpan = $(this).children(".FirstSpan").width();
//        var oUlName = $(this).children(".UlName").width();
//        var oFirstSpan02 = $(this).children(".FirstSpan02").width();
//        var oUlName02 = $(this).children(".UlName02").width();
//        oUlName = oFirstSpan + 15;
//        $(this).children(".UlName").css({
//            width: oUlName
//        });
//        if (oFirstSpan02 < 72) {
//            $(".UlName02").css("width", "auto");
//            $(".FirstSpan02").css("width", "auto");
//        }
//    })

    //2013-5-3修改-开始
    $(".first,.Species").mouseenter(function () {
        $(this).children(".UlName").show();
        $(this).addClass("firstCur");
        var oFirstSpan = $(this).children(".FirstSpan").width();
        var oUlName = $(this).children(".UlName").width();
        var oFirstSpan02 = $(this).children(".FirstSpan02").width();
        var oUlName02 = $(this).children(".UlName02").width();
        oUlName = oFirstSpan + 50;
        if (oFirstSpan02 > 55) {
            $(this).children(".UlName").css({ width: oUlName });
        }
        else {
            $(".UlName02").css("width", "110");
            $(".FirstSpan02").css("width", "auto");
        }
    })
    //控制我是房东按钮下拉          
    var interval = null;
    var obtncz = 1;
    $(".btncz").mouseenter(function () {
        clearTimeout(interval);
        if (obtncz == 1) {
            $(this).addClass("btnczCur");
            $(".HeadLandlord").show();
        }
        obtncz = 2;
    })
    $(".btncz").mouseleave(function () {
        if (obtncz == 2) {
            interval = setTimeout(function () {
                $(".HeadLandlord").hide();
                $(".btncz").removeClass("btnczCur");
                $(".HeadLandlord li").removeClass("HeadLandlordCur");
                obtncz = 1;
            }, 100
			   )
        }
    })
    $(".HeadLandlord").mouseenter(function () {
        clearTimeout(interval);
    })

    $(".HeadLandlord").mouseleave(function () {
        interval = setTimeout(function () {
            $(".HeadLandlord").hide();
            $(".btncz").removeClass("btnczCur");
            obtncz = 1;
        }, 100
		   )
    })
    $(".HeadLandlord li,.UlName02 div").hover(function () {
        $(this).addClass("HeadLandlordCur").siblings().removeClass("HeadLandlordCur");
    })
    //控制我是房东按钮下拉--end
    //2013-5-3修改——结束
    
    $(".first,.Species").mouseleave(function () {
        $(this).children(".UlName").hide();
        $(this).removeClass("firstCur");
    })

    $(".LangSelec a").click(function () {
        $(".HeaderTiShi03").show();
    })
    $(".HeadClose").click(function () {
        $(this).parent().parent().hide();
        $.cookie("answertop", "false", {
            expires: 1,
            path: '/',
            domain: 'youtx.com'
        });
    })
    $('#imgx').click(function () {
        $('.HeaderTiShi').hide();
    });
    $('#imgx3').click(function () {
        $('.HeaderTiShi').hide();
    });
})