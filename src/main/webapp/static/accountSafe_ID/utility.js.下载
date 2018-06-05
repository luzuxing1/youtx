function fixedMsg(id, msg, useGray) {
    $("#" + id).focusin(function () {
        if ($(this).val() == msg) {
            $(this).val("");
            if (useGray == true) $(this).css({ "color": "Black" });
        }
    }).focusout(function () {
        if ($(this).val() == "") {
            $(this).val(msg);
            if (useGray == true) $(this).css({ "color": "Gray" });
        }
    });
}
function isEmptyNullOrUndefined(value) {
    return value == undefined || value == null || value == "";
}
function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) {
                c_end = document.cookie.length;
                return unescape(document.cookie.substring(c_start, c_end))
            }
            else {
                return unescape(document.cookie.substring(c_start, c_end))
            }
        }
    }
    return "";
}
function setCookie(c_name, value, expiredays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + expiredays);
    document.cookie = c_name + "=" + escape(value) + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString()) + " ;path=/ ;domain=youtx.com";
}
function isLetter(keyword) {    
    var str = /[_a-zA-Z]/;
    return str.test(keyword);
}