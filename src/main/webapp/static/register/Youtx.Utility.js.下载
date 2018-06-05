(function () {
    var Youtx = {
        author: "闵益飞",
        UpdateAuthor: "宋平",
        url: "http://www.youtx.com",
        date: "2011-10-19",
        updateDate: "2011-10-26",
        company: "搜房网 游天下"
    }

    //工具类
    Youtx.Utility = {
        //判断是否为空或者Null
        isNullOrEmpty: function (str) {
            if (str != null && $.trim(str).length > 0) {
                return false;
            } else {
                return true;
            }
        },
        //获取页面URL
        getPageUrl: function () {
            var url = window.location.href;
            return url;
        },
        //获取页面URL的各级目录名称 to Array
        getPageUrlList: function () {
            var arr = this.getPageUrl().split("/");
            return arr;
        },
        //获取页面URL中的锚链接
        getPageHash: function () {
            var hash = window.location.hash;
            return hash;
        },
        //向页面URL中写入锚链接
        setPageHash: function (hash) {
            window.location.hash = hash.replace("#", "");
        },
        //写入Cookie
        setCookie: function (c_name, value, expiredays) {
            var exdate = new Date();
            exdate.setDate(exdate.getDate() + expiredays);
            document.cookie = c_name + "=" + escape(value) + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString()) + " ;path=/ ;domain=youtx.com";
        },
        //读取Cookie
        getCookie: function (c_name) {
            if (document.cookie.length > 0) {
                c_start = document.cookie.indexOf(c_name + "=");
                if (c_start != -1) {
                    c_start = c_start + c_name.length + 1;
                    c_end = document.cookie.indexOf(";", c_start);
                    if (c_end == -1) {
                        c_end = document.cookie.length;
                        return unescape(document.cookie.substring(c_start, c_end))
                    }
                }
            }
            return "";
        },
        //判断是否为字母
        isLetter: function (keyword) {
            var matchStr = /[_a-zA-Z]/
            return matchStr.test(keyword);
        }
    }

    //地址参数类
    Youtx.UrlParameter = function (url) {
        if (!Youtx.Utility.isNullOrEmpty(url)) {
            this.init(url);
        }
    }
    Youtx.UrlParameter.prototype = {
        country: null,
        province: null,
        city: "",
        district: "",
        area: null,
        building: null,
        sw: "",
        ne: "",
        dis: null,
        owner: null,
        tag: null,
        fuser: "",
        puser: "",
        ids: null,
        rtype: "",
        bed: null,
        room: null,
        bath: null,
        sp: "",
        htype: "",
        cin: "yy-mm-dd",
        out: "yy-mm-dd",
        guest: "1",
        price: "10,300",
        se: "2",
        kw: "",
        ps: "21",
        page: "1",
        sort: null,
        path: null,
        list: "1",
        maptype: "mapa",
        minprice: null,
        maxprice: null,
        promotype: null,
        //URL字符串转参数对象
        init: function (url) {
            if (!this.isNullOrEmpty(url)) {
                var arr1 = url.split("@");
                if (arr1.length > 0) {
                    //含@城市参数
                    if (arr1.length == 2) {
                        this.path = arr1[1].replace("@");
                    }
                    else {
                        //  item = "http://localhost:7081/beijing"

                        item = arr1[0];
                        mr = item.match(/(http:\/\/)?([\w\.:]*)\/([-\w]+)(\/?)/i);
                        if (mr != null && mr.length > 1) {
                            this.path = mr[3].replace("list", "").replace("photo", "").replace("-", "");
                            switch ($.cookie("duanzuViewList")) {
                                case "1": this.list = "1"; break;
                                case "2": this.list = "2"; break;
                                case "3": this.list = "3"; break;
                            }

                        }
                    }

                    //参数解析
                    if (!this.isNullOrEmpty(arr1[0])) {
                        var arr2 = arr1[0].replace("#", "").split("-");
                        var len = arr2.length;
                        if (len > 0) {
                            var item = "";
                            var mr = null;
                            for (var i = 0; i < len; i++) {
                                item = arr2[i];
                                //country
                                mr = item.match(/country(.+)/);
                                if (mr != null && mr.length > 1) {
                                    this.country = mr[1];
                                    continue;
                                }
                                //province
                                mr = item.match(/province(.+)/);
                                if (mr != null && mr.length > 1) {
                                    this.province = decodeURI(mr[1]);
                                    continue;
                                }
                                //city
                                mr = item.match(/city(.+)/);
                                if (mr != null && mr.length > 1) {
                                    this.city = decodeURI(mr[1]);
                                    continue;
                                }
                                //district
                                mr = item.match(/district(.+)/);
                                if (mr != null && mr.length > 1) {
                                    this.district = decodeURI(mr[1]);
                                    continue;
                                }
                                //area
                                mr = item.match(/^area(.+)/);
                                if (mr != null && mr.length > 1) {
                                    this.area = mr[1];
                                    continue;
                                }
                                //building
                                mr = item.match(/^building(.+)/);
                                if (mr != null && mr.length > 1) {
                                    this.building = mr[1];
                                    continue;
                                }
                                //sw
                                mr = item.match(/sw([0-9\._]+,[0-9\._]+)/);
                                if (mr != null && mr.length > 1) {
                                    this.sw = mr[1].replace("_", "-").replace("_", "-");
                                    continue;
                                }
                                //ne
                                mr = item.match(/ne([0-9\._]+,[0-9\._]+)/);
                                if (mr != null && mr.length > 1) {
                                    this.ne = mr[1].replace("_", "-").replace("_", "-");
                                    continue;
                                }
                                //dis
                                mr = item.match(/dis([0-9\.]+)/);
                                if (mr != null && mr.length > 1) {
                                    this.dis = mr[1];
                                    continue;
                                }
                                //owner
                                mr = item.match(/owner(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.owner = mr[1];
                                    continue;
                                }
                                //owner
                                mr = item.match(/ptype(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.promotype = mr[1];
                                    continue;
                                }
                                //tag
                                mr = item.match(/^tag(.+)/);
                                if (mr != null && mr.length > 1) {
                                    this.tag = mr[1];
                                    continue;
                                }
                                //fuser
                                mr = item.match(/fuser(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.fuser = mr[1];
                                    continue;
                                }
                                //puser
                                mr = item.match(/puser(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.puser = mr[1];
                                    continue;
                                }
                                //ids
                                mr = item.match(/ids([(\d+)\,]+)/);
                                if (mr != null && mr.length > 1) {
                                    this.ids = mr[1];
                                    continue;
                                }
                                //rtype
                                mr = item.match(/rtype([(\d+)\,]+)/);
                                if (mr != null && mr.length > 1) {
                                    this.rtype = mr[1];
                                    continue;
                                }
                                //bed
                                mr = item.match(/^bed(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.bed = mr[1];
                                    continue;
                                }
                                //room
                                mr = item.match(/^room(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.room = mr[1];
                                    continue;
                                }
                                //bath
                                mr = item.match(/^bath(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.bath = mr[1];
                                    continue;
                                }
                                //sp
                                mr = item.match(/am([(\d+)\,]+)/);
                                if (mr != null && mr.length > 1) {
                                    this.sp = mr[1];
                                    continue;
                                }
                                //htype
                                mr = item.match(/htype([(\d+)\,]+)/);
                                if (mr != null && mr.length > 1) {
                                    this.htype = mr[1];
                                    continue;
                                }
                                //in
                                mr = item.match(/in(\d{8})/);
                                if (mr != null && mr.length > 1) {
                                    this.cin = mr[1];
                                    this.cin = this.cin.substring(0, 4) + "-" + this.cin.substring(4, 6) + "-" + this.cin.substring(6, 8);
                                    continue;
                                }
                                //out
                                mr = item.match(/out(\d{8})/);
                                if (mr != null && mr.length > 1) {
                                    this.out = mr[1];
                                    this.out = this.out.substring(0, 4) + "-" + this.out.substring(4, 6) + "-" + this.out.substring(6, 8);
                                    continue;
                                }
                                //guest
                                mr = item.match(/guest([0-9]{1,2})/);
                                if (mr != null && mr.length > 1) {
                                    this.guest = mr[1];
                                    continue;
                                }
                                //price
                                mr = item.match(/price([0-9]+,[0-9]+)/);
                                if (mr != null && mr.length > 1) {
                                    this.price = mr[1];
                                    continue;
                                }
                                //se
                                //                                mr = item.match(/se(\d)/);
                                //                                if (mr != null && mr.length > 1) {
                                //                                    this.se = mr[1];
                                //                                    continue;
                                //                                }
                                //kw
                                mr = item.match(/kw(.*)/);
                                if (mr != null && mr.length > 1) {
                                    this.kw = decodeURI(mr[1]);
                                    continue;
                                }
                                //ps 
                                mr = item.match(/^ps(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.ps = mr[1];
                                    continue;
                                }
                                //page
                                mr = item.match(/page(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.page = mr[1];
                                    continue;
                                }
                                //sort
                                mr = item.match(/sort(\d+)/);
                                if (mr != null && mr.length > 1) {
                                    this.sort = mr[1];
                                    continue;
                                }
                            }
                        }
                    }

                }
            }
        },
        initFromPage: function () {
            var that = this;
            that.city = $.trim($("#txtCity").val());
            //中英文切换Add
            var MsgTxt = "可输入地址/商圈/地标等";
            if ($.cookie("LN") == "en-US") {
                MsgTxt = "可输入地址/商圈/地标等";
            };
            if ($.trim($("#txtLocation").val()) != MsgTxt) { that.kw = $.trim($("#txtLocation").val()); };
            that.cin = $("#checkin").val().replace("-", "").replace("-", "");
            that.out = $("#checkout").val().replace("-", "").replace("-", "");
            that.guest = $("#numberofguests").val();
            if ($("#sortlist > li:eq(0)").hasClass("select")) { o.sort = 0; }
            if ($("#sortlist > li:eq(1)").hasClass("select")) { o.sort = 3; }
            if ($("#sortlist > li:eq(2)").hasClass("select")) { o.sort = 4; }
            if ($("#sortlist > li:eq(3)").hasClass("select")) { o.sort = 5; }
            // that.sort = $("#sort").val();
            //  that.page = CurrentPage;
            that.rtype = "";
            $("#RoomType :checked").each(function () {
                if (that.rtype == "") that.rtype = $(this).val();
                else that.rtype += "," + $(this).val();
            });
            that.district = "";
            $("#District :checked").each(function () {
                if (that.district == "") that.district = $(this).val();
                else that.district += "," + $(this).val();
            });
            $("#DistrictMore :checkbox:gt(2):checked").each(function () {
                if (that.district == "") that.district = $(this).val();
                else that.district += "," + $(this).val();
            });
            that.htype = "";
            $("#HouseTypeMore input[class=housetype]:checked").each(function () {
                if (that.htype == "") that.htype = $(this).val();
                else that.htype += "," + $(this).val();
            });
            that.sp = "";
            $("#HouseCondition :checked").each(function () {
                if (that.sp == "") that.sp = $(this).val();
                else that.sp += "," + $(this).val();
            });
            $("#HouseConditionMore :checkbox:gt(2):checked").each(function () {
                if (that.sp == "") that.sp = $(this).val();
                else that.sp += "," + $(this).val();
            });
            that.price = $.trim($("#slider_user_min").text().replace("￥", "")) + "," + $.trim($("#slider_user_max").text().replace("￥", "").replace("+", ""));
        },
        //生成URL参数
        toString: function () {
            var hash = "#";
            if (!this.isNullOrEmpty(this.country)) {
                hash += "country" + this.country + "-";
            }
            if (!this.isNullOrEmpty(this.province)) {
                hash += "province" + this.province + "-";
            }
            if (!this.isNullOrEmpty(this.city)) {
                hash += "city" + encodeURI(this.city) + "-";
            }

            if (!this.isNullOrEmpty(this.district)) {
                hash += "district" + encodeURI(this.district) + "-";
            }
            if (!this.isNullOrEmpty(this.area)) {
                hash += "area" + encodeURI(this.area) + "-";
            }
            if (!this.isNullOrEmpty(this.building)) {
                hash += "building" + this.building + "-";
            }
            if (!this.isNullOrEmpty(this.sw)) {
                hash += "sw" + this.sw.replace("-", "_").replace("-", "_") + "-";
            }
            if (!this.isNullOrEmpty(this.ne)) {
                hash += "ne" + this.ne.replace("-", "_").replace("-", "_") + "-";
            }
            if (!this.isNullOrEmpty(this.dis)) {
                hash += "dis" + this.dis + "-";
            }
            if (!this.isNullOrEmpty(this.owner)) {
                hash += "owner" + this.owner + "-";
            }
            if (!this.isNullOrEmpty(this.promotype)) {
                hash += "ptype" + this.promotype + "-";
            }
            if (!this.isNullOrEmpty(this.tag)) {
                hash += "tag" + this.tag + "-";
            }
            if (!this.isNullOrEmpty(this.fuser)) {
                hash += "fuser" + this.fuser + "-";
            }
            if (!this.isNullOrEmpty(this.puser)) {
                hash += "puser" + this.puser + "-";
            }
            if (!this.isNullOrEmpty(this.ids)) {
                hash += "ids" + this.ids + "-";
            }
            if (!this.isNullOrEmpty(this.htype)) {
                hash += "htype" + this.htype + "-";
            }

            if (!this.isNullOrEmpty(this.bed)) {
                hash += "bed" + this.bed + "-";
            }
            if (!this.isNullOrEmpty(this.room)) {
                hash += "room" + this.room + "-";
            }
            if (!this.isNullOrEmpty(this.bath)) {
                hash += "bath" + this.bath + "-";
            }
            if (!this.isNullOrEmpty(this.sp)) {
                hash += "am" + this.sp + "-";
            }
            if (!this.isNullOrEmpty(this.rtype)) {
                hash += "rtype" + this.rtype + "-";
            }
            if (!this.isNullOrEmpty(this.cin) && this.cin != "yymmdd" && this.cin != "yy-mm-dd") {
                hash += "in" + this.cin + "-";
            }
            if (!this.isNullOrEmpty(this.out) && this.out != "yymmdd" && this.out != "yy-mm-dd") {
                hash += "out" + this.out + "-";
            }
            if (!this.isNullOrEmpty(this.guest) && this.guest > 1) {
                hash += "guest" + this.guest + "-";
            }
            if (!this.isNullOrEmpty(this.price) && this.price.indexOf("10,300") == -1) {
                hash += "price" + this.price + "-";
            }
            if (!this.isNullOrEmpty(this.se)) {
                hash += "se" + this.se + "-";
            }
            if (!this.isNullOrEmpty(this.kw)) {
                hash += "kw" + encodeURI(this.kw) + "-";
            }

            //            if (!this.isNullOrEmpty(this.ps)) {
            //                hash += "ps" + this.ps + "-";
            //            }
            if (!this.isNullOrEmpty(this.page) && this.path > 1) {
                hash += "page" + this.page + "-";
            }
            if (!this.isNullOrEmpty(this.sort) && this.sort > 0) {
                hash += "sort" + this.sort + "-";
            }

            //去掉最后的“-”
            if (hash.length > 1) {
                hash = hash.substring(0, hash.length - 1);
            }
            if (this.list == "3") {
                if (!this.isNullOrEmpty(this.path)) {
                    hash += "@" + this.path;
                }
            }
            return hash;
        },
        toStringPath: function () {
            var path = "";
            var hash = "#";
            if (!this.isNullOrEmpty(this.country)) {
                hash += "country" + this.country + "-";
            }
            if (!this.isNullOrEmpty(this.province)) {
                hash += "province" + this.province + "-";
            }
            //添加path,就不需要city
            if (!this.isNullOrEmpty(Youtx.Page.cityHashMap.get(this.city))) { this.path = Youtx.Page.cityHashMap.get(this.city); }
            if (this.isNullOrEmpty(this.path) && !this.isNullOrEmpty(this.city)) {
                path += "city" + encodeURI(this.city) + "-";
            }

            if (!this.isNullOrEmpty(this.district)) {
                path += "district" + encodeURI(this.district) + "-";
            }
            if (!this.isNullOrEmpty(this.area)) {
                path += "area" + encodeURI(this.area) + "-";
            }
            if (!this.isNullOrEmpty(this.building)) {
                path += "building" + this.building + "-";
            }
            if (!this.isNullOrEmpty(this.sw)) {
                path += "sw" + this.sw.replace("-", "_").replace("-", "_") + "-";
            }
            if (!this.isNullOrEmpty(this.ne)) {
                path += "ne" + this.ne.replace("-", "_").replace("-", "_") + "-";
            }
            if (!this.isNullOrEmpty(this.dis)) {
                path += "dis" + this.dis + "-";
            }
            if (!this.isNullOrEmpty(this.owner)) {
                path += "owner" + this.owner + "-";
            }
            if (!this.isNullOrEmpty(this.promotype)) {
                path += "ptype" + this.promotype + "-";
            }
            if (!this.isNullOrEmpty(this.tag)) {
                hash += "tag" + this.tag + "-";
            }
            if (!this.isNullOrEmpty(this.fuser)) {
                path += "fuser" + this.fuser + "-";
            }
            if (!this.isNullOrEmpty(this.puser)) {
                path += "puser" + this.puser + "-";
            }
            if (!this.isNullOrEmpty(this.htype)) {
                path += "htype" + this.htype + "-";
            }

            if (!this.isNullOrEmpty(this.bed)) {
                hash += "bed" + this.bed + "-";
            }
            if (!this.isNullOrEmpty(this.room)) {
                hash += "room" + this.room + "-";
            }
            if (!this.isNullOrEmpty(this.bath)) {
                hash += "bath" + this.bath + "-";
            }
            if (!this.isNullOrEmpty(this.sp)) {
                path += "am" + this.sp + "-";
            }
            if (!this.isNullOrEmpty(this.rtype)) {
                path += "rtype" + this.rtype + "-";
            }
            if (!this.isNullOrEmpty(this.cin) && this.cin != "yy-mm-dd" && this.cin != "yymmdd") {
                path += "in" + this.cin + "-";
            }
            if (!this.isNullOrEmpty(this.out) && this.out != "yy-mm-dd" && this.out != "yymmdd") {
                path += "out" + this.out + "-";
            }
            if (!this.isNullOrEmpty(this.guest) && this.guest > 1) {
                path += "guest" + this.guest + "-";
            }
            if (!this.isNullOrEmpty(this.price) && this.price.indexOf("10,300") == -1) {
                path += "price" + this.price + "-";
            }
            if (!this.isNullOrEmpty(this.se)) {
                path += "se" + this.se + "-";
            }
            if (!this.isNullOrEmpty(this.kw)) {
                path += "kw" + encodeURI(this.kw) + "-";
            }

            //            if (!this.isNullOrEmpty(this.ps)) {
            //                path += "ps" + this.ps + "-";
            //            }
            //            if (!this.isNullOrEmpty(this.page) && this.page >1) {
            //                path += "page" + this.page + "-";
            //            }
            if (!this.isNullOrEmpty(this.sort) && this.sort > 0) {
                path += "sort" + this.sort + "-";
            }

            //去掉最后的“-”
            if (hash.length > 1) {
                hash = hash.substring(0, hash.length - 1);
            }
            if (path.length > 1) {
                path = path.substring(0, path.length - 1);
            }

            return path;
        },
        toFullString: function () {
            var fullPath = "";
            var path = "";

            var pathTest = /(list|map|photo)/i;
            if (!this.isNullOrEmpty(this.path) && !pathTest.test(this.path)) {

                $.cookie("duanzuViewList", o.list, { expires: 1, path: '/', domain: 'youtx.com' });
                path = this.toStringPath();
                if (!this.isNullOrEmpty(path)) {
                    fullPath = this.path + "/" + this.toStringPath() + "/";
                }
                else {
                    fullPath = this.path + "/";
                }
            } else {
                switch (o.list) {
                    case "1": fullPath = "list"; break;
                    case "2": fullPath = "photo"; break;
                    case "3": fullPath = "map"; break;
                    default: fullPath = "list"; break;
                }
                path = this.toStringPath();
                if (!this.isNullOrEmpty(path)) {
                    fullPath += "/" + this.toStringPath() + "/";
                }
                else {
                    fullPath += "/";
                }
            }
            return fullPath;
        },
        isNullOrEmpty: function (str) {
            return Youtx.Utility.isNullOrEmpty(str);
        }
    }
    Youtx.UrlParameter.prototype.constructor = Youtx.UrlParameter;

    //提交时地址参数类,提交时候使用
    //潘友伟,二○一一年十月三十一日
    Youtx.ActionUrlParameter = function (path, country, province, city, district, area, building, sw, ne, dis, owner, tag, fuser, puser, ids, rtype, bed, room, bath, am, htype, intime, out, guest, price, se, kw, ps, page, sort) {
        this.init(path, country, province, city, district, area, building, sw, ne, dis, owner, tag, fuser, puser, ids, rtype, bed, room, bath, am, htype, intime, out, guest, price, se, kw, ps, page, sort);
    }
    Youtx.ActionUrlParameter.prototype = {
        path: "",
        country: null,
        province: null,
        city: "",
        district: "",
        area: null,
        building: null,
        sw: "",
        ne: "",
        dis: null,
        owner: null,
        tag: null,
        fuser: "",
        puser: "",
        ids: null,
        rtype: "",
        bed: null,
        room: null,
        bath: null,
        am: "",
        htype: "",
        intime: "yy-mm-dd",
        out: "yy-mm-dd",
        guest: "1",
        price: "10,300",
        se: "2",
        kw: "",
        ps: "21",
        page: "1",
        sort: null,
        path: null,
        list: "1",
        maptype: "mapa",
        minprice: null,
        maxprice: null,
        promotype: null,
        url: '',
        init: function (path, country, province, city, district, area, building, sw, ne, dis, owner, tag, fuser, puser, ids, rtype, bed, room, bath, am, htype, intime, out, guest, price, se, kw, ps, page, sort) {
            this.path = path;
            this.country = country;
            this.province = province;
            this.city = city;
            this.district = district;
            this.area = area;
            this.building = building;
            this.sw = sw;
            this.ne = ne;
            this.dis = dis;
            this.owner = owner;
            this.tag = tag;
            this.fuser = fuser;
            this.puser = puser;
            this.ids = ids;
            this.rtype = rtype;
            this.bed = bed;
            this.room = room;
            this.bath = bath;
            this.am = am;
            this.htype = htype;
            this.intime = intime;
            this.out = out;
            this.guest = guest;
            this.price = price;
            this.se = se;
            this.kw = kw;
            this.ps = ps;
            this.page = page;
            this.sort = sort;
        },
        ActionToString: function () {
            //            var arr1 = url.split("@");
            //            if (arr1.length > 0) {
            //                //含@城市参数
            //                if (arr1.length == 2) {
            //                    this.path = arr1[1].replace("@");
            //                }
            //                //                    else {
            //                //                        item = arr1[0];
            //                //                        mr = item.match(/(http:\/\/)?([\w\.:]*)\/([-\w]+)(\/?)/i);
            //                //                        if (mr != null && mr.length > 1) {
            //                //                            this.path = mr[3].replace("list", "").replace("photo", "").replace("-", "");
            //                //                            switch ($.cookie("duanzuViewList")) {
            //                //                                case "1": this.list = "1"; break;
            //                //                                case "2": this.list = "2"; break;
            //                //                                case "3": this.list = "3"; break;
            //                //                            }
            //                //                        }
            //            }

            var hash = "";
            if (!this.isNullOrEmpty(this.country)) {
                hash += "country" + this.country + "-";
                this.url += "country=" + this.country;
            }
            if (!this.isNullOrEmpty(this.province)) {
                hash += "province" + this.province + "-";
                this.url += "&province=" + this.province;
            }
            if (!this.isNullOrEmpty(this.city)) {
                hash += "city" + this.city + "-";
                this.url += "&city=" + this.city;
            }
            if (!this.isNullOrEmpty(this.district)) {
                hash += "district" + this.district + "-";
                this.url += "&district=" + this.district;
            }
            if (!this.isNullOrEmpty(this.area)) {
                hash += "area" + this.area + "-";
                this.url += "&area=" + this.area;
            }
            if (!this.isNullOrEmpty(this.building)) {
                hash += "building" + this.building + "-";
                this.url += "&building=" + this.building;
            }
            if (!this.isNullOrEmpty(this.sw.replace(",", ""))) {
                hash += "sw" + this.sw + "-";
                this.url += "&lat1,lng1=" + this.sw;
            }
            if (!this.isNullOrEmpty(this.ne.replace(",", ""))) {
                hash += "ne" + this.ne + "-";
                this.url += "&lat2,lng2=" + this.ne;
            }
            if (!this.isNullOrEmpty(this.dis)) {
                hash += "dis" + this.dis + "-";
                this.url += "&distance=" + this.dis;
            }
            if (!this.isNullOrEmpty(this.owner)) {
                hash += "owner" + this.owner + "-";
                this.url += "&owner=" + this.owner;
            }
            if (!this.isNullOrEmpty(this.tag)) {
                hash += "tag" + this.tag + "-";
                this.url += "&tag=" + this.tag;
            }
            if (!this.isNullOrEmpty(this.fuser)) {
                hash += "fuser" + this.fuser + "-";
                this.url += "&fuserid=" + this.fuser;
            }
            if (!this.isNullOrEmpty(this.puser)) {
                hash += "puser" + this.puser + "-";
                this.url += "&puserid=" + this.puser;
            }
            if (!this.isNullOrEmpty(this.ids)) {
                hash += "ids" + this.ids + "-";
                this.url += "&houseids=" + this.ids;
            }
            if (!this.isNullOrEmpty(this.rtype)) {
                hash += "rtype" + this.rtype + "-";
                this.url += "&roomtype=" + this.rtype;
            }
            if (!this.isNullOrEmpty(this.bed)) {
                hash += "bed" + this.bed + "-";
                this.url += "&bednum=" + this.bed;
            }
            if (!this.isNullOrEmpty(this.room)) {
                hash += "room" + this.room + "-";
                this.url += "&bedroomnum=" + this.room;
            }
            if (!this.isNullOrEmpty(this.bath)) {
                hash += "bath" + this.bath + "-";
                this.url += "&bathnum=" + this.bath;
            }
            if (!this.isNullOrEmpty(this.am)) {
                hash += "am" + this.am + "-";
                this.url += "&amenities=" + this.am;
            }
            if (!this.isNullOrEmpty(this.htype)) {
                hash += "htype" + this.htype + "-";
                this.url += "&housetype=" + this.htype;
            }
            if (!this.isNullOrEmpty(this.intime) && this.intime != "yy-mm-dd" && this.intime != "yymmdd") {
                hash += "intime" + this.intime + "-";
                this.url += "&checkin=" + this.intime;
            }
            if (!this.isNullOrEmpty(this.out) && this.out != "yy-mm-dd" && this.out != "yymmdd") {
                hash += "out" + this.out + "-";
                this.url += "&checkout=" + this.out;
            }
            if (!this.isNullOrEmpty(this.guest)) {
                hash += "guest" + this.guest + "-";
                this.url += "&livemannum=" + this.guest;
            }
            if (!this.isNullOrEmpty(this.price)) {
                hash += "price" + this.price + "-";
                this.url += "&dayprice=" + this.price;
            }
            if (!this.isNullOrEmpty(this.se)) {
                hash += "se" + this.se + "-";
                // this.url += "&se=" + this.se;
            }
            if (!this.isNullOrEmpty(this.kw)) {
                hash += "kw" + this.kw + "-";
                this.url += "&keyword=" + this.kw;
            }
            if (!this.isNullOrEmpty(this.ps)) {
                hash += "ps" + this.ps + "-";
                this.url += "&pagesize=" + this.ps;
            }
            if (!this.isNullOrEmpty(this.page)) {
                hash += "page" + this.page + "-";
                this.url += "&page=" + this.page;
            }
            if (!this.isNullOrEmpty(this.sort)) {
                hash += "sort" + this.sort + "-";
                this.url += "&sortby=" + this.sort;
            }
            if (hash.length > 1) {
                hash = hash.substring(0, hash.length - 1);
            }
            hash += "@" + this.path;
            return hash;
        },
        isNullOrEmpty: function (str) {
            return Youtx.Utility.isNullOrEmpty(str);
        }
    }
    Youtx.ActionUrlParameter.prototype.constructor = Youtx.ActionUrlParameter;


    //自动下拉提示AutoComplete
    /*
    params = {
    inputId:"文本框id,必填",
    parentId:"下拉菜单div父div的Id,可选，默认添加到body上",
    className:"下拉菜单的样式,可选",
    firstSelected:"下拉提示第一个是否被选中,true,false,默认true",
    userIe6bug:"是否屏蔽ie6bug,true,false,默认false"
    }
    */
    Youtx.AutoComplete = function (params) {
        this.init(params);
    }
    Youtx.AutoComplete.prototype = {
        input: null,
        popup: null,
        //data: null,
        current: -1,
        defaultValue: "",
        parentDoc: null,
        firstSelected: true,
        userIe6bug: false,
        finshFun: function () {
        },
        init: function (params) {
            var that = this;
            that.input = document.getElementById(params.inputId);
            that.popup = document.createElement("div");
            if (!Youtx.Utility.isNullOrEmpty(params.className)) {
                that.popup.className = params.className;
            }

            that.data = null;
            if (!Youtx.Utility.isNullOrEmpty(params.parentId)) {
                that.parentDoc = document.getElementById(params.parentId);
            } else {
                that.parentDoc = document.body;
            }

            that.parentDoc.appendChild(this.popup);

            that.addEvent(document.body, "click", function () {
                that.popup.style.display = "none";
            })

            if (params.firstSelected === false) {
                that.firstSelected = false;
            }
            if (params.userIe6bug === true) {
                this.userIe6bug = true;
            }
        },
        hide: function () {
            this.popup.style.display = "none";
            this.popup.innerHTML = "";
        },
        show: function (data, isLetter) {

            this.isFinsh = false;
            this.popup.innerHTML = "";

            if (this.userIe6bug === true) {
                this.popup.innerHTML = '<iframe scrolling="no" frameborder="0" class="iframeie6"></iframe>'
            }
            var inputValue = this.input.value.toString();
            this.defaultValue = inputValue;

            var myfdl = document.createElement("dl");
            var myfdt = document.createElement("dt");
            //中英文切换Add
            if ($.cookie("LN") == "en-US") {
                myfdt.innerHTML = "请输入中文/拼音或↑↓键选择";
            }
            else {
                myfdt.innerHTML = "请输入中文/拼音或↑↓键选择";
            }
            myfdl.appendChild(myfdt);

            var aliasName, englishName, abbr;
            var myfdd;
            var rex;

            for (var i = 0; i < data.length; i++) {
                aliasName = data[i].aliasName;
                englishName = data[i].englishName;
                abbr = data[i].abbr;

                myfdd = document.createElement("dd");
                myfdd.title = aliasName;
                myfdd.index = i;

                if (isLetter) {
                    rex = new RegExp('^' + inputValue, 'i');
                    if (rex.test(englishName)) {
                        englishName = englishName.replace(rex, '<span class="pink">' + rex.exec(englishName) + '</span>');
                    }
                    else if (inputValue.length > 1) {
                        if (abbr == inputValue.toUpperCase()) {
                            var k = 0;
                            var l;
                            var result = '';
                            for (var j = 0; j < englishName.length; j++) {
                                l = englishName.substr(j, 1);
                                if (l == abbr.substr(k, 1)) {
                                    result += '<span class="pink">' + l + '</span>';

                                    k++;
                                    if (k == abbr.length) {
                                        result += englishName.substring(j + 1);
                                        break;
                                    }
                                }
                                else {
                                    result += l;
                                }
                            }
                            englishName = result;
                        }
                    }
                    myfdd.innerHTML = '<span class="cityhy">' + aliasName + '</span><span class="citypy">' + englishName + '</span>';
                }
                else {
                    aliasName = aliasName.replace(inputValue, '<span class="pink">' + inputValue + '</span>');
                    myfdd.innerHTML = '<span class="cityhyword">' + aliasName + '</span>';
                }

                myfdl.appendChild(myfdd);
            }

            this.popup.appendChild(myfdl);
            this.popup.style.display = "block";
            this.parentDoc.style.display = "block";
            this.initEvent();
        },
        stopDefaultEvent: function (event) {
            if (event.preventDefault) {
                event.preventDefault();
            } else {
                //IE中阻止函数器默认动作的方式
                window.event.returnValue = false;
            }
            return false;
        },
        //事件
        addEvent: function (element, type, fn) {
            if (document.addEventListener) {
                element.addEventListener(type, fn, false);
            } else if (document.attachEvent) {
                element.attachEvent('on' + type, fn);
            }
        },
        initEvent: function () {
            var that = this;
            var els = that.popup.getElementsByTagName("dd");

            if (that.firstSelected) {
                if (els.length > 0) {
                    els[0].className = "on";
                    that.current = 0;
                }
            }

            var clearListStyle = function () {
                for (var i = 0; i < els.length; i++) {
                    els[i].className = "";
                }
            }

            var inputTextValue = function (key) {
                that.input.value = key;
            }

            that.input.onkeydown = function (event) {
                event = event || window.event;

                if (event.keyCode == 40) {
                    clearListStyle();
                    //Down
                    that.current++;
                    if (that.current >= els.length) {
                        that.current = -1;
                        inputTextValue(that.defaultValue)
                    } else {
                        els[that.current].className = "on";
                        inputTextValue(els[that.current].title.toString())
                    }


                    that.stopDefaultEvent(event);

                } else if (event.keyCode == 38) {
                    //UP
                    clearListStyle();
                    that.current--;
                    if (that.current <= -1) {
                        that.current = els.length;
                        inputTextValue(that.defaultValue)
                    } else {
                        els[that.current].className = "on";
                        inputTextValue(els[that.current].title.toString())
                    }
                } else if (event.keyCode == 13) {
                    //Enter
                    if (that.current > -1 && that.current < els.length) {
                        inputTextValue(els[that.current].title.toString());
                    }
                    that.popup.style.display = "none";
                    that.current = -1;
                    that.finshFun();
                }
            }

            for (var i = 0; i < els.length; i++) {
                els[i].onmouseover = function (event) {
                    clearListStyle();
                    this.className = "on";
                    that.current = this.index;
                }
                els[i].onclick = function (event) {
                    that.current = -1;
                    inputTextValue(this.title.toString());
                    that.popup.style.display = "none";
                }
            }
        }
    }
    Youtx.AutoComplete.prototype.constructor = Youtx.AutoComplete;

    /*
    HashMap
    */
    Youtx.HashMap = function () {
        //大小
        this._size = 0;
        //对象
        this._entry = new Object();
    }
    Youtx.HashMap.prototype = {
        //添加
        add: function (key, value) {
            if (!this.containsKey(key)) {
                this._size++;
            }
            this._entry[key] = value;
        },
        //获取
        get: function (key) {
            return this.containsKey(key) ? this._entry[key] : null;
        },
        //移除
        remove: function (key) {
            if (this.containsKey(key) && (delete this._entry[key])) {
                this._size--;
            }
        },
        //通过key查看是否已经存在
        containsKey: function (key) {
            return (key in this._entry);
        },
        //查看是否还有该值
        containsValue: function (value) {
            for (var prop in this._entry) {
                if (this._entry[prop] == value) {
                    return true;
                }
            }
            return false;
        },
        //大小
        size: function () {
            return this._size;
        },
        //清空
        clear: function () {
            this._size = 0;
            this._entry = new Object();
        },
        //取得所有值
        values: function () {
            var values = new Array();
            for (var prop in this._entry) {
                values.push(this._entry[prop]);
            }
            return values;
        }
    }
    Youtx.HashMap.prototype.constructor = Youtx.HashMap;

    window.Youtx = Youtx;
    window.Youtx.Utility = Youtx.Utility;
})()