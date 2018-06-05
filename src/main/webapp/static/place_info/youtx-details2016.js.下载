
//===============================dbigpic  房间照片切换======================================
; (function () {
    var oNextb = $('.dnext');
    var oPrevb = $('.dprev');
    var aLib = $('.dbigpic li');
    var oTops = $('.dtop')
    var oBottoms = $('.dbottom');
    var oUls = $('.dsmallpic ul');
    var aLis = $('.dsmallpic li');
    var n = 0;
    var dTop = 0;

    var Num = 0;
    var oH = 98;
    var imgCount = imgcount;  //图片总数量

    //小图片的下箭头，和大图片的右箭头
    $(".dbottom,.dnext").click(function () {
        dTop = parseFloat(oUls.css('top'));
        n++;
        if (n == aLis.length) { n = 0; dTop = 0; };
        oUls.css('top', dTop + 'px');
        aLis.eq(n).addClass("active").siblings().removeClass("active");
        if (n >= 5) {
            dTop -= oH;

            oUls.css('top', dTop + 'px');
        }
        var smallUrlC = "";
        var smallDescC = "";
        var pictypeC="";
        smallUrlC = aLis.eq(n).find("img").attr("src");
        smallDescC = aLis.eq(n).find("img").attr("picdesc");
        pictypeC=aLis.eq(n).find("img").attr("pictype");
        $("#Pic_big").attr("src", smallUrlC.replace("140x88", "640x480"));   //大图的图片路径
        if (smallDescC != "" || imgCount > 0||pictypeC!="") {
             var spanstrC = "";
            if (imgCount > 0) {
                spanstrC = imgCount + "张";
            }
            if(pictypeC!="")
            {
                spanstrC+="-"+pictypeC;
            }
            if (smallDescC != "") {
                spanstrC += "-" + smallDescC;
            }
            $("#pic_showinfo").html(spanstrC); //大图的图片说明
           // $("#pic_showinfo").append(spanpictype);
        }
    });

    //小图片的上箭头，和大图片的左箭头
    $(".dtop,.dprev").click(function () {
        dTop = parseFloat(oUls.css('top'));
        n--;
        if (n == -1) { n = aLis.length - 1; dTop = -oH * (aLis.length - 4); };
        oUls.css('top', dTop + 'px');
        aLis.eq(n).addClass("active").siblings().removeClass("active");
        if (n >= 4) {
            dTop += oH;

            oUls.css('top', dTop + 'px');
        }
        var smallUrlD = "";
        var smallDescD = "";
        var pictypeD="";
        smallUrlD = aLis.eq(n).find("img").attr("src");
        smallDescD = aLis.eq(n).find("img").attr("picdesc");
        pictypeD=aLis.eq(n).find("img").attr("pictype");
        
        $("#Pic_big").attr("src", smallUrlD.replace("140x88", "640x480"));   //大图的图片路径
        if (smallDescD != "" || imgCount > 0||pictypeD!="") {
      
            var spanstrD = "";
            if (imgCount > 0) {
                spanstrD = imgCount + "张";
            }
            if(pictypeD!="")
            {
                spanstrD+="-"+pictypeD;
            }
            if (smallDescD != "") {
                spanstrD += "-" + smallDescD;
            }
            $("#pic_showinfo").html(spanstrD); //大图的图片说明
            //$("#pic_showinfo").append(spanpictype);
        }
    });

    //点击小图片
    aLis.click(function () {
        Num = aLis.index(this);
        aLis.eq(Num).addClass("active").siblings().removeClass("active");
        var smallUrl = "";
        var smallDesc = "";
        var pictype="";
        smallUrl = $(this).find("img").attr("src");
        smallDesc = $(this).find("img").attr("picdesc");
         pictype=$(this).find("img").attr("pictype");
        $("#Pic_big").attr("src", smallUrl.replace("140x88", "640x480"));   //大图的图片路径
        if (smallDesc != "" || imgCount > 0||pictype!="") {
             var spanstr = "";
            if (imgCount > 0) {
                spanstr = imgCount + "张";
            }
            if(pictype!="")
            {
                spanstr+="-"+pictype;
            }
            if (smallDesc != "") {
                spanstr += "-" + smallDesc;
            }
            $("#pic_showinfo").html(spanstr); //大图的图片说明
           // $("#pic_showinfo").append(spanpictype);
        }
    });

    //tags房源地址部分太长自动换行
    if ($('.sec-2 .position').width() > 470) {
        $('.sec-2 .tags').css({ 'marginLeft': 0, 'marginTop': '10px' });
    }
})();

//=============section-2 查看全部========
//===========================================2016.05.06修改开始============================
; (function () {
    var oShowAll = $('.conven .showall');
    var oCloseAll = $('.conven .closeall');
    var oLists = $('.conven .lists');
    if (oLists.children().length > 15) {
        oShowAll.show();

    } else {
        oShowAll.hide();

    }
    oShowAll.on('click', function () {
        oLists.css('height', 'auto');
        $(this).hide();
        oCloseAll.show();
    });
    oCloseAll.on('click', function () {
        oLists.css('height', '200px');
        $(this).hide();
        oShowAll.show();
    });
})();
//周边，房屋介绍等等
; (function () {
    var oShowAll = $('.houseintroduce .showall');
    var oCloseAll = $('.houseintroduce .closeall');
    var oLists = $('.houseintroduce .lists');
    //  if (oLists.children().eq(0).height() > 120) {
    if (oLists.height() > 120) {
        $(oLists).css('height', '120px');
        oShowAll.show();
    } else {
        oShowAll.hide();
    }
    oShowAll.on('click', function () {
        oLists.css('height', 'auto');
        oCloseAll.show();
        oShowAll.hide();
    });
    oCloseAll.on('click', function () {
        oLists.css('height', '120px');
        oCloseAll.hide();
        oShowAll.show();
    });
})();
; (function () {
    var oShowAll = $('.traffic .showall');
    var oCloseAll = $('.traffic .closeall');
    //var oLists = $('.traffic .lists');
    var oLists = $('.traffic #trafficdiv');
    // if (oLists.children().length > 4) {
    if (oLists.height() > 120) {
        $(oLists).css('height', '120px');
        $(oLists).css('overflow', 'hidden');
        oShowAll.show();
    } else {
        oShowAll.hide();
        $(oLists).css('overflow', 'hidden');
    }
    oShowAll.on('click', function () {
        oLists.css('height', 'auto');
        $(this).hide();
        oCloseAll.show();
    });
    oCloseAll.on('click', function () {
        oLists.css('height', '120px');
        $(this).hide();
        oShowAll.show();
    });
})();
; (function () {
    var aShowAll = $('.aroundpos .showall');
    var aCloseAll = $('.aroundpos .closeall');
    var aLists = $('.aroundpos .lists');
    // if (aLists.eq(i).children().length > 3) {
    if (aLists.height() > 120) {
        aLists.css('height', '120px');
        aShowAll.show();
    } else {
        aShowAll.hide();
    }
    aShowAll.on('click', function () {
        aLists.css('height', 'auto');
        aShowAll.hide();
        aCloseAll.show();
    });
    aCloseAll.on('click', function () {
        aLists.css('height', '120px');
        aCloseAll.hide();
        aShowAll.show();
    });
})();
; (function () {
    var aShowAll = $('.others .showall');
    var aCloseAll = $('.others .closeall');
    var aLists = $('.others .lists');
    // if (aLists.eq(i).children().length > 3) {
    if (aLists.height() > 120) {
        aLists.css('height', '120px');
        aShowAll.show();
    } else {
        aShowAll.hide();
    }
    aShowAll.on('click', function () {
        aLists.css('height', 'auto');
        aShowAll.hide();
        aCloseAll.show();
    });
    aCloseAll.on('click', function () {
        aLists.css('height', '120px');
        aCloseAll.hide();
        aShowAll.show();
    });
})();
//dsection-1 分享
; (function () {
    var shareButton = $('.dsection-1 .share');
    var shareShow = $('#shareShow');
    var oWechat = $('#bds_wechat');
    var showEwm = $('#bds_wechat div');
    var timer = null;
    var timer2 = null;
    shareButton.on('mouseenter', function () {
        shareShow.show();
    });
    shareButton.on('mouseleave', function () {
        timer = setTimeout(function () {
            shareShow.hide();
        }, 400);
    });
    oWechat.on('mouseenter', function () {
        $(this).css({ 'backgroundPosition': '0 -29px' });
        showEwm.show();
    });
    oWechat.on('mouseleave', function () {
        $(this).css({ 'backgroundPosition': '0 0' });
        timer2 = setTimeout(function () {
            showEwm.hide();
        }, 300);
    });
    showEwm.on('mouseenter', function () {
        clearTimeout(timer);
        clearTimeout(timer2);
        return false;
    });
})();
//===========================================2016.05.06修改结束============================

