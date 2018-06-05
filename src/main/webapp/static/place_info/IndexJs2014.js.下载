// JavaScript Document
//window.onload = function () {
//    alert("onload");
//    YtxDefault.app.DropDown();  //登陆域导航下拉菜单
//    YtxDefault.app.FocusPicture();  //焦点图
//    YtxDefault.app.pullDown();  //表单-模拟下拉
//    YtxDefault.app.TwoDim(); //底部微信二维码、与头部手机客户端(延时显示)
//    YtxDefault.app.unfold(); //页底展开、隐藏

//}

var YtxDefault = {};

YtxDefault.tools = {};

YtxDefault.tools.getByClass = function (oParent, sClass) {
    var aEle = oParent.getElementsByTagName('*');
    var arr = [];
    for (var i = 0; i < aEle.length; i++) {
        if (aEle[i].className == sClass) {
            arr.push(aEle[i]);
        }
    }
    return arr;
};

YtxDefault.tools.getStyle = function (obj, attr) {
    if (obj.currentStyle) {
        return obj.currentStyle[attr];
    }
    else {
        return getComputedStyle(obj, false)[attr];
    }
}

YtxDefault.tools.startMove = function (obj, json, fn) {
    clearInterval(obj.timer);
    obj.timer = setInterval(function () {
        var bStop = true;
        for (var attr in json) {
            var iCur = 0;

            if (attr == 'opacity') {
                iCur = parseInt(parseFloat(YtxDefault.tools.getStyle(obj, attr)) * 100);
            }
            else {
                iCur = parseInt(YtxDefault.tools.getStyle(obj, attr));
            }

            var iSpeed = (json[attr] - iCur) / 8;
            iSpeed = iSpeed > 0 ? Math.ceil(iSpeed) : Math.floor(iSpeed);

            if (iCur != json[attr]) {
                bStop = false;
            }

            if (attr == 'opacity') {
                obj.style.filter = 'alpha(opacity:' + (iCur + iSpeed) + ')';
                obj.style.opacity = (iCur + iSpeed) / 100;
            }
            else {
                obj.style[attr] = iCur + iSpeed + 'px';
            }
        }

        if (bStop) {
            clearInterval(obj.timer);

            if (fn) {
                fn();
            }
        }
    }, 30)
}

YtxDefault.ui = {};
/*模拟下拉*/
YtxDefault.ui.pullDown = function (obj) {
    var oUl = YtxDefault.tools.getByClass(obj, 'TheTotal')[0];
    var ali = oUl.getElementsByTagName('li');
    var oDiv = YtxDefault.tools.getByClass(obj, 'menuInput')[0];
    obj.onclick = function (ev) {
        var ev = ev || window.event;
        oUl.style.display = "block";
        document.onclick = function () {
            oUl.style.display = 'none';
        };
        ev.cancelBubble = true;
    }
    for (i = 0; i < ali.length; i++) {
        ali[i].onclick = function (ev) {
            var ev = ev || window.event;
            oDiv.innerHTML = this.innerHTML;
            oUl.style.display = "none";
            ev.cancelBubble = true;
        }
        ali[i].onmouseover = function () {
            for (i = 0; i < ali.length; i++) {
                ali[i].className = '';
            }
            this.className = 'IndCur';
        }
    }
};

YtxDefault.ui.DropDown = function (obj) {
    var aDl = obj.getElementsByTagName('dl')[0];
    var time2 = null;
    aDl.onmouseover = obj.onmouseover = function () {
        //obj.className = 'DropUp'
        clearInterval(time2);                               //2014-6-13修改
        time2 = setInterval(function () {
            obj.className = 'DropUp'
        }, 300)
    }
    aDl.onmouseout = obj.onmouseout = function () {
        //obj.className = 'DropDown'
        clearInterval(time2);                               //2014-6-13修改
        time2 = setInterval(function () {
            obj.className = 'DropDown'
        }, 300)
    }
}

