
// 将日期类型转换成字符串型格式yyyy-MM-dd  
function ChangeDateToStrings(DateIn) {
    var Year = 0;
    var Month = 0;
    var Day = 0;

    var CurrentDate = "";
    if (DateIn.indexOf('/') > -1) {
        var dateArray = DateIn.split(' ')[0].split('/');
        Year = dateArray[0];
        Month = Number(dateArray[1]);
        Day = Number(dateArray[2]);
        CurrentDate = Year + "-";
        if (Month >= 10) {
            CurrentDate = CurrentDate + Month + "-";
        }
        else {
            CurrentDate = CurrentDate + "0" + Month + "-";
        }
        if (Day >= 10) {
            CurrentDate = CurrentDate + Day;
        }
        else {
            CurrentDate = CurrentDate + "0" + Day;
        }
    } else {
        var dateArray = DateIn.split(' ')[0].split('-');
        Year = dateArray[0];
        Month = Number(dateArray[1]);
        Day = Number(dateArray[2]);
        CurrentDate = Year + "-";
        if (Month >= 10) {
            CurrentDate = CurrentDate + Month + "-";
        }
        else {
            CurrentDate = CurrentDate + "0" + Month + "-";
        }
        if (Day >= 10) {
            CurrentDate = CurrentDate + Day;
        }
        else {
            CurrentDate = CurrentDate + "0" + Day;
        }
    }
    return CurrentDate;
}
//====将日期转成整数类型的字符串=======
function timeDiff(timeval) {
    var picNum;
    var pictime1;
    var pictime2;
    if (timeval.split(' ')[1]) {
        //pictime2 = timeval.split(' ')[1].replace(':', '').replace(':', '');
        var hour = timeval.split(' ')[1].split(':')[0];
        if (hour >= 10) {
            pictime2 = hour + timeval.split(' ')[1].split(':')[1] + timeval.split(' ')[1].split(':')[2];
        } else {
            pictime2 = "0" + hour + timeval.split(' ')[1].split(':')[1] + timeval.split(' ')[1].split(':')[2];
        }
    } else {
        pictime2 = "000000";
    }
    if (timeval.indexOf("/") > -1) {
        pictime1 = ChangeDateToStrings(timeval);
    } else {
        pictime1 = ChangeDateToStrings(timeval.split(' ')[0]);
    }
    pictime1 = pictime1.replace('-', '').replace('-', '');
    picNum = pictime1 + pictime2;
    return Number(picNum);
}
Function.prototype.method = function (name, func) {
    this.prototype[name] = func;
    return this;
}
//==扩展方法，用于移除字符串开始跟末端的空格==
String.method('trim', function () {
    return this.replace('/^\s+|\s+$/g', '');
});
function ReverseDateToNum(dateText) {
    var splitDate = dateText.replace('-', "").replace('-', "");
    return parseInt(splitDate);
}
function ReverseDateFormat(dateStr) {
    var newDateFormat = dateStr.replace('年', '-').replace('月', '-').replace('日', '-');
    return newDateFormat;
}
function ReverseDateToNum1(dateText) {
    return ReverseDateToNum(ReverseDateFormat(dateText));
}
// 将日期类型转换成字符串型格式yyyy-MM-dd  
function ChangeDateToString(DateIn) {
    var Year = 0;
    var Month = 0;
    var Day = 0;

    var CurrentDate = "";
    //初始化时间
    Year = DateIn.getFullYear();
    Month = DateIn.getMonth() + 1;
    Day = DateIn.getDate();
    CurrentDate = Year + "-";
    if (Month >= 10) {
        CurrentDate = CurrentDate + Month + "-";
    }
    else {
        CurrentDate = CurrentDate + "0" + Month + "-";
    }
    if (Day >= 10) {
        CurrentDate = CurrentDate + Day;
    }
    else {
        CurrentDate = CurrentDate + "0" + Day;
    }
    return CurrentDate;
}
/*字符串拼接方法:使用说明(            
var stringArr = new stringBuilder();
stringArr.append("linjie");
stringArr.append("heibao");
var s=stringArr.toString();
*/
function stringBuilder() {
    this._strs = new Array();
}
stringBuilder.prototype.append = function (str) {
    this._strs.push(str);
}
stringBuilder.prototype.toString = function () {
    return this._strs.join("");
}

//===生成GUID的函数===
function S4() {
    return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
}
function NewGuid() {
    return (S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-" + S4() + S4() + S4());
}