//2016.05.09修改1开始
//=============section-5 TA的故事 查看全部========
; (function () {
    //明星房东他的故事部分的查看更多
    var conHeight = $('#divP').height();
    if (conHeight > 74) {
        $('#divP').height(74);
        $("#showdivstroy").show();
    } else {
        $("#showdivstroy").hide();
    }
})();
//2016.05.09修改2结束

//芝麻信用隐藏部分显示
; (function () {
    $('.houseowner .se-one div').on('mouseenter', function () {
        $('.houseowner .se-one p').show();
    });
    $('.houseowner .se-one div').on('mouseleave', function () {
        $('.houseowner .se-one p').hide();
    });
})();

//房间套数,人数下拉选择框
(function () {
    //套数
    var oNumber = $('.part-two .number');
    var oNumberContent = $('.part-two .number  b');
    var oBox = $('.number-all');
    var aLi = $('.number-all li');
    oNumber.on('click', function () {
        oBox.show();
        oPersonBox.hide();
        return false;
    });
    aLi.each(function (index, value) {
        aLi.eq(index).on('mouseenter', function () {
            $(this).addClass('active').siblings().removeClass("active");
        });
        aLi.eq(index).on('click', function () {
            var str = $(this).html();
            oNumberContent.html(str);
            oBox.hide();
            roomnum = $(this).val();
            AjaxJiSuan();
            return false;
        });
    });
    //人数
    var oPersonNumber = $('.part-two .personnumber');
    var oPersonNumberContent = $('.part-two .personnumber  b');
    var oPersonBox = $('.personnumber-all');
    var aLi2 = $('.personnumber-all li');
    oPersonNumber.on('click', function () {
        oPersonBox.show();
        oBox.hide();
        return false;
    });
    aLi2.each(function (index, value) {
        aLi2.eq(index).on('mouseenter', function () {
            $(this).addClass('active').siblings().removeClass("active");
        });
        aLi2.eq(index).on('click', function () {
            var str = $(this).html();
            oPersonNumberContent.html(str);
            oPersonBox.hide();
            livemanum = $(this).val();
            AjaxJiSuan();
            return false;
        });
    });

    $(document).on('click', function (ev) {
        var obj = ev.srcElement ? ev.srcElement : ev.target;
        var id = obj.id;
        if (id != 'number') {
            oBox.hide();
        }
        if (id != 'personnumber') {
            oPersonBox.hide();
        }
    });
})();

//底部轮播图
; (function () {
    var aUl = $('.houselists ul');
    aUl.each(function (index, value) {
        var num = $(this).children().length;
        var oneWidth = $(this).children().eq(0).width() + 20;
        $(this).css('width', oneWidth * num + 'px');
    });
    //houselists-1
    var oPrev1 = $('.houselists-1 .houseprev');
    var oNext1 = $('.houselists-1 .housenext');
    var oUl1 = $('.houselists-1 ul');
    var aLi1 = oUl1.children();
    var n = 0;
    var oneDistanc = 300;
    var left1 = parseFloat(oUl1.css('left'));
    oPrev1.on('click', function () {
        n++;
        left1 -= 300;

        if (n == aLi1.length - 3) {
            n = 0;
            left1 = 0;
            oUl1.css('left', left1 + 'px');
        }
        oUl1.stop().animate({ 'left': left1 + 'px' }, 400);

    });
    oNext1.on('click', function () {
        n--;
        left1 += 300;

        if (n == -1) {
            n = aLi1.length - 4;
            left1 = -n * oneDistanc;
            oUl1.css('left', left1 + 'px');
        }
        oUl1.stop().animate({ 'left': left1 + 'px' }, 400);

    });
    //houselists-2
    var oPrev2 = $('.houselists-2 .houseprev');
    var oNext2 = $('.houselists-2 .housenext');
    var oUl2 = $('.houselists-2 ul');
    var aLi2 = oUl2.children();
    var m = 0;
    var oneDistanc = 300;
    var left2 = parseFloat(oUl2.css('left'));
    oPrev2.on('click', function () {
        m++;
        left2 -= 300;
        if (m == aLi2.length - 3) {
            m = 0;
            left2 = 0;
            oUl1.css('left', left2 + 'px');
        }
        oUl2.stop().animate({ 'left': left2 + 'px' }, 400);

    });
    oNext2.on('click', function () {
        m--;
        left2 += 300;
        if (m == -1) {
            m = aLi2.length - 4;
            left2 = -m * oneDistanc;
            oUl2.css('left', left2 + 'px');
        }
        oUl2.stop().animate({ 'left': left2 + 'px' }, 400);
    });
    //houselists-3
    var oPrev3 = $('.houselists-3 .houseprev');
    var oNext3 = $('.houselists-3 .housenext');
    var oUl3 = $('.houselists-3 ul');
    var aLi3 = oUl3.children();
    var z = 0;
    var oneDistanc = 300;
    var left3 = parseFloat(oUl3.css('left'));
    oPrev3.on('click', function () {
        z++;
        left3 -= 300;
        if (z == aLi3.length - 3) {
            z = 0;
            left3 = 0;
            oUl1.css('left', left3 + 'px');
        }
        oUl3.stop().animate({ 'left': left3 + 'px' }, 400);

    });
    oNext3.on('click', function () {
        z--;
        left3 += 300;
        if (z == -1) {
            z = aLi3.length - 4;
            left3 = -z * oneDistanc;
            oUl1.css('left', left3 + 'px');
        }
        oUl3.stop().animate({ 'left': left3 + 'px' }, 400);

    });
    //点击切换房源
    var oHouseLiAll = $('.toplist li');
    var oHouseshow1 = $('.houselists .houselists-1');
    var oHouseshow2 = $('.houselists .houselists-2');
    var oHouseshow3 = $('.houselists .houselists-3');
    var ootherHouseMore = $("#youtxxq_B03_01");
    var olongRentHouseMore = $("#youtxxq_B05_1");
    if ($("#otherhouse_li").length == 0) {
        if ($("#fujinhouse_li").length > 0) {
            oHouseshow2.show();
            ootherHouseMore.hide();
            olongRentHouseMore.hide();
        } else {
            if ($("#changzufang").length > 0) {
                oHouseshow3.show();
                ootherHouseMore.hide();
                olongRentHouseMore.show();
            }
        }
    }
    oHouseLiAll.each(function (index) {
        oHouseLiAll.eq(index).click(function () {
            if (oHouseLiAll.eq(index).attr("id").trim() == "otherhouse_li") {  //房东其他房源
                oHouseshow1.show();
                oHouseshow2.hide();
                oHouseshow3.hide();
                oHouseLiAll.eq(index).siblings("li").removeClass('active');
                oHouseLiAll.eq(index).addClass('active')
                ootherHouseMore.show();
                olongRentHouseMore.hide();
            } else if (oHouseLiAll.eq(index).attr("id").trim() == "fujinhouse_li") {  //附近同类房源
                oHouseshow2.show();
                oHouseshow1.hide();
                oHouseshow3.hide();
                oHouseLiAll.eq(index).siblings("li").removeClass('active');
                oHouseLiAll.eq(index).addClass('active');
                ootherHouseMore.hide();
                olongRentHouseMore.hide();
            } else if (oHouseLiAll.eq(index).attr("id").trim() == "changzufang") {  //长租房源
                oHouseshow3.show();
                oHouseshow1.hide();
                oHouseshow2.hide();
                oHouseLiAll.eq(index).siblings("li").removeClass('active');
                oHouseLiAll.eq(index).addClass('active')
                ootherHouseMore.hide();
                olongRentHouseMore.show();

            }
        });
    });
})();
//==================================================2016.5.5修改开始====================================
//===========================================置顶条==========================
(function () {
    var oColdStick = $('.coldstick');
    var aLi = $('.coldstick li');
    var showMap = $('.showmap');
    var showEva = $('#se-three');
    var h1 = $('.dsection-1').offset().top - 100;
    var h2 = $('.dsection-2').offset().top - 100;
    var h3 = $('#youtxxq_B02_20').offset().top - 100;
    var h4 = $('.dsection-4').offset().top - 100;
    var h5 = $('.dsection-5').offset().top - 100;
    $(window).scroll(function () {
        if ($(window).scrollTop() > 300) {
            oColdStick.stop().animate({ 'top': '0' }, 300);
            if ($(window).scrollTop() > h2 && $(window).scrollTop() < h3) {
                aLi.removeClass('active');
                aLi.eq(1).addClass('active');
            }
            if ($(window).scrollTop() > h3 && $(window).scrollTop() < h4) {
                aLi.removeClass('active');
                aLi.eq(2).addClass('active');
            }
            if ($(window).scrollTop() > h4 && $(window).scrollTop() < h5) {
                aLi.removeClass('active');
                aLi.eq(3).addClass('active');
            }
            if ($(window).scrollTop() > h5) {
                aLi.removeClass('active');
                aLi.eq(4).addClass('active');
            }

        } else if ($(window).scrollTop() < 300) {
            oColdStick.stop().animate({ 'top': '-70px' }, 300);
            aLi.removeClass('active');
            aLi.eq(0).addClass('active');
        }
    });
    aLi.eq(0).on('click', function () {
        $(window).scrollTop(h1);
        aLi.removeClass('active');
        aLi.eq(0).addClass('active');
        return false;
    });
    aLi.eq(1).on('click', function () {
        $(window).scrollTop(h2);
        aLi.removeClass('active');
        aLi.eq(1).addClass('active');
        return false;
    });
    aLi.eq(2).on('click', function () {
        $(window).scrollTop(h3);
        aLi.removeClass('active');
        aLi.eq(2).addClass('active');
        return false;
    });
    showMap.on('click', function () {
        $(window).scrollTop(h3);
        aLi.removeClass('active');
        aLi.eq(2).addClass('active');
        return false;
    });
    aLi.eq(3).on('click', function () {
        $(window).scrollTop(h4);
        aLi.removeClass('active');
        aLi.eq(3).addClass('active');
        return false;
    });
    aLi.eq(4).on('click', function () {
        $(window).scrollTop(h5);
        aLi.removeClass('active');
        aLi.eq(4).addClass('active');
        return false;
    });
    showEva.on('click', function () {
        $(window).scrollTop(h5);
        aLi.removeClass('active');
        aLi.eq(4).addClass('active');
        return false;
    });
})();
//==================================================2016.5.5修改结束====================================