YtxDefault.ui.FocusPicture = function (obj, onOff) {
    var oList = YtxDefault.tools.getByClass(obj, 'PictureLis')[0];
    var oPicUl = obj.getElementsByTagName('ul')[0];
    var oPicLi = oPicUl.getElementsByTagName('li');
    var aList = oList.getElementsByTagName('span');

    var num = 0;
    var timer = null;
    var aLilen = aList.length;
    for (var i = 0; i < aLilen; i++) {
        aList[i].index = i;
        aList[i].onclick = function () {
            num = this.index;
            if (onOff) {
                for (i = 0; i < aLilen; i++) {
                    YtxDefault.tools.startMove(oPicLi[i], { opacity: 0 });
                    aList[i].className = '';
                }
                YtxDefault.tools.startMove(oPicLi[this.index], { opacity: 100 });
                aList[this.index].className = 'Cur';
            }
            else {
                for (i = 0; i < aLilen; i++) {
                    oPicLi[i].style.display = "none";
                    aList[i].className = '';
                }
                oPicLi[this.index].style.display = "block";
                aList[this.index].className = 'Cur';
            }
        }
    }

    timer = setInterval(
	    function () {
	        //clearInterval(timer);
	        num++;
	        if (num == aLilen) {
	            num = 0;
	        }
	        for (i = 0; i < oPicLi.length; i++) {
	            if (onOff) {

	                YtxDefault.tools.startMove(oPicLi[i], { opacity: 0 });
	            }
	            else {

	                oPicLi[i].style.display = "none";
	            }

	            aList[i].className = '';
	        }
	        if (onOff) {
	            YtxDefault.tools.startMove(oPicLi[num], { opacity: 100 });
	        }
	        else {

	            oPicLi[num].style.display = "block";

	        }
	        aList[num].className = 'Cur';
	    }

	, 4000);

    obj.onmouseover = function () {
        clearInterval(timer);
    }
    obj.onmouseout = function () {
        clearInterval(timer);
        timer = setInterval(
		     function () {
		         num++;
		         if (num == aLilen) {
		             num = 0;
		         }
		         for (i = 0; i < oPicLi.length; i++) {

		             if (onOff) {
		                 YtxDefault.tools.startMove(oPicLi[i], { opacity: 0 });
		             }
		             else {
		                 oPicLi[i].style.display = "none";
		             }

		             aList[i].className = '';
		         }
		         if (onOff) {
		             YtxDefault.tools.startMove(oPicLi[num], { opacity: 100 });
		         }
		         else {

		             oPicLi[num].style.display = "block";

		         }
		         aList[num].className = 'Cur';
		     }
		, 4000);
    }

}


YtxDefault.ui.TwoDim = function (obj) {
    var aEwmWp = obj.getElementsByTagName('div')[0];
    var time2 = null;
    aEwmWp.onmouseover = obj.onmouseover = function () {
        clearInterval(time2);
        time2 = setInterval(function () {
            aEwmWp.style.display = 'block';
        }, 500)
    }

    aEwmWp.onmouseout = obj.onmouseout = function () {
        clearInterval(time2);
        time2 = setInterval(function () {
            aEwmWp.style.display = 'none';
        }, 500)

    }
}


YtxDefault.app = {};

YtxDefault.app.pullDown = function () {
    var oPull = document.getElementById('pullDown');
    YtxDefault.ui.pullDown(oPull);
}

YtxDefault.app.DropDown = function () {
    var aDropDown = YtxDefault.tools.getByClass(document, 'DropDown');
    for (var i = 0; i < aDropDown.length; i++) {
        YtxDefault.ui.DropDown(aDropDown[i]);
    }
}

YtxDefault.app.FocusPicture = function () {
    var oPic = document.getElementById('focusPicture');
    YtxDefault.ui.FocusPicture(oPic, false);

    var oColumnTxt_L = document.getElementById('ColumnTxt_L');
    YtxDefault.ui.FocusPicture(oColumnTxt_L, false);
}

YtxDefault.app.TwoDim = function () {

    var oJnkaisar = document.getElementById('jnkaisar');
    YtxDefault.ui.TwoDim(oJnkaisar);       //头部手机客户端下载

    var oJnkaisar1 = document.getElementById('jnkaisar1');
    YtxDefault.ui.TwoDim(oJnkaisar1);       //头部手机客户端下载
}

YtxDefault.app.TwoDimFooter = function () {
    var oYWeixin = document.getElementById('YWeixin');
    YtxDefault.ui.TwoDim(oYWeixin);       //底部微信
}


YtxDefault.app.unfold = function () {
    var oFooter = document.getElementById('FooterCityUl');
    var aFooterLi = oFooter.getElementsByTagName('li');
    var aFooterBtn = YtxDefault.tools.getByClass(oFooter, 'CityTxtBtn');
    for (i = 0; i < aFooterBtn.length; i++) {
        (function (index) {
            var onOff = true;
            aFooterBtn[index].onclick = function () {
                if (onOff) {
                    onOff = false;
                    this.parentNode.style.height = 'auto';
                    this.innerHTML = '-收起';
                }
                else {
                    onOff = true;
                    this.parentNode.style.height = '24' + 'px';
                    this.innerHTML = '+展开';
                }
            }
        })(i);
    }
}


