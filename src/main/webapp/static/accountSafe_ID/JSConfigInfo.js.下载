function checkpass() {
    var objs = $(".error");
    var b = true;
    var fb = true;
    var lb = true;

    var MinTowChar = "请至少输入两个字符";
    var MaxTenChar = "最多只能输入10个字符";
    var OnlyCharOrNum = "只能输入汉字或字母";
    var ErrorTelephone = '电话号码格式不正确';
    if ($.cookie("LN")=="en-US") {
        MinTowChar = "Please enter at least two characters";
        MaxTenChar = "At most 10 characters ";
        OnlyCharOrNum = "Only available for Chinese characters or letters";
        ErrorTelephone = "Inaccurate phone number form";
    }
    if (getBytesLength($.trim($('#user_first_name').val())) < 2) {
        $('#user_first_name').addClass("error");
        $('#user_first_name').next().html(MinTowChar);
        location.hash = "ming";

        $('#user_first_name').next().show();
        b = false;
        fb = false;
    }
    else if (getBytesLength($.trim($('#user_first_name').val())) > 10) {
        $('#user_first_name').addClass("error");
        $('#user_first_name').next().html(MaxTenChar);
        location.hash = "ming";
        // window.location = '/Basic/';
        $('#user_first_name').next().show();
        b = false;
        fb = false;
    }
//    if (!isNum($('#CellphoneNumInput').val())) {
//        $('#Verfyspan1').html(ErrorTelephone);
//        $('#Verfyspan1').show();
//        b = false;
//    }
    else {
        $('#Verfyspan1').html('');
        $('#Verfyspan1').hide();
    }
    if (!Youtx.Verification.isUserName($.trim($('#user_first_name').val()))) {
        $('#user_first_name').addClass("error");

        $('#user_first_name').next().html(OnlyCharOrNum);
        location.hash = "ming";

        $('#user_first_name').next().show();
        b = false;
    }
    else {
        if (fb) {
            $('#user_first_name').removeClass("error");
            $('#user_first_name').next().hide();
        }
    }

    if (getBytesLength($.trim($("#user_last_name").val())) < 2) {
        $("#user_last_name").addClass("error");
        $("#user_last_name").next().html(MinTowChar);
        location.hash = "xing";
      
        $("#user_last_name").next().show();
        b = false;
        lb = false;
    } else if (getBytesLength($.trim($("#user_last_name").val())) > 10) {
        $("#user_last_name").addClass("error");
        $("#user_last_name").next().html(MaxTenChar);
        location.hash = "xing";
        //window.location = '/Basic/';
        $("#user_last_name").next().show();
        b = false;
        lb = false;
   } 
//else {
//        $("#user_last_name").removeClass("error");
//        $("#user_last_name").next().hide();
//    }
    if (!Youtx.Verification.isUserName($.trim($('#user_last_name').val()))) {
        $('#user_last_name').addClass("error");
        $('#user_last_name').next().html(OnlyCharOrNum);
        location.hash = "xing";

        $('#user_last_name').next().show();
        b = false;
       
    }
    else {
        if (lb) {
            $('#user_last_name').removeClass("error");
            $('#user_last_name').next().hide();
        }
    }
    return b;
}
function CheckTel(str) {
   
    //var reg = /^((\d{3,4})?-?\d{7,8}转?(\d{1,4})?)$|^(1[3-9]\d{9})$|^((\d{3,4})?-?\d{7,8}转?(\d{4})?,?(1[3-9]\d{9}))$/;
    var reg = /^((\d{3,4})?-?\d{7,8}转?(\d{1,4})?)$|^(1[3-9]\d{9})$|^((\d{3,4})?-?\d{7,8}转?(\d{4})?,?(1[3-9]\d{9}))$|^((1[3-9]\d{9})?,?(\d{3,4})?-?\d{7,8}转?(\d{4}))$/;


    //			var reg=/^1[3-9]\d{9}$/;
    str = str.replace(/\s+/g, "");
    //var	reg='/^'+document.getElementById('reg').value+'$/';      
       if (!reg.test(str)) {
        return false;
    }
    else {
        return true;
    }
}
function getBytesLength(str) {
    return str.replace(/[^\x00-\xff]/g, 'xx').length;
}

function initDayddl() {
    $("#user_birthdate_3i").html("<option value=\"\"></option>");
    var month = $("#user_birthdate_2i").val();
    if (month == "1" || month == "3" || month == "5" || month == "7" || month == "8" || month == "10" || month == "12") {
        for (i = 1; i <= 31; i++) {
            $("#user_birthdate_3i").append("<option value=\"" + i + "\">" + i + "</option>");
        }
    }
    else if (month == "4" || month == "6" || month == "9" || month == "11") {
        for (i = 1; i <= 30; i++) {
            $("#user_birthdate_3i").append("<option value=\"" + i + "\">" + i + "</option>");
        }
    }
    else {
        var year = $("#user_birthdate_1i").val();
        if (Math.round(year % 4) == 0) {
            for (i = 1; i <= 29; i++) {
                $("#user_birthdate_3i").append("<option value=\"" + i + "\">" + i + "</option>");
            }
        }
        else {
            for (i = 1; i <= 28; i++) {
                $("#user_birthdate_3i").append("<option value=\"" + i + "\">" + i + "</option>");
            }
        }
    }
}
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

//匹配汉字
function name(str) {
    str = str.replace('|', '');
    str = str.replace(/[\u4E00-\u9FA5]/g, '%#');
    if (str.indexOf('%#') != -1)
        return true;
    return false;
}

function isNum(str) {
    var reg = /^\d+$/;
    if (!reg.test(str)) {
        return false;
    }
    else {
        return true;
    }
}