//房间套数,人数
; (function () {
    var num = $('.number-all');
    if (num.children().length > 5) {
        num.css({ 'overflowY': 'scroll' });
    }
    var pernum = $('.personnumber-all');
    if (pernum.children().length > 5) {
        pernum.css({ 'overflowY': 'scroll' });
    }
})();

//========================右侧信息置顶条====================
; (function () {
    var oPartOne = $('.contentpos part-one');
    var oDisLeft = $('.youtx-details-content').offset().left + 850;
    var oConten = $('.contentpos');
    $(window).scroll(function () {
        if ($(window).scrollTop() > 318) {
            oConten.css({ 'position': 'fixed', 'left': oDisLeft + 'px', 'top': -125 + 'px' });
            if (($(window).scrollTop() + $('.contentpos').height()) > ($('.youtxdetails-footer').offset().top - 30)) {
                oConten.css({ 'position': 'absolute', 'left': 850 + 'px', 'top': ($('.youtxdetails-footer').offset().top - 55 - $('.youtx-details-content').offset().top - oConten.height()) + 'px' });
            }
        }
        else {
            oConten.css({ 'position': 'absolute', 'left': 850 + 'px', 'top': 0 + 'px' });
        }
    });
})();


//2016.05.10=====2 开始
//2016.05.12修改开始
//===================================酒店房源价格浮层=====================
if (Filed1SK == "4") {
    //2016.05.10=====2 开始
    //===================================价格浮层=====================
    ; (function () {
        var oBox = $('#housepricebox');
        var oJ = $('#xiajiantou');
        var timer = null;
        var oneW = oBox.children().eq(0).width() + 7;
        var length = oBox.children().length;
        oBox.children().eq(length - 1).css('marginRight', '0');
        var width = oBox.css('width', (oneW * length - 5) + 'px');
        oBox.css('maxWidth', (oneW * 6) + 'px');
        oBox.css('marginLeft', (-oBox.width() / 2) + 'px');
        oBox.css('top', -(oBox.height() + 30) + 'px')
        var oHouse = $('dd .houseprice');
        oHouse.on('mouseenter', function () {
            clearTimeout(timer);
            oBox.show();
            oJ.show();
            return false;
        });
        oHouse.on('mouseleave', function () {
            timer = setTimeout(function () {
                oBox.hide();
                oJ.hide();
            }, 300);

            return false;
        });
        //2016.05.10=====2 结束
        //搜索房价异步
        $("#searchDate").click(function () {
            var beginDate = $("#checkin2016").val();
            var endDate = $("#checkout2016").val();

            var checkDays = Number(DiffLong(beginDate, endDate));
            if (checkDays > 28) {
                return;
            }
            else {
                SKBookPost(1);
            }
        });
    })();
    //2016.05.10=====2 结束
}
//========================全部排期============================
; (function () {
    var oBox = $('.Scheduling-box');
    var oShowcal = $('.Scheduling');
    var clientW = $(window).width();
    var clientH = $(window).height();
    var oButton = $('#youtxxq_B02_17');
    var oCloseButton = $('#closeScheduling');
    oBox.css({ 'width': clientW + 'px', 'height': clientH + 'px' });
    oButton.on('click', function () {
        oBox.show();
        oShowcal.show();
        $('body').css('overflow', 'hidden');
        return false;
    });
    oCloseButton.on('click', function () {
        oBox.hide();
        oShowcal.hide();
        $('body').css('overflow', 'auto');
        return false;
    });
})();

//新增加的js
//============================评价小图-展开-收起=============
; (function () {
    var openImg = $('.openImg');
    var closeImg = $('.closeImg');
    var oUl = $('.officialeva .photos ul');
    oUl.each(function (index, value) {
        if (oUl.eq(index).children().length > 6) {
            openImg.eq(index).show();
        } else {
            openImg.eq(index).hide();
        }
    });
    openImg.each(function (index, value) {
        (function (i) {
            openImg.eq(i).on('click', function () {
                oUl.eq(i).css('height', 'auto');
                closeImg.eq(i).css('top', oUl.eq(i).height() + 'px');
                closeImg.eq(i).show();
                openImg.eq(i).hide();
            });
            closeImg.eq(i).on('click', function () {
                oUl.eq(i).css('height', '70px');
                closeImg.eq(i).css('top', oUl.eq(i).height() + 'px');
                closeImg.eq(i).hide();
                openImg.eq(i).show();
            });
        })(index);
    });

})();

; (function () {
    //判断im在线状态
    if (isuslan != "en-US") {
        var off1 = $("#youtxxq_B02_48 [id^='Offline_UID_']");
        if (off1.length > 0) {
            var UID = "";
            var offfor = "";
            if (off1.length > 0) {
                offfor = off1;
            }
            for (var i = 0; i < offfor.length; i++) {
                UID += offfor.eq(i).attr("id").replace("Offline_UID_", "") + ",";
            }
            if (UID != "") {
                WebIM.Query.GetState(UID, function (msg) {
                    if (msg.result == 0) {
                        var sp = new Array();
                        sp = UID.split(",");
                        if (msg.data.length > 0) {
                            for (var j = 0; j < sp.length - 1; j++) {
                                if (msg.data[0]["" + sp[j] + ""] == 1) {  //在线
                                    if (CallNum != "") {
                                        if (allotBoll1) {
                                            $("#youtxxq_B02_48 #" + $("[id^='Offline_UID_']").eq(j).attr("id")).show();
                                        }
                                        $("#lianxiwopar #" + $("p[id^='Offline_UID_']").eq(j).attr("id")).hide();
                                    }
                                } else {  //不在线
                                    var strs = '""';
                                    if (CallNum != "") {
                                        if (allotBoll1) {
                                            $("#youtxxq_B02_48 #" + $("[id^='Offline_UID_']").eq(j).attr("id")).remove();

                                            var atb = "<a  href='javascript:void(0)' rel='nofollow' class='se-four clearfix' onclick='WebIM.JieMian.AddChatWin(" + houseUseID + "," + housedid + "," + strs + ",1,1,4654654)'><b></b><em>在线聊天</em></a>"; //2014-11-13
                                            $("#youtxxq_B02_48").html(atb);
                                        } else {
                                            $("#youtxxq_B02_48 #" + $("[id^='lianxiwo']")).show();
                                        }
                                    }
                                }
                            }
                        }
                    }

                });
            }
        }
    }
})();

//add 2016-5-6
/*地图*/
var Filed1SK = Filed1SK;
var HouseThreeCode = HouseThreeCode;
var IsChina = IsChina;
function userAttention(tempExtId, tempExt) { var tryCount = 0; var result = SFUserAttention.Send(tempExtId, tempExt); tryCount++; if (result.split('@')[0] == "false" && tryCount < 10) { /*SFUV中没有设置cookie 循环调用*/setTimeout(arguments.callee, 200); } else if (result.split('@')[0] == "error" && tryCount < 10) { /*传入的参数不正确*/ } else if (result.split('@')[0] == "true") { /*成功发送请求*/ } else { /*尝试10次仍然不成功*/ } }


