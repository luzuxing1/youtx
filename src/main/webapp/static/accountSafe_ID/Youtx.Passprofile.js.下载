(function () {
    var OtherMobile = {

}


//构造函数
OtherMobile = function (userid) {
    this.init(userid);
}
OtherMobile.prototype = {
    userid: 0,
    Mobile: 0,
    b: false,
    lefttime: 0,
    //初始化
    init: function (userid, lefttime) {
        this.userid = userid;
        this.lefttime = 60;
    },
    //删除电话和联系人，并重新加载
    deleteMobile: function (OtherMobileID) {
        $.ajax({
            type: 'POST',
            async: false,
            url: '/profile/Ajax/AjaxPassport.aspx',
            data: 'type=DelModelByID&UserID=' + this.userid + '&OtherMobileID=' + OtherMobileID + '&' + Math.random(),
            success: function (data) {
                $('#OtherMobile').html(data);
            },
            error: function (err) {

            }
        });
    },

    //添加电话和联系人，并重新加载
    AddModel: function (MobileNumber, MobileMan, CountryID) {
        $.ajax({
            type: 'POST',
            async: false,
            url: '/profile/Ajax/AjaxPassport.aspx',
            data: 'type=AddModel&MobileNumber=' + MobileNumber + '&MobileMan=' + MobileMan + '&CountryID=' + CountryID + '&UserID=' + this.userid + '&' + Math.random(),
            success: function (data) {
                $('#OtherMobile').html(data);
            },
            error: function (err) {

            }
        });
    },

    //更新电话或联系人
    UpdateModel: function (MobileID, MobileNumber, MobileMan, CountryID) {
        $.ajax({
            type: 'POST',
            async: false,
            url: '/profile/Ajax/AjaxPassport.aspx',
            data: 'type=UpdModel&MobileID=' + MobileID + '&MobileNumber=' + MobileNumber + '&MobileMan=' + MobileMan + '&CountryID=' + CountryID + '&UserID=' + this.userid + '&' + Math.random(),
            success: function (data) {
                $('#OtherMobile').html(data);
            },
            error: function (err) {

            }
        });
    }
}
Youtx.OtherMobile = OtherMobile;
})()