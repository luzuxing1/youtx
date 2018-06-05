(
function () {
    var UploadImage = {}
    //构造函数
    UploadImage = function (defaultIcon) {
        this.init(defaultIcon);
    }

    var PictureModeTxt = "只允许上传.jpeg/.jpg/.png/.gif的图片。请选择合适的图片上传。";
    var OutTimeTxt = "操作已超时，原始图片上传失败！";
    var PictureTooBig = "您的图片超过限制，请上传3MB以内的照片";
    var OutTimeJieQu = "操作已超时，图片截取失败！";
    var TuXiangSaveOk = "头像保存成功！";
    var TuXiangSaveErrror = "头像保存失败，请重新尝试";
    var UnknownErrorTxt = "头像保存过程中发生了未知原因的错误";
    var DeleteConfirmTxt = "您确定要删除目前的头像吗？";
    var TuXiangDeleted = "头像已删除！";
    var DeleteErrorTxt = "头像删除失败，请重新尝试";
    if ($.cookie("LN")=="en-US") {
        PictureModeTxt = "只允许上传.jpeg/.jpg/.png/.gif的图片。请选择合适的图片上传。";
        OutTimeTxt = "操作已超时，原始图片上传失败！";
        PictureTooBig = "您的图片超过限制，请上传3MB以内的照片";
        OutTimeJieQu = "操作已超时，图片截取失败！";
        TuXiangSaveOk = "头像保存成功！";
        TuXiangSaveErrror = "头像保存失败，请重新尝试";
        UnknownErrorTxt = "头像保存过程中发生了未知原因的错误";
        DeleteConfirmTxt = "您确定要删除目前的头像吗？";
        TuXiangDeleted = "头像已删除！";
        DeleteErrorTxt = "头像删除失败，请重新尝试";
    }
    UploadImage.names = new Array();
    UploadImage.prototype = {
        imageCropper: null,
        imgurl: "",
        imgTemp: null,
        checkTimeOut: 0,
        defaultIcon: '',
        sid: '',
        delay: function (obj, func, time) {
            window.delayFunc = function () {
                func.call(obj);
            }
            setTimeout('delayFunc()', time);
        },
        init: function (defaultIcon) {
            this.initPage(defaultIcon);
        },
        initPage: function (defaultIcon) {
            var that = this;
            this.defaultIcon = defaultIcon;
            $("#iconimage").change(function () {
                var path = $.trim($("#iconimage").val());
                if (path != "") {
                    path = path.substr(path.lastIndexOf(".") + 1, path.length - path.lastIndexOf(".")).toLowerCase();
                    if (path != "jpeg" && path != "jpg" && path != "png" && path != "gif") {
                        alert(PictureModeTxt);
                        document.getElementById("formimg").reset();
                        return false;
                    }
                    myCookie.deleteCookie("avatar_iconimage");
                    myCookie.deleteCookie("avatar_cropimage");
                    $("#formimg").submit();
                    that.GetOriginalImgUrl();
                }
            });
            $("#cboxOverlay").click(function () {
                that.closeImgDiv();
            });
            $("#spClose").click(function () {
                that.closeImgDiv();
            });
            $("#btnCancelCrop").click(function () {
                that.closeImgDiv();
            });
            $("#submitSetting").click(function () {
                $("#age").val(Math.random());
                $("#imgnew").submit();
                that.GetCropedImgUrl();
            });
            $('#deleteimg').click(function () {
                that.delfaceImg();
            });
        },
        closeImgDiv: function () {
            var that = this;
            imageCropper = null;
            that.imgTemp = null;
            $("#divImgCrop").hide();
            $("#cboxOverlay").hide();
            document.getElementById("formimg").reset();
            $("#CroperContainer").html("<img alt='' id='imgBackground' src='" + that.defaultIcon + "' />");
            $("#single-uploadarea").show();
            $("#single-uploadarea1").hide();
        },
        GetOriginalImgUrl: function () {
            var that = this;
            if (that.checkTimeOut == 0) {
                $("#single-uploadarea").hide();
                $("#single-uploadarea1").show();
            }
            that.imgurl = myCookie.getCookie("avatar_iconimage");

            if (that.imgurl == "") {
                if (that.checkTimeOut > 600) {
                    alert(OutTimeTxt);
                    that.checkTimeOut = 0;
                    document.getElementById("formimg").reset();
                    $("#single-uploadarea").show();
                    $("#single-uploadarea1").hide();
                    return false;
                }
                //window.setTimeout(self.GetOriginalImgUrl, 200);
                this.delay(this, this.GetOriginalImgUrl, 200);
                // $.delay(200).GetOriginalImgUrl();
                that.checkTimeOut++;
                return false;
            } else {
                that.checkTimeOut = 0;
                if (that.imgurl == "-1" || that.imgurl == "302" || that.imgurl == -1 || that.imgurl == 302) {
                    alert(PictureTooBig);
                    that.checkTimeOut = 0;
                    document.getElementById("formimg").reset();
                    $("#single-uploadarea").show();
                    $("#single-uploadarea1").hide();
                    return false;
                } else {
                    $('#ImgPath').val(that.imgurl);
                    if (that.imgTemp == null) {
                        that.imgTemp = new Image();
                    }
                    that.imgTemp.src = that.imgurl;

                    that.initCroper();
                }
                myCookie.deleteCookie("avatar_iconimage");
            }
        },
        initCroper: function () {
            var that = this;
            if ((that.imgTemp.readyState != undefined && that.imgTemp.readyState != "complete") || (that.imgTemp.complete != undefined && that.imgTemp.complete != true)) {
                //window.setTimeout(that.initCroper, 500);
                this.delay(this, this.initCroper, 200);
                return false;
            }
            if (that.imgTemp.width >= 225 && that.imgTemp.height >= 225) {
                imageCropper = $('#imgBackground').imageCropper({
                    width: 225,
                    height: 225,
                    imagePath: that.imgTemp.src,
                    imgWidth: that.imgTemp.width,
                    imgHeight: that.imgTemp.height,
                    cropWorkAreaSize: { width: 249, height: 249 },
                    callbacks: {
                        dragging: that.updateStatus,
                        zoomed: that.updateStatus
                    }
                });
            } else {
                imageCropper = $('#imgBackground').imageCropper({
                    width: 225,
                    height: 225,
                    center: true,
                    imagePath: that.imgTemp.src,
                    imgWidth: that.imgTemp.width,
                    imgHeight: that.imgTemp.height,
                    cropWorkAreaSize: { width: 249, height: 249 },
                    callbacks: {
                        dragging: that.updateStatus,
                        zoomed: that.updateStatus
                    }
                });
            }
            that.updateStatus();
            $("#cboxOverlay").show();
            $("#divImgCrop").show();
        },
        updateStatus: function () {
            var that = this;
            $('#ImgPath').val(imageCropper.settings.imagePath);
            $('#ZoomLevel').val(imageCropper.settings.zoomLevel);
            $('#Left').val(imageCropper.settings.left);
            $('#Top').val(imageCropper.settings.top);
            $('#Width').val(imageCropper.settings.width);
            $('#Height').val(imageCropper.settings.height);
        },
        GetCropedImgUrl: function () {
            var that = this;
            var imgurl = myCookie.getCookie("avatar_cropimage");
            if (imgurl == "") {
                if (that.checkTimeOut > 50) {
                    alert(OutTimeJieQu);
                    that.checkTimeOut = 0;
                    document.getElementById("formimg").reset();
                    $("#single-uploadarea").show();
                    $("#single-uploadarea1").hide();
                    return false;
                }
                //window.setTimeout("myobj.names['" + this.id + "'].GetCropedImgUrl();", 200);
                this.delay(this, this.GetCropedImgUrl, 200);
                that.checkTimeOut++;
                return false;
            } else {
                that.checkTimeOut = 0;

                document.getElementById("formimg").reset();
                $("#imgIcon").attr("src", imgurl);
                //================//
                $.ajax({
                    url: "/profile/Passport/Interface/UploadIcon.aspx",
                    type: "POST",
                    data: "imgurl=" + imgurl,
                    success: function (data, textStatus, jqXHR) {
                        if (data == "success") {
                            alert(TuXiangSaveOk);
                            myCookie.deleteCookie("avatar_cropimage");
                        } else {
                            alert(TuXiangSaveErrror);
                        }
                        that.closeImgDiv();
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        if (errorThrown == "Unknown") {
                            alert(UnknownErrorTxt);
                        } else {
                            alert(errorThrown);
                        }
                        that.closeImgDiv();
                    }
                });
            }
        },
        delfaceImg: function () {
            var that = this;
            if (confirm(DeleteConfirmTxt)) {
                $.ajax({
                    url: "/profile/Passport/Interface/UploadIcon.aspx",
                    type: "POST",
                    data: null,
                    success: function (data, textStatus, jqXHR) {
                        if (data == "success") {
                            alert(TuXiangDeleted);
                            $("#imgIcon").attr("src", that.defaultIcon);
                            $("#iconimage").val("");
                        } else {
                            alert(DeleteErrorTxt);
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        if (errorThrown == "Unknown") {
                            alert(UnknownErrorTxt);
                        } else {
                            alert(errorThrown);
                        }
                    }
                });
            }
        }
    }
    Youtx.UploadImage = UploadImage;
}
)()  