/*收藏*/
function soucangClick() {
    if (Number(loginUseID) == 0) {
        if (confirm('您需要先登录才能使用收藏功能，是否继续？'))
            window.location.href = "/user/login/%2Froom%2F" + housedid + "%2F";
    }
    else {
        $("#youtxxq_B02_04").unbind("click");
        var r;
        var random = Math.random();
        var startNum = Number($("#FavNum").text());
        if ($("#youtxxq_B02_04 i").text() == "收藏") {
            r = 0; $("#FavNum").text(startNum + 1); $("#FavNumLi").show();
        } else { r = 1; $("#FavNum").text(startNum - 1); if (startNum == 1) { $("#FavNumLi").hide(); } }
        $.get("/publish/Ajax/AddFavourite.aspx?", { houseid: housedid, housetitle: houseinfoHouseTitle, userid: loginUseID, r: r, v: random }, function (data) {
            if (r == 0) {
                $("#youtxxq_B02_04").text("已收藏");
                $("#youtxxq_B02_04").html("<span style='background:url(http://js.youtx.com/publish/images/img2016/collect2.png) no-repeat'></span><i>已收藏</i>");
                $("#youtxxq_B02_04").attr("style", "cursor:");
            }
            else {
                $("#youtxxq_B02_04").html("<span></span><i>收藏</i>");
                $("#youtxxq_B02_04").attr("style", "cursor:pointer");
            }
            $("#youtxxq_B02_04").bind('click', function () {
                if (Number(loginUseID) == 0) {
                    showDiv2(housedid, houseinfoHouseTitle, 0);
                }
                else {
                    soucangClick();
                }
            });
        });
    }
}
/*收藏end*/
//add 评价晒图处的"展开/收起"
function showcommpic() {
    var aOpen = $('.perhouserecom .moreImg');
    var aUl = $('.perhouserecom .photos');
    var aDe = $('.perhouserecom .deImg');
    var n = 0;
    aUl.each(function (index, value) {
        if (aUl.eq(index).children().length > 6) {
            aOpen.eq(index).show();
        } else {
            aOpen.eq(index).hide();
        }
    });
    aOpen.each(function (index, value) {
        (function (i) {
            aOpen.eq(i).on('click', function () {
                aUl.eq(i).css('maxHeight', 'none');
                aDe.eq(i).css({ 'top': (aUl.eq(i).height() - 20) + 'px', 'display': 'block' });
                aOpen.eq(i).hide();
            });
            aDe.eq(i).on('click', function () {
                aUl.eq(i).css('maxHeight', '70px');
                aDe.eq(i).css({ 'top': 0, 'display': 'none' });
                aOpen.eq(i).show();

            });
        })(index);
    });
}


//===================评价显示大图=================
function showbigpic() {
    var aLi = $('.evaluate .photos li');
    var aImg = $('.evaluate .photos li img');
    var n = -1;

    var srcnew = "";
    var srcnew1 = "";
    aLi.each(function (index, value) {
        (function (i) {
            aImg.eq(i).on('click', function () {
                srcnew = this.src;
                srcnew1 = srcnew.replace('60x40c', '480x360c').replace("80x60c", "480x360c");
                var $plist = $(this).parent().parent().parent().siblings("div[class='recombigshow']");
                $plist.empty();
                $(this).parent().siblings("li").removeClass("active");
                if ($(this).parent().attr("class") == "active") {
                    $plist.append("<img src='" + srcnew1 + "' >").hide();
                    $(this).parent().removeClass("active");
                }
                else {
                    $plist.append("<img src='" + srcnew1 + "' class='active'>").show();
                    $(this).parent().addClass("active");
                }
            });
        })(index);
    });
}
//显示地图
function showMapNew2014() {
    if ($("iframe[id='loadmapifm']").attr("src") == "") {
        var loadmapstr = "";
        if (document.location.toString().indexOf("en.youtx.com/") != -1)
        { loadmapstr = "http://www.youtianxia.cn"; }
        if (document.location.toString().indexOf("big5.youtx.com/") != -1)
        { loadmapstr = "http://www.youtianxia.cn"; }
        else if (document.location.toString().indexOf("www.youtx.com/") != -1) {
            loadmapstr = "http://www.youtianxia.com.cn";
        } else {
            loadmapstr = "http://www.youtianxia.cn";
        }
        var straspx = "gaodemap.aspx";

        if (Filed1SK == "4" || HouseThreeCode == 1) {  //酒店房型
            straspx = "baidumap.aspx";
        } else if (IsChina == "False") {
            straspx = "googlemap.aspx";
        } else {
            // straspx = "gaodemap.aspx";
            straspx = "LoadBaiMap.aspx";
        }
        $("iframe[id='loadmapifm']").attr("src", loadmapstr + "/housefile/" + straspx + "?type1=room&housetitle=" + escape(titltl) + "&grade=" + escape(Grade) + "&mapaddress=" + escape(mapaddress) + "&avgprice=" + escape(avgprice) + "&lat=" + latmap + "&lng=" + lngmap + "&language=" + isuslan);
    }
}
/*地图end*/
//日历展示:month:展示的月份。type:是起始时间还是结束时间。day:表示当前选中的时间，之前的时间就要灰掉.date:当前选中的年月日
//IsPageClick:0:代表为翻页，1：代表翻页
function ShowCalendarTime(month, type, day, date, IsPageClick) {

    //如果已有日历控件，则显示出来，无则调用后台方法显示出来.
    //且当前木有翻页，也就是说查询月份==目前显示的月份

    if ($.trim($("#dierge").children().html()) != "" && IsPageClick == 0 && type == "endSection") {
        $("#dierge").show();
    }
    else {
        $.ajax({
            url: "/publish/Ajax/AjaxBookControlNew.aspx?",
            data: { "cal_month": month, "houseid": houseid, "type": type, "mindays": mindays, "day": day, "date": date, "callback": "?" },
            dataType: "jsonp",
            type: "POST",
            success: function (data) {
                if (data.ReturnBookStr != null) {
                    if (type == "endSection") {
                        $("#dierge [id='datepick']").html(data.ReturnBookStr);

                        $("#dierge").show();
                    }
                    else if (type == "beginSection") {
                        $("#diyige [id='datepicker']").html(data.ReturnBookStr);
                        $("#diyige").show();
                    }
                }
            }
        });
    }
}
//显示价格
function ShowPrice(data) {
    $(data).next(".ui-Date-pop").css("display", "block");
}
//隐藏价格
function HidePrice(data) {
    $(data).children(".ui-Date-pop").css("display", "none");
}
//退订须知部分的动态赋值
function PunishmentValue() {
    var checkindate = $("#testttt").val();
    var checkoutdate = $('#testt').val();
    var date = new Date();
    var dateformt = "";

    var Punishmentdesc = "";  //政策类型
    var div_paydesc = "";  //安全取消日内的规则说明
    var div_canlcesaftdesc = "";  //违约金内的规则说明
    var div_canlceendesc = "";  //入住后的罚款规则说明

    var paydate = "";  //支付日期
    var canlcesaftdate = ""; //安全取消日期
    var checkindateend = "";  //入住日期
    var checkoutdateout = ""; //退房日期
    var month = "";

    if (checkindate == 'yy-mm-dd' || checkoutdate == 'yy-mm-dd') {
        if (Number(date.getMonth() + 1) >= 10) {
            month = (date.getMonth() + 1);
        } else {
            month = "0" + (date.getMonth() + 1);
        }
        dateformt = date.getFullYear() + "-" + (month) + "-" + date.getDate();
        checkoutdate = AddDate(dateformt, 1);
        checkindate = dateformt;
        //  $("#paydate").html("<p>" + checkindate + "</p><p>" + checkintimebefore + "</p>");  //付款时间
    }
    // paydate = "<p>" + checkindate + "</p><p>" + checkintimebefore + "</p>";//付款时间
    paydate = "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>";//付款时间
    checkindateend = checkindate;
    checkoutdateout = checkoutdate;
    if (IsChina == "True") {
        var DetailPunishment = "";
        if (IsDeposit <= 0) {
            if (Punishment == 5) {
                Punishmentdesc = "灵活的";
                //$("#Punishment").val()
                if (PaymentDayNum == 50) {
                    DetailPunishment = "（订房天数小于2时，订金为1天房款）";
                }
                else if (PaymentDayNum == 20) {
                    DetailPunishment = "（订房天数小于5时，订金为1天房款）";
                }
                else if (PaymentDayNum == 100) {
                    DetailPunishment = "（订房天数小于1时，订金为1天房款）";
                }
                div_paydesc = "需在线支付房款总额的" + PaymentDayNum + "%" + DetailPunishment + "与清洁费作为订金；";
                div_paydesc += "入住前" + PunishmentDayNum + "天的中午12:00前取消订单，无违约金，订金全部退还。";
                div_paydesc += "<span class=\"triangle-up\"></span>";
                canlcesaftdate = "<p>" + AddDate(checkindate, Number(-PunishmentDayNum)) + "</p>";  //安全取消日期
                div_canlcesaftdesc = " 入住前" + PunishmentDayNum + "天的中午12:00至入住当天" + checkintime + "前取消订单，从订金中扣除房款总额的20%（如果订单租期在5天之内，则扣除1天房款）作为违约金，余额退还。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "入住后取消订单，房东从订单总金额中扣除清洁费与实际入住天数的费用，并扣除未入住天数之房费的25 % 作为罚金，剩余款项返还给租客。";
                div_canlceendesc += "如果取消订单时已超过当天的退房时间，则需要支付第二天的房款。";
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            } else if (Punishment == 6) {
                Punishmentdesc = "中等的";
                if (PaymentDayNum == 50) {
                    DetailPunishment = "（订房天数小于2时，订金为1天房款）";
                }
                else if (PaymentDayNum == 100) {
                    DetailPunishment = "（订房天数小于1时，订金为1天房款）";
                }
                div_paydesc = "需在线支付房款总额的" + PaymentDayNum + "%" + DetailPunishment + "与清洁费作为订金；";
                div_paydesc += "入住前" + PunishmentDayNum + "天的中午12:00前取消订单，无违约金，订金全部退还。";
                canlcesaftdate = "<p>" + AddDate(checkindate, Number(-PunishmentDayNum)) + "</p>";  //安全取消日期
                div_paydesc += "<span class=\"triangle-up\"></span>";
                div_canlcesaftdesc = " 入住前" + PunishmentDayNum + "天的中午12:00至入住当天" + checkintime + "前取消订单，从订金中扣除房款总额的25%（如果订单租期在4天之内，则扣除1天房款）作为违约金，余额退还。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "入住后取消订单，房东从订单总金额中扣除清洁费与实际入住天数的费用，并扣除未入住天数之房费的50 % 作为罚金，剩余款项返还给租客。";
                div_canlceendesc += "如果取消订单时已超过当天的退房时间，则需要支付第二天的房款。";
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            } else if (Punishment == 7) {
                Punishmentdesc = "严格的";
                div_paydesc = "需在线支付房款总额的100%与清洁费作为订金；";
                div_paydesc += "入住前" + PunishmentDayNum + "天的中午12:00前取消订单，无违约金，订金全部退还。";
                canlcesaftdate = "<p>" + AddDate(checkindate, Number(-PunishmentDayNum)) + "</p>";  //安全取消日期
                div_paydesc += "<span class=\"triangle-up\"></span>";
                div_canlcesaftdesc = " 入住前" + PunishmentDayNum + "天的中午12:00至入住当天" + checkintime + "前取消订单，从订金中扣除房款总额的50%（如果订单租期在2天之内，则扣除1天房款）作为违约金，余额退还。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "入住后取消订单，将扣除所有订金作为违约金。";
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            } else if (Punishment == 4) {
                Punishmentdesc = "极严的";
                div_paydesc = "需在线支付房款总额的100%与清洁费作为订金。";
                canlcesaftdate = "<p>无&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>";  //安全取消日期
                div_paydesc += "<span class=\"triangle-up\"></span>";
                div_canlcesaftdesc = " 租客付款后，在入住前任意时间取消订单，房东将扣除房款总额的100%。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "租客在入住后取消订单，将扣除所有订金作为违约金。";
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            }
        } else {  //托管房源
            if (Punishment == 8)   //<!--不转账的-->
            {
                Punishmentdesc = "不转账的";
                div_paydesc = "需在线支付订单总额的" + IsDeposit + "%作为订金。";
                div_paydesc += "入住前" + PunishmentDayNum + "天的中午12:00前取消订单，无违约金，订金全部退还。";
                canlcesaftdate = "<p>" + AddDate(checkindate, Number(-PunishmentDayNum)) + "</p>";  //安全取消日期
                div_paydesc += "<span class=\"triangle-up\"></span>";
                div_canlcesaftdesc = "入住前" + PunishmentDayNum + "天内取消订单，扣除全部订金作为罚金。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "温馨提示：房间最晚保留至入住日的18:00。如果无法在入住日的18:00前抵达，请主动联系房东，否则房间将不会保留。";
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            } else if (Punishment == 4) {
                Punishmentdesc = "极严的";
                div_paydesc = "需在线支付房款总额的100%与清洁费作为订金。";
                canlcesaftdate = "<p>无&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>";  //安全取消日期
                div_paydesc += "<span class=\"triangle-up\"></span>";
                div_canlcesaftdesc = "租客付款后，在入住前任意时间取消订单，将扣除房款总额的100%作为违约金。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "温馨提示：房间最晚保留至入住日的" + (Begintime.getTime()).ToString();
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            } else if (Punishment == 9) {
                Punishmentdesc = "适中的";
                div_paydesc = "需在线支付1天房款（房款总额÷入住天数）与清洁费作为订金。";
                div_paydesc += "租客付款后，在入住前2天的中午12:00前取消交易，可全额退款。";
                canlcesaftdate = "<p>" + AddDate(checkindate, 2) + "</p>";  //安全取消日期
                div_paydesc += "<span class=\"triangle-up\"></span>";
                div_canlcesaftdesc = "租客付款后，在入住前2天内取消交易，扣除1天房款。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "温馨提示：房间最晚保留至入住日的" + (Begintime.getTime()).ToString();
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            } else if (Punishment == 10) {
                Punishmentdesc = "灵活的";
                div_paydesc = "在线支付房款总额的20%与清洁费作为订金（如果订单租期在5天之内，订金为1天房款与清洁费）。";
                div_paydesc += "入住前" + PunishmentDayNum + "天的中午12:00前取消订单，无违约金，订金全部退还。";
                canlcesaftdate = "<p>" + AddDate(checkindate, Number(-PunishmentDayNum)) + "</p>";  //安全取消日期
                div_paydesc += "<span class=\"triangle-up\"></span>";
                div_canlcesaftdesc = "入住前" + PunishmentDayNum + "天的中午12:00至入住当天" + checkintime + "前取消订单，从订金中扣除房款总额的20%（如果订单租期在5天之内，则扣除1天房款）作为违约金。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "温馨提示：房间最晚保留至入住日的18:00。如果无法在入住日的18:00前抵达，请主动联系房东，否则房间将不会保留。";
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            } else if (Punishment == 11) {
                Punishmentdesc = "长租期的";
                div_paydesc = "在线支付房款总额的20%与清洁费作为订金。";
                div_paydesc += "入住前" + PunishmentDayNum + "天的中午12:00前取消订单，无违约金，订金全部退还。";
                canlcesaftdate = "<p>" + AddDate(checkindate, Number(-PunishmentDayNum)) + "</p>";  //安全取消日期
                div_paydesc += "<span class=\"triangle-up\"></span>";
                div_canlcesaftdesc = "入住前" + PunishmentDayNum + "天的中午12:00至入住当天" + checkintime + "前，从订金中扣除房款总额的20%作为违约金。";
                div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
                div_canlceendesc = "温馨提示：房间最晚保留至入住日的18:00。如果无法在入住日的18:00前抵达，请主动联系房东，否则房间将不会保留。";
                div_canlceendesc += "<span class=\"triangle-up\"></span>";
            }
        }
    } else {  //国外房源
        if (Punishment == 21) {  //<!--灵活的-->
            Punishmentdesc = "灵活的";
            div_paydesc = "租客在线支付全额房款和游天下服务费；";
            div_paydesc += "租客在入住24小时前取消订单，房款全额退还给租客；";
            canlcesaftdate = "<p>" + AddDate(checkindate, 1) + "</p>";  //安全取消日期
            div_paydesc += "<span class=\"triangle-up\"></span>";
            div_canlcesaftdesc = "租客在入住前24小时内取消订单，扣除一天房费；";
            div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
            div_canlceendesc = "租客在入住后提前退房，扣除实际入住天数的房费及清洁费；";
            div_canlceendesc += "游天下服务费：房东接受订单后，租客取消订单，游天下服务费不予退还；";
            div_canlceendesc += "<span class=\"triangle-up\"></span>";
        } else if (Punishment == 22) {  //<!--中等的-->
            Punishmentdesc = "中等的";
            div_paydesc = "租客在线支付全额房款和游天下服务费；";
            div_paydesc += "租客在入住5天前取消订单，房款全额退还给租客；";
            canlcesaftdate = "<p>" + AddDate(checkindate, 5) + "</p>";  //安全取消日期
            div_paydesc += "<span class=\"triangle-up\"></span>";
            div_canlcesaftdesc = "租客在入住前5天内取消订单，扣除第一天房费及剩余房款的50%；";
            div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
            div_canlceendesc = "租客在入住后提前退房，扣除剩余房款的50%及清洁费；";
            div_canlceendesc += "游天下服务费：房东接受订单后，租客取消订单，游天下服务费不予退还；";
            div_canlceendesc += "<span class=\"triangle-up\"></span>";
        } else if (Punishment == 23) {  //<!--严格的-->
            Punishmentdesc = "严格的";
            div_paydesc = "租客在线支付全额房款和游天下服务费；";
            canlcesaftdate = "<p>无&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>";  //安全取消日期
            div_paydesc += "<span class=\"triangle-up\"></span>";
            div_canlcesaftdesc = "租客在入住7天前取消订单，扣除房款的50%；";
            div_canlcesaftdesc = "租客在入住前7天内取消订单，房款不退；";
            div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
            div_canlceendesc = "租客在入住后提前退房，房款不退；";
            div_canlceendesc += "游天下服务费：房东接受订单后，租客取消订单，游天下服务费不予退还；";
            div_canlceendesc += "<span class=\"triangle-up\"></span>";
        } else if (Punishment == 24) {  //<!--极严格的-->
            Punishmentdesc = "极严格的";
            div_paydesc = "租客在线支付全额房款和游天下服务费；";
            canlcesaftdate = "<p>无&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>";  //安全取消日期
            div_paydesc += "<span class=\"triangle-up\"></span>";
            div_canlcesaftdesc = "租客在入住30天前取消订单，扣除房款的50%；";
            div_canlcesaftdesc = "租客在入住前30天内取消订单，房款不退；";
            div_canlcesaftdesc += "<span class=\"triangle-up\"></span>";
            div_canlceendesc = "租客在入住后提前退房，房款不退；";
            div_canlceendesc += "游天下服务费：房东接受订单后，租客取消订单，游天下服务费不予退还；";
            div_canlceendesc += "<span class=\"triangle-up\"></span>";
        }
    }
    $("#Punishment").html(Punishmentdesc);
    $("#paydate").html(paydate);
    if (div_paydesc.trim() != "<p>无&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>") {
        $("#div_paydesc").html(div_paydesc);
    } else {
        $("#div_paydesc").html(div_paydesc);
    }
    $("#canlcesaftdate").html(canlcesaftdate + "<p>" + checkintimebefore + "</p>");  //安全取消日
    $("#div_canlcesaftdesc").html(div_canlcesaftdesc); //安全取消日
    $("#chenindate").html("<p>" + checkindateend + "</p><p>" + checkintimebefore + "</p>");
    $("#div_canlceendesc").html(div_canlceendesc);
    $("#checkoutdate").html("<p>" + checkoutdateout + "</p><p>" + checkintimebefore + "</p>");
}

//选择日期
function SelectDate(data) {
    var month;
    var type = $(data).attr("type");
    var date = $(data).attr("data");
    var dateYearMonthDay = date + '-' + ($(data).html() - 1);

    if (type == "beginSection") {
        //之前选择的日期
        var oldSelectDate = $("#testttt").val();
        //新选择的beginTime
        var olddate = AddDate(dateYearMonthDay, 1)
        //新选择的endTime
        var newdate = AddDate(olddate, 1);

        var day = olddate.split('-')[2];
        $('#testt').val(newdate);
        $('#datepick').datepicker('option', 'minDate', $('#testt').val());
        $("#testttt").val(olddate);
        month = newdate.split('-')[1];

        var IsPageClick = 1;

        ShowCalendarTime(month, "endSection", day, olddate, IsPageClick);
        //end
        $("#diyige").hide();
        $("#errorshow").text("").hide();
        AjaxJiSuan();
    }
    else if (type == "endSection") {
        var begin = $("#testttt").val();
        var checkin = AddDate(begin, 0);
        var checkout = AddDate(dateYearMonthDay, 1);
        if (begin == "yy-mm-dd" || checkin > checkout) {
            var newdate = AddDate(dateYearMonthDay, 0);
            $('#testttt').val(newdate);
        }
        $('#testt').val(checkout);
        $("#diyige").hide();
        $("#dierge").hide();
        $("#errorshow").text("").hide();
        AjaxJiSuan();
    }
    PunishmentValue();
}

/*日历左翻*/
function left_clickNew(data) {
    var UiDatePickerMonth = $(data).parent().parent().find('.ui-datepicker-month');
    var type = $(data).attr("type");
    var month = UiDatePickerMonth.html().split('月')[0];
    if (month != 1) {
        month = Number(month) - 1;
        UiDatePickerMonth.html(month + '月');
    }
    else {
        month = 12;
        UiDatePickerMonth.html('12月');
    }

    if (type == "beginSection") {
        ShowCalendarTime(month, type, 0, 'yy-mm-dd', 1);
    }
        //如果是结束时间框的翻页，则需要记录当前的开始时间
    else {
        var beginDate = $("#testttt").val();
        var day = beginDate.split('-')[2];
        ShowCalendarTime(month, type, day, beginDate, 1);
    }
}
//日历右翻
function right_clickNew(data) {
    var UiDatePickerMonth = $(data).parent().parent().find('.ui-datepicker-month');
    var type = $(data).attr("type");
    var month = UiDatePickerMonth.html().split('月')[0];
    if (month != 12) {
        month = Number(month) + 1;
        UiDatePickerMonth.html(month + '月');
    }
    else {
        month = 1;
        UiDatePickerMonth.html('1月');
    }

    if (type == "beginSection") {
        ShowCalendarTime(month, type, 0, 'yy-mm-dd', 1);
    }
        //如果是结束时间框的翻页，则需要记录当前的开始时间
    else {
        var beginDate = $("#testttt").val();
        var day = beginDate.split('-')[2];
        ShowCalendarTime(month, type, day, beginDate, 1);
    }
}
//清除日期
function cleardateNew() {
    $("#testttt").val("yy-mm-dd");
    $("#testt").val("yy-mm-dd");
    $("#diyige").hide();
    $("#dierge").hide();
    $("#AccountDetail_zhangdan").css("display", "none");
}
//清除日期 begin
function cleardate() {
    $('#datepicker').datepicker('option', 'minDate', new Date());
    $('#datepicker').datepicker('setDate', new Date());
    $('#datepick').datepicker('option', 'minDate', '+1d');
    $('#datepick').datepicker('setDate', '+1d');
    //酒店类型
    if (Filed1SK == "4") {
        $("#checkin2014").val("yy-mm-dd");
        $("#checkout2014").val("yy-mm-dd");
        $("#diyige2014").hide();
        $("#dierge2014").hide();
    }
        //房源类型
    else {
        $("#testttt").val("yy-mm-dd");
        $("#testt").val("yy-mm-dd");
        $("#diyige").hide();
        $("#dierge").hide();
        if ($("#number_of_guests").length > 0) {
            $("#number_of_guests").change();
        }
        //房源：清除小记、提示语
        $("#ScheTxtBoxDL1").hide();
        $("#ScheTxtBoxDL2").hide();
        $("#ScheTxtBoxDL3").show();
    }

}
//清除日期end
//酒店房源获取数据
function SKBookPost(type) {
    var comedate = "";
    var leavedate = "";
    var guest = 1;
    guest = peoper;
    if (type == 1) {  //type=1为选择日期搜索
        comedate = $("#checkin2016").val();
        leavedate = $("#checkout2016").val();
    } else {   //初始化搜索
        comedate = checkin;
        leavedate = checkout;
    }
    $("#HotelDetails_Load").show();
    $("#HotelDetails_Table").html("");

    if (guest != 0 && SKHotelCodeS != "" && (comedate != "" || comedate != "yyyy-mm-dd") && (leavedate != "" || leavedate != "yyyy-mm-dd")) {
        $.ajax({
            url: "/publish/Ajax/AjaxSKHotelDetail2016.aspx?TypeID=1&guestnum=" + guest + "&SKHotelCodeS=" + SKHotelCodeS + "&RoomTypeCode=" + RoomTypeCodes + "&comeDate=" + comedate + "&leavedate=" + leavedate + "&date=" + new Date() + "&callback=?",
            dataType: "json",
            type: "POST",
            success: function (data) {
                if (data != "" && data != "null") {
                    if (data.ReturnBookStr != "" && data.ReturnBookStr != null) {
                        $("#HotelDetails_Load").hide();
                        $("#HotelDetails_Table").html(data.ReturnBookStr);
                        $(".hovershow2 .hovershow").each(function () {
                            var aYText = $(this).width();
                            if (aYText >= 270) {
                                $(this).find("p").css({
                                    width: '270px',
                                    whiteSpace: 'inherit'
                                });
                            }
                            else {
                                $(this).find('p').css({
                                    width: 'auto',
                                    whiteSpace: 'nowrap'
                                });
                            }
                        });
                    }

                    //鼠标滑过价格
                    var checkin3 = AddDate(comedate, 0);
                    var checkout3 = AddDate(leavedate, 0);
                    var checkDays2 = Number(DiffLong(checkin3, checkout3));
                    var _Timer2 = null;
                    var isshow = true;
                    if (checkDays2 > 1) {
                        $(".YTitleDiv").mouseover(function () {
                            var isBreakFast = $.trim($(this).attr("isbreakfast"));
                            var roomChildId = $.trim($(this).attr("rathcode"));
                            var RateCodeStr = $.trim($(this).attr("roomratecode"));
                            var RoomTypeCode = $.trim($(this).attr("roomtypecode"));
                            if (isshow == true) {
                                i = 0;
                                isshow = false;
                                if (Number($("#spanprice_" + roomChildId).attr("pricesignn")) == 0) {
                                    $.ajax({
                                        url: "/publish/Ajax/AjaxSKHotelDetail2016.aspx?TypeID=2&guestnum==" + guest + "&SKHotelCodeS=" + SKHotelCodeS + "&RateCodeStr=" + RateCodeStr + "&RoomTypeCode=" + RoomTypeCode + "&comeDate=" + comedate + "&leavedate=" + leavedate + "&isBreakFast=" + isBreakFast + "&date=" + new Date() + "&callback=?",
                                        dataType: "jsonp",
                                        type: "POST",
                                        success: function (result) {
                                            if (result != null) {
                                                if (result.ReturnPriceList != null && result.ReturnPriceList != "") {
                                                    //  YTitleNum2 = 10;
                                                    clearTimeout(_Timer2);
                                                    $(".YText_Price").hide();
                                                    $(".YTitle").css('zIndex', '3');
                                                    $("#span_price_" + roomChildId).after(result.ReturnPriceList);
                                                    $("#spanprice_" + roomChildId).attr("pricesignn", 1);
                                                    $("div[id='divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "']").css('display', 'block');
                                                    $("div[id='divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "']").parent().css('zIndex', '20');
                                                    //if (checkDays2 < 6) {
                                                    //    $("div[id='divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "']").css({ width: checkDays2 * 83 + 'px', left: -checkDays2 * 66 / 2 + 'px' });
                                                    //    $("div[id='divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "']").find("#xiajiantou").css({ left: checkDays2 * 70 / 2 + 'px' });
                                                    //} else {
                                                    //    checkDays2 = 6;
                                                    //    $("div[id='divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "']").css({ width: 498 + 'px', left: -checkDays2 * 66 / 2 + 'px' });
                                                    //    $("div[id='divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "']").find("#xiajiantou").css({ left: checkDays2 * 70 / 2 + 'px' });
                                                    //}
                                                    var oBoxAll = $('.housepriceboxall');
                                                    var aBox = $('.housepricebox');
                                                    var oJ = $('#xiajiantou');
                                                    var upPage = $('.upPage');
                                                    var downPage = $('.downPage');
                                                    var oHouse = $('.houseprice');
                                                    var timer = null;
                                                    aBox.each(function (index, value) {
                                                        var oneW = aBox.eq(index).children().eq(0).width();
                                                        var length = aBox.eq(index).children().length;
                                                        aBox.eq(index).css({ 'width': (oneW + 7) * length + 'px', 'maxWidth': 6 * (oneW + 7) + 'px' });

                                                    });
                                                    if (aBox.length > 1) {
                                                        upPage.show();
                                                        downPage.show();
                                                        oBoxAll.css({ 'paddingBottom': '20px' });
                                                        aBox.css('width', '1044px');
                                                    } else {
                                                        upPage.hide();
                                                        downPage.hide();
                                                        oBoxAll.css({ 'paddingBottom': '0' });
                                                    }
                                                    oBoxAll.css({ 'top': -(oBoxAll.height() + 30) + 'px', 'marginLeft': -oBoxAll.width() / 2 + 'px' });


                                                    isshow = true;
                                                    $("#divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "").mouseover(function () {
                                                        // alert(1);
                                                        clearTimeout(_Timer2);
                                                        $(this).parent().attr("pricesignn", 1);
                                                    });

                                                    $("#divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "").mouseout(function () {
                                                        var _This = this;
                                                        _Timer2 = setTimeout(function () {
                                                            $(_This).css('display', 'none');
                                                            $(_This).parent().css('zIndex', '3');
                                                        }, 500)
                                                        $(this).parent().attr("pricesignn", 1);
                                                    });
                                                } else {
                                                    $("#spanprice_" + roomChildId).attr("pricesignn", 0);
                                                    isshow = true;
                                                }
                                            }
                                        }
                                    });
                                } else {
                                    $("#divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "").unbind("mouseover").unbind("mouseout");
                                    clearTimeout(_Timer2);
                                    $(".YText_Price").hide();
                                    $(".YTitle").css('zIndex', '3');
                                    $("div[id='divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "']").css('display', 'block');
                                    $("div[id='divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "']").parent().css('zIndex', '20');
                                    isshow = true;

                                    $("#divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "").mouseover(function () {
                                        //alert(1);
                                        clearTimeout(_Timer2);
                                        $(this).parent().attr("pricesignn", 1);
                                    });

                                    $("#divprice_" + ($.trim(RateCodeStr) + $.trim(RoomTypeCode)) + "").mouseout(function () {
                                        var _This = this;
                                        _Timer2 = setTimeout(function () {
                                            $(_This).css('display', 'none');
                                            $(_This).parent().css('zIndex', '3');
                                        }, 500)
                                        $(this).parent().attr("pricesignn", 1);
                                    });
                                }
                            } else {
                                isshow = true;
                            }
                        });

                        $(".YTitleDiv").mouseout(function () {
                            var _This = this;
                            _Timer2 = setTimeout(function () {
                                $(_This).parent().find('.YText_Price').css('display', 'none');
                                $(_This).parent().css('zIndex', '3');
                            }, 500)
                        });

                    }
                }
            }
        });
    }
}
//时间处理
function DiffLong(datestr1, datestr2) {
    var date1 = new Date(Date.parse(datestr1.replace(/-/g, "/")));
    var date2 = new Date(Date.parse(datestr2.replace(/-/g, "/")));
    var datetimeTemp;
    if (date1.getTime() > date2.getTime()) {

        datetimeTemp = date1;
        date1 = date2;
        date2 = datetimeTemp;
    }
    difference = date2.getTime() - date1.getTime();
    thisdays = Math.floor(difference / (1000 * 60 * 60 * 24));
    //小时的计算可以不要看，理解下就可以了
    difference = difference - thisdays * (1000 * 60 * 60 * 24);
    thishours = Math.floor(difference / (1000 * 60 * 60));
    //var strRet = thisdays + '天' + thishours + '小时';
    return thisdays;
}

function MouseDownOther(evt) {
    evt = evt || window.event;
    var ele = evt.target || evt.srcElement;
    if (Filed1SK == "4") {
        if (ele.parentNode != $("#abcde2016") || ele.parentNode != $("#datepicker2016")) {
            $("#diyige2016").hide();
        }
        if (ele.parentNode != $("#edcba2016") || ele.parentNode != $("#datepick2016")) {
            $("#dierge2016").hide();
        }
    } else {
        if (ele.parentNode != $("#abcde") || ele.parentNode != $("#datepicker")) {
            $("#diyige").hide();
        }
        if (ele.parentNode != $("#edcba") || ele.parentNode != $("#datepick")) {
            $("#dierge").hide();
        }
    }
}
//评价部分
function qiehuan3(div, n) {
    hiddenAll3();
    var stylecss = "";
    if (n == 2) {
        stylecss = "otherhousetap active";
    } else {
        stylecss = "thishousetap active";
    }
    $(".housetap a").each(function () {
        if ($(this).attr("id") == "youtxxq_B02_21") {
            $(this).attr("class", "thishousetap");
        } else {
            $(this).attr("class", "otherhousetap");
        }
    });
    document.getElementById(div).className = stylecss;
    if (n == 1) {
        if ($("#youtxxq_B02_21 b").html() != "（0）") {
            $("#comment1").show();
            $("#comment_page").show();
        }
        $("#commentzhengti").show();
    }
    if (n == 2) {
        if ($("#othercomments_b").html() != "（0）") {

            $("#anthercomment1").show();
            $("#anthercomment_page").show();
        }
        $("#commentzhengti").hide();
    }
}
function hiddenAll3() {
    $("#anthercomment1").hide();
    $("#commentForGoodOrBad").hide();

    $("#comment_pageForGoodOrBad").hide();
    $("#comment_page").hide();
    $("#anthercomment_page").hide();
    $("#comment1").hide();
    $("#youtxxq_B02_21").attr("class", "");
    $("#youtxxq_B02_25").attr("class", "");
}


function hidePages() {
    $("#comment_pageForGoodOrBad").hide();
    $("#comment_page").hide();
    $("#anthercomment_page").hide();
}

//价格翻页
var i = 0;
function ShowUpOrDown(roomChildId, UpOrDown) {
    var len = $("div[id='YText_Price_" + roomChildId + "']").length;

    if (Number(UpOrDown) == 1) {  //up
        i--; if (i <= 0) { i = 0; }
        $("div[id='YText_Price_" + roomChildId + "']:eq(" + i + ")").show().siblings().hide();
        $('.housepriceboxall').css({ 'top': -($('.housepriceboxall').height() + 30) + 'px', 'marginLeft': -$('.housepriceboxall').width() / 2 + 'px' });
    } else if (Number(UpOrDown) == 2) {  //down
        i++; if (i > len - 1) { i = len - 1; }
        $("div[id='YText_Price_" + roomChildId + "']:eq(" + i + ")").show().siblings().hide();
        $('.housepriceboxall').css({ 'top': -($('.housepriceboxall').height() + 30) + 'px', 'marginLeft': -$('.housepriceboxall').width() / 2 + 'px' });
    }
    $('#PNBtn_' + roomChildId).show();
    $('#YTextIco_' + roomChildId).show();
}

//房东本房间评价部分
function loadtrade(p) {
    hidePages();
    $.get("/publish/Ajax/CommentListEn2016.aspx", { houseid: housedid, userid: houseUseID, loginUserID: loginUseID, UserIconImg: UserIconImg, houseState: 4, page: p, type: 0, iscontent: iscontent, starlvl: starlvl }, function (resault) {
        if (resault != "") {
            var strarr1 = resault.split('|');

            //判断是“全部”还是“好中差评”的分页
            var commentPageDiv = "";
            var commentDiv = "";
            //“全部”的分页
            commentPageDiv = "#comment_page";
            commentDiv = "#comment1";


            $.get(pager, { count: strarr1[1], page: p, pf: "loadtrade({page})" }, function (resault1) {
                $(commentPageDiv).html(resault1);
                if (p != 1) {
                    var aLi = $('.coldstick li');
                    var h5 = $('.dsection-5').offset().top - 100;
                    $(window).scrollTop(h5);
                    aLi.removeClass('active');
                    aLi.eq(4).addClass('active');
                }
            });

            var resaultstr = "";
            for (var i = 2; i < strarr1.length; i++) {
                resaultstr += strarr1[i];
            }

            $("#anthercomment_page").hide();
            $("#anthercomment1").hide();
            $(commentPageDiv).show();

            $(commentDiv).show();
            $("#comment1_div").html(resaultstr)
            //add 2015-07-24
            showcommpic();
            showbigpic();
        }
        else {
            $("#comment_page").html("");
            $("#comment1").hide();
            $("#anthercomment1").hide();
            $("#anthercomment_page").hide();
        }
    });
}
//房东其他房源评价
var rankOther = 0;
function loadother(p) {
    hidePages();
    $.get("/publish/Ajax/CommentListEn2016.aspx", { houseid: housedid, userid: houseUseID, loginUserID: loginUseID, UserIconImg: UserIconImg, houseState: 4, page: p, type: 1 }, function (resault) {
        if (resault != "" && resault.toString().indexOf("|") != -1) {

            var strarr1 = resault.split('|');
            $("#othercomments_b").html("(" + strarr1[0] + ")");
            $.get(pager, { count: strarr1[1], page: p, pf: "loadother({page})" }, function (resault1) {
                $("#anthercomment_page").html(resault1);
                if (p != 1) {
                    var aLi = $('.coldstick li');
                    var h5 = $('.dsection-5').offset().top - 100;
                    $(window).scrollTop(h5);
                    aLi.removeClass('active');
                    aLi.eq(4).addClass('active');
                }
            });
            var resaultstr = "";
            for (var i = 2; i < strarr1.length; i++) {
                resaultstr += strarr1[i];
            }
            if (rankOther == 1) {
                $("#comment_page").hide();
                $("#anthercomment_page").show();
            }
                //首次加载，显示comment_page
            else if (rankOther == 0) {
                //页码显示 begin
                $("#anthercomment_page").hide();
                $("#comment_page").show();
                //页码显示 end
            }
            $("#anthercomment1_div").html(resaultstr);
            $(".CommnetRecomPic li img").unbind("click"); //移除时间方法
            rankOther = 1;

        }
    });
}

//鼠标滑过支付方式，取消政策下（酒店房源）事件
function ShowRoomPrice(roomChildId, typeID, isOverOrOut) {
    var YTitleNum = 4;
    var mousetype = "";
    var stylecss = "";
    if (Number(typeID) == 1) {   //支付方式
        mousetype = "#spanpay_" + roomChildId;
        stylecss = ".hovershow";
    } else if (Number(typeID) == 2) {  //取消政策
        mousetype = "#spanguide_" + roomChildId;
        stylecss = ".hovershow2";
    }
    if (Number(isOverOrOut) == 1) {  //mouseover
        YTitleNum = 10;
        var aYText = $(mousetype).find("" + stylecss + "").width();
        if (aYText >= 270) {
            $(mousetype).find("p").css({
                width: '270px',
                whiteSpace: 'inherit'
            })
        }
        else {
            $(mousetype).find('p').css({
                width: 'auto',
                whiteSpace: 'nowrap'
            })
        }
        $(mousetype).find("" + stylecss + "").css('display', 'block');
        $(mousetype).css('zIndex', YTitleNum);
    } else {  //mouseout
        YTitleNum = 4;
        $(mousetype).find("" + stylecss + "").css('display', 'none');
        $(mousetype).css('zIndex', YTitleNum);
    }
}
//鼠标滑过事件end

$(document).ready(function () {
    showMapNew2014();
    //$("#mapDiv img[src='http://api.map.baidu.com/images/iw_close1d3.gif']").click(function () {
    //    $(".mapshadow").show();
    //});
    $("#mapDiv img[src='http://api.map.baidu.com/images/iw_close1d3.gif']").live("click", function () {
        $(".mapshadow").show();
    });

    showcommpic();
    showbigpic();
    loadother(1);
    PunishmentValue();  //退订须知

    //收藏按钮
    if (flagShouCang == "1") {
        $("#youtxxq_B02_04").html("<span style='background:url(http://js.youtx.com/publish/images/img2016/collect2.png) no-repeat'></span><i>已收藏</i>");
        $("#youtxxq_B02_04").attr("style", "cursor:''");
    }
    $("#youtxxq_B02_04").click(function () {
        if (loginUseID == 0) {
            try { showDiv2(housedid, houseinfoHouseTitle, "1") }
            catch (e) {
                $.ajax({
                    url: "/Shared/common/Login.aspx",
                    success: function (data) { $("body").append(data); showDiv2(housedid, houseinfoHouseTitle, "1"); },
                    dataType: "html"
                });
            }
        }
        else {
            soucangClick();
        }
    });
    //收藏按钮end
    //点击BeginTime 
    $("#testttt").click(function () {
        var month = 0;
        var date = 0;
        if ($("#testttt").val() != "yy-mm-dd") {
            month = $("#testttt").val().split('-')[1];
            date = $("#testttt").val();
        }

        ShowCalendarTime(month, "beginSection", 0, date, 0);
    });
    //点击EndTime 
    $("#testt").click(function () {
        var month = 0;
        var date = 0;
        var day = 0;
        if ($("#testt").val() != "yy-mm-dd") {
            month = $("#testt").val().split('-')[1];
            date = $("#testt").val();
            day = $("#testt").val().split('-')[2];
        }
        ShowCalendarTime(month, "endSection", day, date, 0);
    });

    if (Filed1SK == "4") {
        //日历控件事件绑定begin
        $('#datepicker2016').datepicker({
            altField: '#checkin2016',
            minDate: new Date(),
            maxDate: '+89d',
            prevText: '',
            nextText: '',
            dateFormat: 'yy-mm-dd',
            onSelect: function (dateText, inst) {
                $('#checkin2016').val(dateText);
                var end = $("#checkout2014").val();
                var newdate = AddDate(dateText, 1);
                $('#checkout2016').val(newdate);
                $('#datepick2016').datepicker('option', 'minDate', $('#checkout2016').val());
                $("#diyige2016").hide();
                $("#dierge2016").show();
            }
        });

        $('#datepick2016').datepicker({
            altField: '#checkout2016',
            minDate: '+1d',
            maxDate: '+90d',
            prevText: '',
            nextText: '',
            dateFormat: 'yy-mm-dd',
            onSelect: function (dateText, inst) {
                var begin = $("#checkin2016").val();
                var end = $("#checkout2016").val();
                var checkin1 = AddDate(begin, 0);
                var checkout1 = AddDate(dateText, 0);
                var checkDays = Number(DiffLong(checkin1, checkout1));
                if (checkDays > 28) {
                    $("#CheckDiv").show();
                }
                else {
                    $("#CheckDiv").hide();
                }
                if (begin == "yy-mm-dd") {
                    var datet = new Date(dateText.replace('-', ','));
                    datet = datet.setDate(datet.getDate() - 1);
                    var newdate = dateFormat(datet, "yyyy-mm-dd");
                    $('#datepicker2016').datepicker('option', 'defaultDate', newdate);
                    $('#datepicker2016').datepicker('setDate', newdate);
                    $('#checkin2016').val(newdate);
                }
                $("#dierge2016").hide();
            }
        });
        $('#checkin2016').focus(function () {
            $("#diyige2016").show();
            $("#dierge2016").hide();
        });
        $('#checkout2016').focus(function () {
            $("#dierge2016").show();
            $("#diyige2016").hide();
        });
        $("#checkin2016").mouseup(function () {
            return false;
        });
        $("#checkout2016").mouseup(function () {
            return false;
        });
        $("#datepick2016").mouseup(function () {
            return false;
        });
        $("#datepicker2016").mouseup(function () {
            return false;
        });
        SKBookPost(0);
    }

    $(document).mouseup(MouseDownOther);
    $(document).blur(MouseDownOther);
});
