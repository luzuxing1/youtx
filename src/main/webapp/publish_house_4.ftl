<!DOCTYPE html>
<!-- saved from url=(0045)http://www.youtx.com/room/newfourplan/324548/ -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="${base}/static/publish_house_4/countpv" width="0" height="0"><script charset="utf-8" src="${base}/static/publish_house_4/v.js.下载"></script><script type="text/javascript" async="" src="${base}/static/publish_house_4/load.min.js.下载"></script><script src="${base}/static/publish_house_4/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="${base}/static/publish_house_4/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
    <link href="${base}/static/publish_house_4/public.css" rel="stylesheet" type="text/css"> 
    
    <script type="text/javascript">
        var userid1;
        $(function () {
            userid1 = "2600363";
        });
    </script>
    
    <title>我要出租-填写价格和交易规则-游天下</title>
    <link href="${base}/static/publish_house_4/DescriptionenNew.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        ///////////////
        var isChineseHouse="True";
        var currencyName="CNY";
        var cancleDayEn="";
        var punishmentEn="";
        ///////////////
        var setPrices = [];
        var tuoguanFlag = "0";
        var houseId1 = "324548";
        var dayPrices = "";
        var liveMoreHuman = "4";
        var flag1;
        var isture = true;
        var clickFlag = 0;
          var liveInTimes="14";
        var liveInTimesOut="24";
          var liveOutTimes="12";
        var currencyPhic=(isChineseHouse=="True")?"￥":"$";
        $(function () {

     $("#selRuZhuTime").change(function(){
     $("#selRuZhuTimeafter").html("");
          var num=$("#selRuZhuTime").val();
          var sb;
          for (var i = Number(num)+1; i <= 24; i++) {
              sb="<option value="+i+">"+i+":00</option>"
              $("#selRuZhuTimeafter").append(sb);
          }
        });

            //////////////////////////////////////////////////
            if(isChineseHouse=="False"){
                currencyName="USD";
                $("#selRMB").html("<option value='USD'>美元</option>");
                $("[class='RoomSituationTxtInput112 RsTi112']").attr("class","RoomSituationTxtInput112 RsTi113");
                $("span[currencySymbol='RMBUSD']").text("$");
                $("#putongPolicyTd").remove();
                $("#tdCancelationPolicy").show();
                CanclePolicy();
                $("[language='en']").remove();//移除是否接受外宾
                $(".RoomSituationTxt img").css("display","none");
            }else{
                if(false&&"2"=="34")
            {
            currencyPhic="$";
            currencyName="USD";
             $("#selRMB").html("<option value='USD'>美元</option>");
              $("[class='RoomSituationTxtInput112 RsTi112']").attr("class","RoomSituationTxtInput112 RsTi113");
            $("span[currencySymbol='RMBUSD']").text("$");
            }else{
                currencyName="CNY";
                }
            }

            //////////////////////////////////////////////////
            //页面初始化
            ///////
//            if ($("#dayPrice1").val()=="0"||$("#dayPrice1").val()=="") {
//                  $("#fullweekprice").text("0");
//                  $("#fullmonthprice").text("0");
//              }


            //////


            if (Number(tuoguanFlag)>0) {
                $("#tuoguanPolicy").show();
                $("#tuoguanPolicyTd").show();
                $("#tranPolicy").hide();
                $("#putongPolicyTd").hide();
                tuoGuanInit();
            } else {
                $("#tuoguanPolicy").hide();
                $("#tuoguanPolicyTd").hide();
                $("#tranPolicy").show();
                $("#putongPolicyTd").show();
                initializePage();
            }
            if ("False" == "False") {//五步发布
                $("#submit_buttonNew").hide();
                $("#RoomNextBtn").show();
                $("#RoomNextBtnPrev").show();
                $("#RoomNextBtnNext").show();

            } else {//四步发布
                $("#RoomNextBtn").hide();
                $("#submit_buttonNew").show();
                //$("#submit_buttonNew").attr("class", "RoomNextBtn").show();
                $("#btnSave").show();
            }
            if (!$("#radio1").attr("checked")) {
                //默认不提供发票
                $("#radio2").attr("checked", "checked");
            }
//            if ($("#selPeopleNum option:selected").val() == "0") {
//                $("#kerenAccount").attr("disabled", "disabled");
//            }
            //===托管交易规则===
            $("#tuoguanPolicy").change(function () {
                tuoGuanPolicy();
            });
            //===托管取消天数===
            $("#tuoguanCancelDay").change(function () {
                //获得取消交易的天数
                var selDay = $("#tuoguanCancelDay option:selected").val();
                $("#tuoguanX").text(selDay);
            });
              $("#dingjin").change(function(){
                getDingjinPenc($("#tranPolicy option:selected").val());
            });
            //===交易规则===
            $("#tranPolicy").change(function () {
                if(isChineseHouse=="True"){
                    getTansPolicy();//国内房源交易规则
                }else if(isChineseHouse=="False"){
                    CanclePolicy();//国外房源交易规则
                }
            });
            //===点击下一步保存===
            $("#RoomNextBtnNext").click(function () {
                if (clickFlag == 0) {
                    clickFlag = 1;
                    $("#RoomNextBtnNext").css("background", "url('http://js.youtx.com/images/PaymentBtn2.gif') repeat scroll 0 -68px");
                    if (setPrices.length > 0)
                        setPrices.length = 0;
                    //将设置的价格添加到数组中
                    setPrices[0] = getControl("dayPrice1").value;
                    setPrices[1] = getControl("weekPrice1").value*7;
                    setPrices[2] = getControl("monthPrice1").value*30;
                    setPrices[3] = getControl("weekenPrice1").value;
                    setPrices[4] = getControl("qingjieAccount").value;
                    setPrices[5] = getControl("kerenAccount").value;
                    setPrices[6] = getControl("yajinAccount").value;
                    flag1 = "false";
                    saveData();
                    $("#RoomNextBtnNext").css("background", "url('http://js.youtx.com/images/PaymentBtn2.gif') repeat scroll 0 1px");
                }
            });
            //===点击保存===
            $("#btnSave").click(function () {
                if (clickFlag == 0) {
                    clickFlag = 1;
                    if (setPrices.length > 0)
                        setPrices.length = 0;
                    //将设置的价格添加到数组中
                    setPrices[0] = getControl("dayPrice1").value;
                    setPrices[1] = getControl("weekPrice1").value*7;
                    setPrices[2] = getControl("monthPrice1").value*30;
                    setPrices[3] = getControl("weekenPrice1").value;
                    setPrices[4] = getControl("qingjieAccount").value;
                    setPrices[5] = getControl("kerenAccount").value;
                    setPrices[6] = getControl("yajinAccount").value;
                    flag1 = "true";
                    saveData();
                }
            });
            $("#selCancelDay").change(function () {
                $("#X").text($("#selCancelDay option:selected").val());
                $("#imgShow").attr("title", "假设租客入住的日期是12月20日，则租客在12月" + (20 - Number($("#selCancelDay option:selected").val())) + "日中午12:00之前取消订单，不会向您支付违约金。在此后取消订单，按照您设定的交易规则扣除租客订金。");
            });
            //===点击上一步按钮===
            $("#RoomNextBtnPrev").click(function () {
                window.location = "/room/newthreeplan/" + houseId1;
            });
            $("#dayPrice1").focus(function(){
                $("#choosePrice").hide();
                $("#dayPriceTip").show();
            });
            var dayoldprice = $("#dayPrice1").val();
            //日价格失去焦点事件
            $("#dayPrice1").blur(function () {
                $("#dayPriceTip").hide();
                if($.trim($("#dayPrice1").val())!=""){
                 if(dayoldprice!= $("#dayPrice1").val()){
                if (Number($("#dayPrice1").val())>0 && isPositiveNum($("#dayPrice1").val())) {
                    dayoldprice=$("#dayPrice1").val();
                
                    var price;
                    if (isPositiveNum($("#dayPrice1").val()) == false) {
                        price = 0;
                    } else {
                        price = $("#dayPrice1").val();
                    }
                    var currencySymbol="￥";
                    currencySymbol=(isChineseHouse=="True"&&(true||"2"!="34"))?"<span currencySymbol='RMBUSD'>￥</span>":"<span currencySymbol='RMBUSD'>$</span>";
                  // $("#weekPrice1").val(parseInt(Number(price) * 7));
                   // $("#monthPrice1").val(parseInt(Number(price) * 30));
                   $("#weekPrice1").val(parseInt(Number(price)));
                   $("#monthPrice1").val(parseInt(Number(price)));

                    //var weekPr=Number((getControl("dayPrice1").value))*7;
                    var weekPr=Number((getControl("dayPrice1").value));
                    var zhekouweekprice=parseFloat((Number(getControl("weekPrice1").value)/weekPr)*10);
                    if((zhekouweekprice<8 || zhekouweekprice<8.00)){
                    $("#bjrightAD").attr("class","bjrightAD");
                     $("#bjwrongAD").attr("class","bjwrongAD");
                     $("#jiaru").attr("class","greenAD09");
                     $("#huode").attr("class","");
                     $("#huode").html("未获得：");
                     $("#jiaru").html("已加入：");
                    }else {
                    $("#bjwrongAD").attr("class","bjwrongAD");
                    $("#bjrightAD").attr("class","bjwrongAD");
                    $("#huode").attr("class","");
                    $("#jiaru").attr("class","");
                    $("#huode").html("未获得：");
                    $("#jiaru").html("未加入：");
                    }
                    if(zhekouweekprice<=9.9||zhekoumonthprice<=9.90){
                      $("#bjwrongAD").attr("class","bjrightAD");
                      $("#huode").attr("class","greenAD09");
                      $("#huode").html("已获得：");
                    }else if(zhekouweekprice>8.00||zhekouweekprice>8){
                      $("#bjwrongAD").attr("class","bjwrongAD");
                      $("#bjrightAD").attr("class","bjwrongAD");
                      $("#huode").attr("class","");
                      $("#jiaru").attr("class","");
                      $("#huode").html("未获得：");
                      $("#jiaru").html("未加入：");
                    }
                    $("#tishi_jiage").show();
                   // $("#avgDayPrice1").html("日均价<span class='ColorPink'>"+currencyPhic+dayoldprice+"</span>（即<span class='ColorPink'>"+zhekouweekprice.toFixed(2)+"折</span>）").show();
                    $("#avgDayPrice1").html("每晚（<span class='ColorPink'>"+zhekouweekprice.toFixed(2)+"折</span>）").show();
                  //  if(Number(price)/30<=Number($("#weekPrice1").val())/7){
                    if(Number($("#weekPrice1").val())<=Number(price)){
                    //var monthPr=Number(getControl("dayPrice1").value)*30;
                    var monthPr=Number(getControl("dayPrice1").value);
                    var zhekoumonthprice=parseFloat((Number(getControl("monthPrice1").value)/monthPr)*10);
                    if((zhekoumonthprice<8 || zhekoumonthprice<8.00)){
                     $("#bjrightAD").attr("class","bjrightAD");
                            $("#bjwrongAD").attr("class","bjwrongAD");
                            $("#jiaru").attr("class","greenAD09");
                            $("#huode").attr("class","");
                            $("#huode").html("未获得：");
                            $("#jiaru").html("已加入：");
                    }else {
                    $("#bjwrongAD").attr("class","bjwrongAD");
                    $("#bjrightAD").attr("class","bjwrongAD");
                    $("#huode").attr("class","");
                    $("#jiaru").attr("class","");
                    $("#huode").html("未获得：");
                    $("#jiaru").html("未加入：");
                    }
                    if(zhekoumonthprice<=9.9||zhekoumonthprice<=9.90){
                      $("#bjwrongAD").attr("class","bjrightAD");
                      $("#huode").attr("class","greenAD09");
                      $("#huode").html("已获得：");
                    }else if(zhekoumonthprice>8.00||zhekoumonthprice>8){
                      $("#bjwrongAD").attr("class","bjwrongAD");
                      $("#bjrightAD").attr("class","bjwrongAD");
                      $("#huode").attr("class","");
                      $("#jiaru").attr("class","");
                      $("#huode").html("未获得：");
                      $("#jiaru").html("未加入：");
                    }
                   $("#tishi_jiage").show();
                   // $("#avgDayPrice2").html("日均价<span class='ColorPink'>"+currencyPhic+dayoldprice+"</span>（即<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                   $("#avgDayPrice2").html("每晚（<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                    }else{
                    $("#tishi_jiage").hide();
                    $("#monthMinPrice").html("周价不能高于日价").show();
                    //$("#avgDayPrice2").hide();
                    $("#avgDayPrice2").show().text("每晚");
                    }
                    $("#weekMinPrice").hide();
                    $("#monthMinPrice").hide();
                    weekPriceFocusOut=$("#weekPrice1").val();
                }else{
                   $("#choosePrice").show().text("日价格必须是大于0的整数!");
                }
                }
                }else{
                   $("#choosePrice").show().text("请设置日价格!");
                }
            });

            //周价格失去焦点事件
            var bol_WeekPrice=true;//标识周价格是否合法的变量，判断月价格是否合法的时候会用到
            var weekPriceFocusIn=$("#weekPrice1").val();
            var weekPriceFocusOut=$("#weekPrice1").val();
            $("#weekPrice1").focus(function(){
                weekPriceFocusIn=$("#weekPrice1").val();
            });
            $("#weekPrice1").blur(function(){
            var monthPriceOld=$.trim($("#monthPrice1").val());  //鼠标离开周价时验证月价时取月价的值
            if(($.trim($("#weekPrice1").val())!="" && isPositiveNum($.trim($("#weekPrice1").val()))) || $.trim($("#weekPrice1").val())==""){
                
                weekPriceFocusOut=$("#weekPrice1").val();
                var weekPrice1;
                if (isPositiveNum($("#weekPrice1").val()) == false) {
                    weekPrice1 = 0;
                } else {
                    weekPrice1 = $("#weekPrice1").val();
                }
               // var max_WeekPrice=parseInt(Number(getControl("dayPrice1").value)*7);
                var max_WeekPrice=parseInt(Number(getControl("dayPrice1").value));
                if ($("#dayPrice1").val()!="") {
                    if($("#weekPrice1").val()!=""){
                        if (getControl("weekPrice1").value != "" && Number(getControl("weekPrice1").value) > Number(getControl("dayPrice1").value)) {
                            $("#tishi_jiage").hide();
                           // $("#avgDayPrice1").hide();
                            $("#avgDayPrice1").show().text("每晚");
                          //  $("#weekMinPrice").text("周价（月价）不能低于日价！").show();
                            $("#weekMinPrice").text("周价不能高于日价！").show();
                            
//                        }else if (getControl("weekPrice1").value != "" && Number(getControl("weekPrice1").value) > max_WeekPrice) {
//                            $("#tishi_jiage").hide();
//                            $("#avgDayPrice1").hide();
//                            $("#weekMinPrice").text("周价格不能高于日价*7！").show();
                            
                        }else{
                         // var weekPr=Number(getControl("dayPrice1").value)*7;
                          var weekPr=Number(getControl("dayPrice1").value);
                          var zhekouweekprice=parseFloat((Number(getControl("weekPrice1").value)/weekPr)*10);
                            if((zhekouweekprice<8 || zhekouweekprice<8.00)){
                            $("#bjrightAD").attr("class","bjrightAD");
                            $("#bjwrongAD").attr("class","bjwrongAD");
                            $("#jiaru").attr("class","greenAD09");
                            $("#huode").attr("class","");
                            $("#huode").html("未获得：");
                            $("#jiaru").html("已加入：");
                            }else {
                                  $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                            }
                            if(zhekouweekprice<=9.9||zhekoumonthprice<=9.90){
                              $("#bjwrongAD").attr("class","bjrightAD");
                              $("#huode").attr("class","greenAD09");
                              $("#huode").html("已获得：");
                            }else if(zhekouweekprice>8.00||zhekouweekprice>8){
                              $("#bjwrongAD").attr("class","bjwrongAD");
                              $("#bjrightAD").attr("class","bjwrongAD");
                              $("#huode").attr("class","");
                              $("#jiaru").attr("class","");
                              $("#huode").html("未获得：");
                              $("#jiaru").html("未加入：");
                            }
                            $("#tishi_jiage").show();
                           // var riJunJia=(Number(weekPrice1)/7).toString();
                            var riJunJia=(Number(weekPrice1)).toString();
                            if(riJunJia.indexOf('.')!=-1){
                                //riJunJia=riJunJia.substring(0,riJunJia.indexOf('.')+3);//小数点后保留一位
                                riJunJia=parseInt(riJunJia);
                            }
                           //$("#avgDayPrice1").html("日均价<span class='ColorPink'>"+currencyPhic+riJunJia+"</span>（即<span class='ColorPink'>"+zhekouweekprice.toFixed(2)+"折</span>）").show();
                           $("#avgDayPrice1").html("每晚（<span class='ColorPink'>"+zhekouweekprice.toFixed(2)+"折</span>）").show();
                            $("#weekMinPrice").hide();
                            $("#monthMinPrice").hide();
                                //当周价格发生了变化时,月价没填写时才自动填充月价格
                              //  $("#monthPrice1").val(parseInt(parseInt(Number(getControl("weekPrice1").value)/7)*30));
                              if(monthPriceOld=="" || monthPriceOld=="0"){
                                $("#monthPrice1").val(parseInt(parseInt(Number(getControl("weekPrice1").value))));
                              }
                                //if(Number($("#monthPrice1").val())/30<=Number($("#weekPrice1").val())/7){
                                if(Number($("#monthPrice1").val())<=Number($("#weekPrice1").val())){
                                //var monthPr=Number(getControl("dayPrice1").value)*30;
                                var monthPr=Number(getControl("dayPrice1").value);
                                var zhekoumonthprice=parseFloat((Number(getControl("monthPrice1").value)/monthPr)*10);
                               if((zhekoumonthprice<8 || zhekoumonthprice<8.00)){
                                $("#bjrightAD").attr("class","bjrightAD");
                                $("#bjwrongAD").attr("class","bjwrongAD");
                                $("#jiaru").attr("class","greenAD09");
                                $("#huode").attr("class","");
                                $("#huode").html("未获得：");
                                $("#jiaru").html("已加入：");
                                }else {
                                  $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                                }
                                if(zhekoumonthprice<=9.9||zhekoumonthprice<=9.90){
                                  $("#bjwrongAD").attr("class","bjrightAD");
                                  $("#huode").attr("class","greenAD09");
                                  $("#huode").html("已获得：");
                                }else if(zhekoumonthprice>8.00||zhekoumonthprice>8){
                                  $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                                }
                               $("#tishi_jiage").show();
                                //$("#avgDayPrice2").html("日均价<span class='ColorPink'>"+currencyPhic+riJunJia+"</span>（即<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                                $("#avgDayPrice2").html("每晚（<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                                }else{
                                $("#tishi_jiage").hide();
                                //$("#avgDayPrice2").hide();$("#monthMinPrice").html("日均价："+currencyPhic+riJunJia+"，高于周价/7，请重新设置").show();
                               // $("#avgDayPrice2").hide();
                                $("#avgDayPrice2").show().text("每晚");
                                $("#monthMinPrice").html("月价不能高于周价").show();
                                }
                        }
                    }else {
                        //$("#avgDayPrice1").hide();
                         $("#avgDayPrice1").show().text("每晚");
                    }
                }
                }else{
                  // $("#avgDayPrice1").hide();
                    $("#avgDayPrice1").show().text("每晚");
                   $("#weekMinPrice").show().text("周价必须是大于0的整数");
                }
            });

             //月价格失去焦点事件
            $("#monthPrice1").blur(function(){
                if(bol_WeekPrice){//周价格合法时才进行月价格的计算、展现
                 if(($.trim($("#monthPrice1").val())!="" && isPositiveNum($.trim($("#monthPrice1").val()))) || $.trim($("#monthPrice1").val())==""){
                    //var riJunJia=(Number(getControl("monthPrice1").value)/30).toString();
                    var riJunJia=(Number(getControl("monthPrice1").value)).toString();
                    if(riJunJia.indexOf('.')!=-1){
                        //riJunJia=riJunJia.substring(0,riJunJia.indexOf('.')+3);
                        riJunJia=parseInt(riJunJia);
                    }
                    if(riJunJia!=0){
                       if($("#monthPrice1").val()!=""){
                           if($("#weekPrice1").val()!=""){
                            //if(Number(getControl("monthPrice1").value)/30<=Number(getControl("weekPrice1").value)/7){
                             if(Number(getControl("monthPrice1").value)<=Number(getControl("weekPrice1").value)){
                            //var monthPr=Number(getControl("dayPrice1").value)*30;
                             var monthPr=Number((getControl("dayPrice1").value));
                            var zhekoumonthprice=parseFloat((Number(getControl("monthPrice1").value)/monthPr)*10);
                              if((zhekoumonthprice<8 || zhekoumonthprice<8.00)){
                                 $("#bjrightAD").attr("class","bjrightAD");
                                 $("#bjwrongAD").attr("class","bjwrongAD");
                                 $("#jiaru").attr("class","greenAD09");
                                 $("#huode").attr("class","");
                                 $("#huode").html("未获得：");
                                 $("#jiaru").html("已加入：");
                                }else {
                                  $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                                }
                                if(zhekoumonthprice<=9.9||zhekoumonthprice<=9.90){
                                  $("#bjwrongAD").attr("class","bjrightAD");
                                  $("#huode").attr("class","greenAD09");
                                  $("#huode").html("已获得：");
                                }else if(zhekoumonthprice>8.00||zhekoumonthprice>8){
                                  $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                                }
                            $("#tishi_jiage").show();
                           
                            //    $("#avgDayPrice2").html("日均价<span class='ColorPink'>"+currencyPhic+riJunJia+"</span>（即<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                            $("#avgDayPrice2").html("每晚（<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                            }else{
                            $("#tishi_jiage").hide();
                           // $("#avgDayPrice2").hide();
                            $("#avgDayPrice2").show().text("每晚");
                           // $("#monthMinPrice").html("日均价："+currencyPhic+riJunJia+"，高于周价/7，请重新设置").show();
                            $("#monthMinPrice").html("月价不能高于周价").show();
                            }
                           }
                        }else{
                       $("#tishi_jiage").hide();
                       }
                    }
                    if($("#monthPrice1").val()!=""){//月价格不为空时
                        if($("#weekPrice1").val()!=""){//周价格不为空时
                            //var max_MonthPrice=parseInt(parseInt(Number(getControl("weekPrice1").value)/7)*30);
                            if (getControl("monthPrice1").value != "" && Number(getControl("monthPrice1").value) >Number(getControl("weekPrice1").value)) {
                               $("#tishi_jiage").hide();
                                $("#monthMinPrice").text("月价不能高于周价！").show();
                               // $("#avgDayPrice2").hide();
                                $("#avgDayPrice2").show().text("每晚");
                            }
//                            else if (getControl("monthPrice1").value != "" && (parseInt(Number(getControl("monthPrice1").value)/30)) > parseInt(Number(getControl("weekPrice1").value)/7)) {
//                                $("#tishi_jiage").hide();
//                                $("#monthMinPrice").text("日均价："+currencyPhic+riJunJia+"，高于周价/7，请重新设置").show();
//                                $("#avgDayPrice2").hide();
//                            }
                        }else if($("#weekPrice1").val()==""){//周价格为空时
                            if(Number(getControl("monthPrice1").value) > Number(getControl("dayPrice1").value)){
                            $("#tishi_jiage").hide();
                           // $("#avgDayPrice2").hide();
                            $("#avgDayPrice2").show().text("每晚");
                                $("#monthMinPrice").text("月价不能高于日价！").show();
//                            }else if(Number(getControl("monthPrice1").value) > Number(getControl("dayPrice1").value)*30){
//                            $("#tishi_jiage").hide();
//                            $("#avgDayPrice2").hide();
//                                $("#monthMinPrice").text("月价格不能高于"+Number(getControl("dayPrice1").value)*30).show();
                            }else{
                            //var monthPr=Number(getControl("dayPrice1").value)*30;
                             var monthPr=Number(getControl("dayPrice1").value);
                            var zhekoumonthprice=parseFloat((Number(getControl("monthPrice1").value)/monthPr)*10);
                              if((zhekoumonthprice<8 || zhekoumonthprice<8.00)){
                                $("#bjrightAD").attr("class","bjrightAD");
                                $("#bjwrongAD").attr("class","bjwrongAD");
                                $("#jiaru").attr("class","greenAD09");
                                $("#huode").attr("class","");
                                $("#huode").html("未获得：");
                                $("#jiaru").html("已加入：");
                                }else {
                                  $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                                }
                                if(zhekoumonthprice<=9.9||zhekoumonthprice<=9.90){
                                  $("#bjwrongAD").attr("class","bjrightAD");
                                  $("#huode").attr("class","greenAD09");
                                  $("#huode").html("已获得：");
                                }else if(zhekoumonthprice>8.00||zhekoumonthprice>8){
                                  $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                                }
                              //$("#avgDayPrice2").html("日均价<span class='ColorPink'>"+currencyPhic+riJunJia+"</span>（即<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                              $("#avgDayPrice2").html("每晚（<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                              $("#tishi_jiage").show();
                            }
                        }
                    }else{
                     if($("#weekPrice1").val()!=""){//周价格不为空时
                     //$("#monthPrice1").val(parseInt(parseInt(Number(getControl("weekPrice1").value)/7)*30).toString());
                      $("#monthPrice1").val(parseInt(parseInt(Number(getControl("weekPrice1").value))).toString());
                         //  var monthPr=Number(getControl("dayPrice1").value)*30;
                           var monthPr=Number(getControl("dayPrice1").value);
                            var zhekoumonthprice=parseFloat((Number(getControl("monthPrice1").value)/monthPr)*10);
                              if((zhekoumonthprice<8 || zhekoumonthprice<8.00)){
                                $("#bjrightAD").attr("class","bjrightAD");
                                $("#bjwrongAD").attr("class","bjwrongAD");
                                $("#jiaru").attr("class","greenAD09");
                                $("#huode").attr("class","");
                                $("#huode").html("未获得：");
                                $("#jiaru").html("已加入：");
                                }else{ 
                                 $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                                }
                                if(zhekoumonthprice<=9.9||zhekoumonthprice<=9.90){
                                  $("#bjwrongAD").attr("class","bjrightAD");
                                  $("#huode").attr("class","greenAD09");
                                  $("#huode").html("已获得：");
                                }else if(zhekoumonthprice>8.00||zhekoumonthprice>8){
                                  $("#bjwrongAD").attr("class","bjwrongAD");
                                  $("#bjrightAD").attr("class","bjwrongAD");
                                  $("#huode").attr("class","");
                                  $("#jiaru").attr("class","");
                                  $("#huode").html("未获得：");
                                  $("#jiaru").html("未加入：");
                                }
                                //$("#avgDayPrice2").html("日均价<span class='ColorPink'>"+currencyPhic+riJunJia+"</span>（即<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                                $("#avgDayPrice2").html("每晚（<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                      $("#tishi_jiage").show();
                       }else{
                         $("#tishi_jiage").hide();
                       }
                       // $("#avgDayPrice2").hide();
                       $("#avgDayPrice2").show().text("每晚");
                        $("#monthMinPrice").hide();
                    }
                    }else{
                       // $("#avgDayPrice2").hide();
                        $("#avgDayPrice2").show().text("每晚");
                       $("#monthMinPrice").show().text("月价必须是大于0的整数");
                    }
                }
            });
               //日均价显示内容初始化
                   // var aveDayPriceA=parseInt(Number(getControl("weekPrice1").value)/7);
                   var aveDayPriceA=parseInt(Number(getControl("weekPrice1").value));
                   // var aveDayPriceB=parseInt(Number(getControl("monthPrice1").value)/30);
                    var aveDayPriceB=parseInt(Number(getControl("monthPrice1").value));
                    if(aveDayPriceA!=0){
                    //var weekPr=Number(getControl("dayPrice1").value)*7;
                    var weekPr=Number(getControl("dayPrice1").value);
                    var zhekouweekprice=parseFloat((Number(getControl("weekPrice1").value)/weekPr)*10);
                    if(zhekouweekprice<8 || zhekouweekprice<8.00){
                    $("#bjrightAD").attr("class","bjrightAD");
                    $("#jiaru").attr("class","greenAD09");
                    $("#jiaru").html("已加入：");
                    }else{
                     $("#bjwrongAD").attr("class","bjwrongAD");
                      $("#bjrightAD").attr("class","bjwrongAD");
                      $("#huode").attr("class","");
                      $("#jiaru").attr("class","");
                      $("#huode").html("未获得：");
                      $("#jiaru").html("未加入：");
                    }
                    if(zhekouweekprice<=9.9||zhekoumonthprice<=9.90){
                      $("#bjwrongAD").attr("class","bjrightAD");
                      $("#huode").attr("class","greenAD09");
                      $("#huode").html("已获得：");
                    }else if(zhekouweekprice>8.00||zhekouweekprice>8){
                      $("#bjwrongAD").attr("class","bjwrongAD");
                      $("#bjrightAD").attr("class","bjwrongAD");
                      $("#huode").attr("class","");
                      $("#jiaru").attr("class","");
                      $("#huode").html("未获得：");
                      $("#jiaru").html("未加入：");
                    }
                    $("#tishi_jiage").show();
                       // $("#avgDayPrice1").html("日均价<span class='ColorPink'>"+currencyPhic+aveDayPriceA+"</span>（即<span class='ColorPink'>"+zhekouweekprice.toFixed(2)+"折</span>）").show();
                        $("#avgDayPrice1").html("每晚（<span class='ColorPink'>"+zhekouweekprice.toFixed(2)+"折</span>）").show();
                    }
                    if(aveDayPriceB!=0){
                   // var monthPr=Number(getControl("dayPrice1").value)*30;
                    var monthPr=Number(getControl("dayPrice1").value);
                        var zhekoumonthprice=parseFloat((Number(getControl("monthPrice1").value)/monthPr)*10);
                        if((zhekoumonthprice<8 || zhekoumonthprice<8.00)){
                             $("#bjrightAD").attr("class","bjrightAD");
                            $("#bjwrongAD").attr("class","bjwrongAD");
                            $("#jiaru").attr("class","greenAD09");
                            $("#huode").attr("class","");
                            $("#huode").html("未获得：");
                            $("#jiaru").html("已加入：");
                            }else {
                             $("#bjwrongAD").attr("class","bjwrongAD");
                             $("#bjrightAD").attr("class","bjwrongAD");
                             $("#huode").attr("class","");
                             $("#jiaru").attr("class","");
                             $("#huode").html("未获得：");
                             $("#jiaru").html("未加入：");
                            }
                            if(zhekoumonthprice<=9.9||zhekoumonthprice<=9.90){
                              $("#bjwrongAD").attr("class","bjrightAD");
                              $("#huode").attr("class","greenAD09");
                              $("#huode").html("已获得：");
                            }else if(zhekoumonthprice>8.00||zhekoumonthprice>8){
                              $("#bjwrongAD").attr("class","bjwrongAD");
                              $("#bjrightAD").attr("class","bjwrongAD");
                              $("#huode").attr("class","");
                              $("#jiaru").attr("class","");
                              $("#huode").html("未获得：");
                              $("#jiaru").html("未加入：");
                            }
                    if(aveDayPriceA==0){
                        //if(Number(getControl("monthPrice1").value)/30<=Number(getControl("weekPrice1").value)/7){
                        if(Number(getControl("monthPrice1").value)<=Number(getControl("weekPrice1").value)){
                            $("#tishi_jiage").show();
                            //$("#avgDayPrice2").html("日均价<span class='ColorPink'>"+currencyPhic+aveDayPriceB+"</span>（即<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                            $("#avgDayPrice2").html("每晚（<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                       }else{
                        $("#tishi_jiage").hide();
                            //$("#avgDayPrice2").hide();$("#monthMinPrice").html("日均价："+currencyPhic+aveDayPriceB+"，高于周价/7，请重新设置").show();
                            //$("#avgDayPrice2").hide();
                             $("#avgDayPrice2").show().text("每晚");
                            $("#monthMinPrice").html("月价不能高于周价").show();
                       }
                       }else{
                            $("#tishi_jiage").show();
                            //$("#avgDayPrice2").html("日均价<span class='ColorPink'>"+currencyPhic+aveDayPriceB+"</span>（即<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                            $("#avgDayPrice2").html("每晚（<span class='ColorPink'>"+zhekoumonthprice.toFixed(2)+"折</span>）").show();
                       }
                    }
        });
        //===点击下一步保存按钮执行的函数===
        function saveData() {
            var dingJinAccount;
            var cancelDay;//
            var policy;//
            if(isChineseHouse=="True"){
                if (Number(tuoguanFlag)>0) {
                    cancelDay = $("#tuoguanCancelDay option:selected").val();
                    policy = $("#tuoguanPolicy option:selected").val();
                } else {
                    dingJinAccount = $("#dingjin option:selected").val();
                    cancelDay = $("#selCancelDay option:selected").val();
                    policy = $("#tranPolicy option:selected").val();
                }
            }else if(isChineseHouse=="False"){
                cancelDay=cancleDayEn;
                policy=punishmentEn;
            }
            isture = true;
            var date = new Date().getTime();
            var radioval=0;
            $.each($("input[id^='radio']"),function(n,v){
            if($(v).attr("checked"))
            {
            radioval=Number($(v).val());
            }
            });

            validateData(isChineseHouse);
            if (isture == true) {
                var IsForeigner;
                if(isChineseHouse=="True"){
                    if (document.getElementById("accept").checked) { IsForeigner = 1; }
                    if (document.getElementById("refuse").checked) { IsForeigner = 0; }
                }
                $.post("/publish/Ajax/HousePriceEnAction.aspx", {
                    tuoGuan: tuoguanFlag,
                    HouseId: houseId1,
                    Flag: flag1,
                    SelRMB: currencyName,////////////////////////
                    DayPrice: setPrices[0],
                    WeekPrice: setPrices[1],
                    MonthPrice: setPrices[2],
                    WeekendPrice: setPrices[3],
                    CleanAccount: setPrices[4],
                    ClientAccount: setPrices[5],
                    YajinAccount: setPrices[6],
                    cancelDay: cancelDay,
                   // StayRoomNum: $("#selPeopleNum option:selected").val(),
                    TicketOrNot: radioval,
                    TransPolicy: policy,
                    dingJing: dingJinAccount,
                    HouseRule:escape($("#HouseControlContent").val()),
                    LiveMinDayNum: $("#selDayMinNum option:selected").val(),
                    LiveMaxDayNum: $("#selDayMaxNum option:selected").val(),
                     LiveInHouseTime: $("#selRuZhuTime option:selected").val(),
                    LiveInHouseTimeOut: $("#selRuZhuTimeafter option:selected").val(),
                    LiveOutHouseTime: $("#selTuiFangTime").val(),
                    NewDate: date,
                    IsForeigner:IsForeigner
                }, function (data1) {
                    if (data1 == "2") {
                        //$("#RoomNextBtnNext").css("background", "url('http://js.youtx.com/images/PaymentBtn2.gif') repeat scroll 0 35px");
                        saveDateSpecials();
                        isture = true;
                        //保存成功跳转到下一步(支付设置页面)
                        clickFlag = 0;
                        window.location = "/room/newfiveplan/" + houseId1;
                    } else if (data1 == "1") {
                        //保存成功 弹出滤镜//保存成功
                        //$("#btnSave").css("background", "url('http://js.youtx.com/images/PaymentBtn2.gif') repeat scroll 0 35px");
                        saveDateSpecials();
                        isture = true;
                        clickFlag = 0;
                        window.location = "/room/newcomplete/" + houseId1;
                    } else {
                        alert("保存失败！");
                        clickFlag = 0;
                        $("#RoomNextBtnNext").css("background", "");
                        isture = true;
                    }
                });
            }
        }
        //===保存特殊价格跟周末价格数据===
        function saveDateSpecials() {
            if (setPrices[3] != ""||setPrices[3]!=null) {
                var myDate = new Date();
                myDate.setDate(myDate.getDate() + 90);
                $.post("/publish/Ajax/AddSpecialDatePrice.aspx", {
                    houseid: houseId1,
                    flag: "1",
                    houseDayPrice: setPrices[0],
                    setPriceRadioVal: "1",
                    setPriceVal: setPrices[3],
                    beginDate: ChangeDateToString(new Date()),
                    endDate: ChangeDateToString(myDate),
                    newDate: new Date().getTime()
                }, function (data1) {});
            }
        }
        var scrol = 0;
        //===数据校验===
        function validateData(bolChineseHouse) {
            scrol = 0;
            var x;
            var y;
            if (setPrices[0] == "") {//日价格没设置
                $("#choosePrice").show();
                x = $("#dayPrice1").position().left;
                y = $("#dayPrice1").position().top;
                window.scrollTo(x, y);
            }
            var inputs = $(".RoomSituationTxtInput112");
            for (var i = 0; i < setPrices.length; i++) {
                if (setPrices[i] != "") {//校验价格输入是否正确
                  if(i==0 || i==1 || i==2){
                   if(isPositiveNum(setPrices[i]) == false){
                    $("#weekMinPrice").hide();
                    $("#monthMinPrice").hide();
                    $("#validatePrice" + i).show();
                   }
                 }else{
                  if(isInteger(setPrices[i]) == false){
                    $("#weekMinPrice").hide();
                    $("#monthMinPrice").hide();
                    $("#validatePrice" + i).show();
                  }
                 }
                }
            }
            //校验最低的价格(日、周、月、周末)
            if(bolChineseHouse=="True"){//国内房源各种价格验证
                if (getControl("dayPrice1").value != "" && isPositiveNum(getControl("dayPrice1").value) && Number(getControl("dayPrice1").value) < 1) {
                    $("#dayMinPrice").text("日价格最低1元").show();
                } else {
                    if (Number(getControl("dayPrice1").value) > 100000) {
                        $("#dayMinPrice").text("日价格最高100000元").show();
                    }
                }
                if (getControl("weekPrice1").value != "" && isPositiveNum(getControl("weekPrice1").value) && Number(getControl("weekPrice1").value) < 1) {
                    $("#weekMinPrice").text("日价格最低1元").show();//Resources.LngResPublish.housePrice_WeekMinPrice
                } else {
                    if($("#dayPrice1").val!=""){
                        if (getControl("weekPrice1").value != "" && Number(getControl("weekPrice1").value) > Number(getControl("dayPrice1").value)) {
                            $("#weekMinPrice").text("周价不能高于日价！").show();
                        }
                        //var max_WeekPrice=parseInt(Number(getControl("dayPrice1").value)*7);
//                        if (getControl("weekPrice1").value != "" && Number(getControl("weekPrice1").value) > max_WeekPrice) {
//                            $("#weekMinPrice").text("周价格不能高于￥"+max_WeekPrice).show();
//                        }
                    }
                    if (getControl("weekPrice1").value != "" && Number(getControl("weekPrice1").value) > 100000) {
                        $("#weekMinPrice").text("周价格最高700000元").show();
                    }
                }
                if ($("#monthPrice1").val() != "" && isPositiveNum(getControl("monthPrice1").value)) {
                    if (Number(getControl("monthPrice1").value) < 1) {
                        $("#monthMinPrice").text("日价格最低1元").show();//housePrice_MonthMinPrice
                    } else {
                        if($("#weekPrice1").val()!=""){
                            if (getControl("monthPrice1").value != "" && Number(getControl("monthPrice1").value) > Number(getControl("weekPrice1").value)) {
                                $("#monthMinPrice").text("月价不能高于周价！").show();
                            }
//                            var max_MonthPrice=parseInt(parseInt(Number(getControl("weekPrice1").value)/7)*30);
//                            if (getControl("monthPrice1").value != "" && Number(getControl("monthPrice1").value) > max_MonthPrice) {
//                                $("#monthMinPrice").text("月价格不能高于￥"+max_MonthPrice).show();
//                            }
                             if (getControl("monthPrice1").value != "" && (parseInt(Number(getControl("monthPrice1").value))) > parseInt(Number(getControl("weekPrice1").value))) {
                              //  $("#monthMinPrice").text("日均价：￥"+Number(getControl("dayPrice1").value)+"，低于周价/7，请重新设置").show();
                                $("#monthMinPrice").text("月价不能高于周价！").show();
                              }
                        }else if($("#weekPrice1").val()==""){
                            if(Number(getControl("monthPrice1").value) > Number(getControl("dayPrice1").value)){
                                $("#monthMinPrice").text("月价不能高于日价！").show();
                            }
//                            else if(Number(getControl("monthPrice1").value) > Number(getControl("dayPrice1").value)*30){
//                                $("#monthMinPrice").text("月价格不能高于"+Number(getControl("dayPrice1").value)*30).show();
//                            }
                        }
                        if (Number(getControl("monthPrice1").value) > 100000) {
                            $("#monthMinPrice").text("日价格最高100000元").show(); //housePrice_MonthMaxPrice
                        }
                    }
                }
                if (getControl("weekenPrice1").value != "" && isInteger(getControl("weekenPrice1").value)) {
                    if (Number(getControl("weekenPrice1").value) < 1) {
                        $("#weekenPrice").text("周末价格最低1元").show();
                    } else {
                        if (Number(getControl("weekenPrice1").value) > 100000) {
                            $("#weekenPrice").text("周末价格最高100000元").show();
                        }
                    }
                }
                if (getControl("qingjieAccount").value != "" && isInteger(getControl("qingjieAccount").value)) {
//                    if (Number(getControl("qingjieAccount").value) < 1) {
//                        $("#validatePrice4").text("清洁费最低1元").show();
//                    } else {
                        if (Number(getControl("qingjieAccount").value) > 100000) {
                            $("#validatePrice4").text("清洁费最高100000元").show();
                        }
                    //}
                }
                if (getControl("kerenAccount").value != "" && isInteger(getControl("kerenAccount").value)) {
//                    if (Number(getControl("kerenAccount").value) < 1) {
//                        $("#validatePrice5").text("额外费用最低1元").show();
//                    } else {
                        if (Number(getControl("kerenAccount").value) > 100000) {
                            $("#validatePrice5").text("额外费用最高100000元").show();
                        }
                    //}
                }
                if (getControl("yajinAccount").value != "" && isInteger(getControl("yajinAccount").value)) {
//                    if (Number(getControl("yajinAccount").value) < 1) {
//                        $("#validatePrice6").text("押金最低1元").show();
//                    } else {
                        if (Number(getControl("yajinAccount").value) > 100000) {
                            $("#validatePrice6").text("押金最高100000元").show();
                        }
                    //}
                }
            }else if(bolChineseHouse=="False"){//国外房源各种价格验证
                if (getControl("dayPrice1").value != "" && isPositiveNum(getControl("dayPrice1").value) && Number(getControl("dayPrice1").value) < 10) {
                    $("#dayMinPrice").text("日价格最低10美元").show();
                } else {
                    if (Number(getControl("dayPrice1").value) > 100000) {
                        $("#dayMinPrice").text("日价格最高100000美元").show();
                    }
                }
                if (getControl("weekPrice1").value != "" && isPositiveNum(getControl("weekPrice1").value) && Number(getControl("weekPrice1").value) < 10) {
                    $("#weekMinPrice").text("日价格最低10美元").show();//housePrice_WeekMinPriceUSD
                } else {
                    if($("#dayPrice1").val!=""){
                        if (getControl("weekPrice1").value != "" && Number(getControl("weekPrice1").value) > Number(getControl("dayPrice1").value)) {
                            $("#weekMinPrice").text("周价不能高于日价！").show();
                        }
//                        var max_WeekPrice=parseInt(Number(getControl("dayPrice1").value)*7);
//                        if (getControl("weekPrice1").value != "" && Number(getControl("weekPrice1").value) > max_WeekPrice) {
//                            $("#weekMinPrice").text("周价格不能高于￥"+max_WeekPrice).show();
//                        }
                    }
                    if (getControl("weekPrice1").value != "" && Number(getControl("weekPrice1").value) > 100000) {
                        $("#weekMinPrice").text("日价格最高100000美元").show();  //housePrice_WeekMaxPriceUSD
                    }
                }
                if ($("#monthPrice1").val() != "" && isPositiveNum(getControl("monthPrice1").value)) {
                    if (Number(getControl("monthPrice1").value) < 10) {
                        $("#monthMinPrice").text("日价格最低10美元").show();
                    } else {
                        if($("#weekPrice1").val()!=""){
                            if (getControl("monthPrice1").value != "" && Number(getControl("monthPrice1").value) > Number(getControl("weekPrice1").value)) {
                                $("#monthMinPrice").text("月价不能高于周价！").show();
                            }
//                            var max_MonthPrice=parseInt(parseInt(Number(getControl("weekPrice1").value)/7)*30);
//                            if (getControl("monthPrice1").value != "" && Number(getControl("monthPrice1").value) > max_MonthPrice) {
//                                $("#monthMinPrice").text("月价格不能高于￥"+max_MonthPrice).show();
//                            }
                             if (getControl("monthPrice1").value != "" && (parseInt(Number(getControl("monthPrice1").value))) > parseInt(Number(getControl("weekPrice1").value))) {
                                $("#monthMinPrice").text("月价不能高于周价！").show();
                              }
                        }else if($("#weekPrice1").val()==""){
                            if(Number(getControl("monthPrice1").value) > Number(getControl("dayPrice1").value)){
                                $("#monthMinPrice").text("月价不能高于日价！").show();
                            }
//                            else if(Number(getControl("monthPrice1").value) > Number(getControl("dayPrice1").value)*30){
//                                $("#monthMinPrice").text("月价格不能高于"+Number(getControl("dayPrice1").value)*30).show();
//                            }
                        }
                        if (Number(getControl("monthPrice1").value) > 100000) {
                            $("#monthMinPrice").text("日价格最高100000美元").show();
                        }
                    }
                }
                if (getControl("weekenPrice1").value != "" && isInteger(getControl("weekenPrice1").value)) {
                    if (Number(getControl("weekenPrice1").value) < 10) {
                        $("#weekenPrice").text("周末价格最低10美元").show();
                    } else {
                        if (Number(getControl("weekenPrice1").value) > 100000) {
                            $("#weekenPrice").text("周末价格最高100000美元").show();
                        }
                    }
                }
                if (getControl("qingjieAccount").value != "" && isInteger(getControl("qingjieAccount").value)) {
//                    if (Number(getControl("qingjieAccount").value) < 10) {
//                        $("#validatePrice4").text("清洁费最低10美元").show();
//                    } else {
                        if (Number(getControl("qingjieAccount").value) > 100000) {
                            $("#validatePrice4").text("清洁费最高100000美元").show();
                        }
                   // }
                }
                if (getControl("kerenAccount").value != "" && isInteger(getControl("kerenAccount").value)) {
//                    if (Number(getControl("kerenAccount").value) < 10) {
//                        $("#validatePrice5").text("额外费用最低10美元").show();
//                    } else {
                        if (Number(getControl("kerenAccount").value) > 100000) {
                            $("#validatePrice5").text("额外费用最高100000美元").show();
                        }
                   // }
                }
                if (getControl("yajinAccount").value != "" && isInteger(getControl("yajinAccount").value)) {
//                    if (Number(getControl("yajinAccount").value) < 10) {
//                        $("#validatePrice6").text("押金最低10美元").show();
//                    } else {
                        if (Number(getControl("yajinAccount").value) > 100000) {
                            $("#validatePrice6").text("押金最高100000美元").show();
                        }
                   // }
                }
            }
            clickFlag = 0;
            $.each($("span[class^='SitWarSpan']"), function (n, v) {
                if ($(v).css("display") != "none") {
                    if (scrol == 0) {
                        var offset = $(v).offset();
                        scrol = 1;
                        isture = false;
                        window.scrollTo($(v).offset().left, $(v).offset().top);
                    }
                }
            });
            if($("#tuoguanPolicy option:selected").val()=="11"){
             if(Number($("#selDayMinNum option:selected").val())<30){
              alert("长租期的交易规则要求最小入住天数≥30天！");
              isture=false;
              return;
            }
            }
            //房屋使用规则校验
            if (Number(getsLength(getControl("HouseControlContent").value)) > 2000) {
                alert("使用规则不能超过2000个汉字");
                isture = false;
                return;
            }
            if ($("#selDayMaxNum option:selected").val() != "没有限制") {
                if (Number($("#selDayMaxNum option:selected").val()) <= Number($("#selDayMinNum option:selected").val())) {
                    alert("最大入住天数必须大于最小入住天数");
                    isture = false;
                    return;
                }
            }
        }
        //===页面初始化===
        function initializePage() {
           // $("#selPeopleNum option[value='3']").attr("selected", "selected");
            $("#tranPolicy option[value='5']").attr("selected", "selected");
            $("#selCancelDay option[value='3']").attr("selected", "selected");
            $("#selDayMinNum option[value='1']").attr("selected", "selected");
            $("#selDayMaxNum option[value='0']").attr("selected", "selected");
            if (liveInTimes==""||liveInTimes==null) {$("#selRuZhuTime option[value='14']").attr("selected", "selected");}
            else {$("#selRuZhuTime option[value='14']").attr("selected", "selected");}
            if (liveInTimesOut==""||liveInTimesOut==null) {$("#selRuZhuTimeafter option[value='24']").attr("selected", "selected");}  
            else{$("#selRuZhuTimeafter option[value='24']").attr("selected", "selected");}
             if (liveOutTimes==""||liveOutTimes==null) {$("#selTuiFangTime option[value='12']").attr("selected", "selected");}
            else{$("#selTuiFangTime option[value='12']").attr("selected", "selected");}
            $("#X").text($("#selCancelDay option:selected").val());
            $("#imgShow").attr("title", "假设租客入住的日期是12月20日，则租客在12月17日中午12:00之前取消订单，不会向您支付违约金。在此后取消订单，按照您设定的交易规则扣除租客订金。");
            getTansPolicy();
             if(-1==1)
            {
               document.getElementById("accept").checked=true;
               document.getElementById("refuse").checked=false;
            }else if(-1==0)
            {
               document.getElementById("refuse").checked=true;
               document.getElementById("accept").checked=false;
            }
        }
                //订金百分比
        function getDingjinPenc(policy){
            switch ($("#dingjin option:selected").val()) {
               case "20":
               $("#span_strong_minday").show();
               $("#strong_minday").text("5");
                $("#strong_minday1").text("5");
               break;
               case "50":
               $("#span_strong_minday").show();
               $("#strong_minday").text("2");
                  if(Number(policy)==5){
                   $("#strong_minday1").text("5");
                  }else if(Number(policy)==6){
                   $("#strong_minday1").text("4");
                   }
                break;
                case "100":
                $("#span_strong_minday").hide();
                 if(Number(policy)==5){
                   $("#strong_minday1").text("5");
                 }else if(Number(policy)==6){
                   $("#strong_minday1").text("4");
                  }
                break;
            }
        }
        //===交易规则国内版===
        function getTansPolicy() {
            switch ($("#tranPolicy option:selected").val()) {
                case "5":
                    $("#dingjin_fake").text("20%");
                    $("#infoShow").show();
                    $("#jiyanPolicy").hide();
                    $("#pShow").show();
                    $("#koukuan").show();
                    $("#kouQuanKuan").hide();
                    $("#dingjin").html("<option selected='selected' value='20'>20%</option><option value='50'>50%</option><option value='100'>100%</option>");
                    getDingjinPenc($("#tranPolicy option:selected").val());
                    $("#X").text($("#selCancelDay option:selected").val());
                    $(".CancelRule").attr("href", "/CancelRule/#low");
                    $("#tdCancelationPolicy .CancelRule").attr("href", "/AbroadTradePolicy/#low");
                    $("#totalAccount").text("20%");
                    $("#punishmentAccount").text("90%");
                    if(""=="en-US"){
                    $("#ruzhuAccount").text("75%");
                    }else{
                    $("#ruzhuAccount").text("25%");
                    }
                    $("#jiyanddb2").show();
                    break;
                case "6":
                    $("#dingjin_fake").text("50%");
                    $("#infoShow").show();
                    $("#jiyanPolicy").hide();
                    $("#pShow").show();
                    $("#koukuan").show();
                    $("#kouQuanKuan").hide();
                    $("#dingjin").html("<option value='50' selected='selected'>50%</option><option value='100'>100%</option>");
                    getDingjinPenc($("#tranPolicy option:selected").val());
                    $("#X").text($("#selCancelDay option:selected").val());
                    $(".CancelRule").attr("href", "/CancelRule/#middle");
                    $("#tdCancelationPolicy .CancelRule").attr("href", "/AbroadTradePolicy/#middle");
                    $("#totalAccount").text("25%");
                    $("#punishmentAccount").text("90%");
                    $("#ruzhuAccount").text("50%");
                    $("#jiyanddb2").show();
                    break;
                case "7":
                    $("#dingjin_fake").text("100%"); 
                    $("#infoShow").show();
                    $("#jiyanPolicy").hide();
                    $("#pShow").show();
                    $("#dingjin").html("<option value='100'>100%</option>");
                    $("#strong_minday1").text("2");
                    $("#X").text($("#selCancelDay option:selected").val());
                    $(".CancelRule").attr("href", "/CancelRule/#high");
                      $("#tdCancelationPolicy .CancelRule").attr("href", "/AbroadTradePolicy/#high");
                    $("#totalAccount").text("50%");
                    $("#punishmentAccount").text("90%");
                    $("#kouQuanKuan").show();
                    $("#koukuan").hide();
                    $("#jiyanddb2").show();
                    break;
                case "4":
                    $("#dingjin_fake").text("100%");
                    $("#dingjin").html("<option value='100'>100%</option>");
                    $("#totalAccount").text("100%");
                    $(".CancelRule").attr("href", "/CancelRule/#superhigh");
                    $("#span_strong_minday").hide();
                       $("#tdCancelationPolicy .CancelRule").attr("href", "/AbroadTradePolicy/#superhigh");
                    $("#infoShow").hide();
                     $("#jiyanPolicy").html("租客在入住前任意时间取消，扣除房款总额的<strong class='colorBD6600'>100%</strong>作为罚金；<br/>入住后取消扣除全部订金。罚金的<strong class='colorBD6600'>90%</strong>支付给房东。<a class='CancelRule' href='/CancelRule/#superhigh' target='_blank'>详情&gt;&gt;</a>");
                    $("#jiyanPolicy").show();
                    $("#pShow").hide();
                    $("#jiyanddb2").hide();
                    break;
                default:
                    break;
            }
        }
        //===交易规则国外版===
        function CanclePolicy(){
            var ddlVal=$("#tranPolicy").val();
            switch (ddlVal) {
                case "5":
                    $("#flexible").show();
                    $("#moderate").hide();
                    $("#strict").hide();
                    $("#superStrict").hide();
                    cancleDayEn="1";
                    punishmentEn="21";
                    break;
                case "6":
                    $("#flexible").hide();
                    $("#moderate").show();
                    $("#strict").hide();
                    $("#superStrict").hide();
                    cancleDayEn="5";
                    punishmentEn="22";
                    break;
                case "7":
                    $("#flexible").hide();
                    $("#moderate").hide();
                    $("#strict").show();
                    $("#superStrict").hide();
                    cancleDayEn="7";
                    punishmentEn="23";
                    break;
                case "4":
                    $("#flexible").hide();
                    $("#moderate").hide();
                    $("#strict").hide();
                    $("#superStrict").show();
                    cancleDayEn="30";
                    punishmentEn="24";
                    break;
                default:
                    break;
            }
        }
        //===托管初始化===
        function tuoGuanInit() {
            $("#tuoguanPolicy option[value='5']").attr("selected", "selected");
             if("5"=="11"){
            $("#tuoguanCancelDay").html("<option value='10' selected='selected'>10天</option>");
            }
            $("#tuoguanCancelDay option[value='3']").attr("selected", "selected");
            $("#selDayMinNum option[value='1']").attr("selected", "selected");
            $("#selDayMaxNum option[value='0']").attr("selected", "selected");
            $("#selRuZhuTime option").remove();
            $("#selRuZhuTime").append($("<option value='14' selected='selected'>14:00</option>"));
            $("#selRuZhuTimeafter option").remove();
           $("#selRuZhuTimeafter").append($("<option value='24' selected='selected'>24:00</option>"));
            $("#selTuiFangTime option[value='12']").attr("selected", "selected");
            $("#tuoguanX").text($("#tuoguanCancelDay option:selected").val());
            tuoGuanPolicy();
        }
        //===托管政策===
         function tuoGuanPolicy() {
            switch ($("#tuoguanPolicy option:selected").val()) {
// OLD               case "8":
//                    $("#jiyantuoguanPolicy").hide();
//                    $("#linghuotuoguan").show();
//                    $("#TGLHDJ1").show();
//                    $("#TGSZDJ").hide();
//                    $("#tuoguanDingJin").text("5%");
//                    $("#tuoguanX").text($("#tuoguanCancelDay option:selected").val());
//                    break;
                case "4":  //极严的
                      $("#TGSZDJ").hide();
                      $("#TGLHDJ").show();
                      $("#TGLHDJ").html("租客需要在线支付房款总额的<strong id='tuoguanDingJin' class='colorBD6600'>100%</strong>与清洁费作为定金；");
                      $("#jiyantuoguanPolicy2").hide();
                      $("#jiyantuoguanPolicy3").hide();
                      $("#linghuotuoguan").hide();
                       $("#jiyantuoguanPolicy").html("租客在入住前任意时间取消订单，扣除房款总额的<strong class='colorBD6600'>100%</strong>作为罚金；<br/>入住后取消扣除全部订金。罚金的<strong class='colorBD6600'>90%</strong>支付给房东。"); //update 20150206
                      $("#jiyantuoguanPolicy").show();
                    break;
                case "9":  //适中的
                      $("#jiyantuoguanPolicy2").hide();
                      $("#jiyantuoguanPolicy3").hide();
                      $("#jiyantuoguanPolicy").hide();
                      $("#linghuotuoguan").show();
                      $("#AddQuanE").html("可全额退款");
                      $("#TGSZDJ").show();
                      $("#TGLHDJ").hide();
                      $("#tuoguanCancelDay").html("<option selected='selected' value='2'>2天</option>");
                      $("#AddTuoguanX").html("<br/>租客在入住前<strong id='tuoguanX' class='colorBD6600'>2</strong>天内取消交易，定金不予退还<span id='AddPingTai'>，由平台保留</span>。");
                    break;
                 case "8":  //不转账的
                      $("#jiyantuoguanPolicy2").hide();
                      $("#jiyantuoguanPolicy3").hide();
                      $("#jiyantuoguanPolicy").hide();
                      $("#TGSZDJ").hide();
                      $("#TGLHDJ").show();
//                      $("#TGLHDJ").html("租客需要在线支付房间的<span class='colorBD6600'>"+tuoguanFlag+"%</span>作为定金；");
 $("#TGLHDJ").html("租客需要在线支付订单总额的<span class='colorBD6600'>"+tuoguanFlag+"%</span><strong class='colorBD6600'></strong>作为定金；"); //update 20150206
                      $("#linghuotuoguan").show();
                      $("#AddQuanE").html("可全额退款");
                      $("#tuoguanCancelDay").html("<option selected='selected' value='2'>2天</option>");
                      $("#AddTuoguanX").html("<br/>租客在入住前<strong id='tuoguanX' class='colorBD6600'>2</strong>天内取消交易，定金不予退还。。");
                      $("#AddPingTai").html("");
                    break;
                 case "10": //灵活的
                      $("#TGSZDJ").hide();
                      $("#TGLHDJ").show();
                      $("#span_tuoguangming_day").show(); //add 20150206
                     // $("#TGLHDJ").html("租客需要在线支付房款总额的<select style='width: 47px;' class='TdSelect' id='TdBai'><option value='20'>20%</option></select>作为定金；");
                     $("#TGLHDJ").html("租客需要在线支付房款总额的<select style='width: 47px;' class='TdSelect' id='TdBai'><option value='20'>20%</option></select>（如果订单租期在5天之内，为1天房款）与清洁费作为定金；");
                      $("#linghuotuoguan").show();
                      $("#tuoguanCancelDay").html("<option value='2' selected='selected'>2天</option>");
                      $("#AddQuanE").html("将不会向您支付违约金");
                      $("#AddTuoguanX").text("");
                     // $("#ChangZuQi").html("扣除房款总额的<strong class=\"colorBD6600\">20%</strong>作为罚金");
                     $("#ChangZuQi").html("扣除房款总额的<strong class=\"colorBD6600\">20%</strong>（订单租期在5天以内，为1天房款）作为罚金");
                      $("#jiyantuoguanPolicy2").show();
                      $("#tuoguanX2").text("2"); //update 20150206
                      $("#jiyantuoguanPolicy3").hide(); //update 20150206
                      $("#jiyantuoguanPolicy").hide();
                    break;
                 case "11": //长租期的
                      $("#TGSZDJ").hide();
                      $("#TGLHDJ").show();
                    //  $("#TGLHDJ").html("租客需要在线支付房款总额的<select style='width: 47px;' class='TdSelect'><option value='20'>20%</option></select>作为定金；");
                      $("#TGLHDJ").html("租客需要在线支付房款总额的<select style='width: 47px;' class='TdSelect'><option value='20'>20%</option></select>与清洁费作为定金；");
                      $("#linghuotuoguan").show();
                      $("#tuoguanCancelDay").html("<option value='10' selected='selected'>10天</option>");
                      $("#AddQuanE").html("将不会向您支付违约金");
                      $("#AddTuoguanX").text("");
//                      $("#ChangZuQi").html("扣除全部线上所付订金作为违约金");
  $("#ChangZuQi").html("扣除房款的<strong class=\"colorBD6600\">20%</strong>作为违约金");
                      $("#jiyantuoguanPolicy2").show();
                      $("#tuoguanX2").text("10");
                      $("#jiyantuoguanPolicy3").hide();//update 20150206
                      $("#jiyantuoguanPolicy").hide();
                    break;
                default:
                    break;
            }
        }
        //===根据标签Id取得元素===
        function getControl(controlId) {
            return document.getElementById(controlId);
        }
        //=== 将日期类型转换成字符串型格式yyyy-MM-dd===
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
        function getsLength(titles) {
            var len = titles.length;
            var lengtha = 0;
            for (var i = 0; i < len; i++) {
                if (titles.charCodeAt(i) > 255) lengtha += 2;
                else lengtha++;
            }
            return parseInt(lengtha / 2);
        }
        //验证是否符合整数、小数、0(不包括负数)规格，验证通过返回true，失败返回false
        function isInteger(str) {
            var regu = /^[1-9]+(\.\d+)?$|^0(\.\d+)?$|^[1-9]+[0-9]*(\.\d+)?$/;
            return regu.test(str);
        }
        //20150609 验证是否为正整数,通过返回true,失败返回false
        function isPositiveNum(s){ 
           var re = /^[0-9]*[1-9][0-9]*$/ ; 
           return re.test(s) 
        }
    </script>


    
   
<script src="${base}/static/publish_house_4/saved_resource"></script><link rel="stylesheet" type="text/css" href="${base}/static/publish_house_4/Youtx_WebIM.css"></head>
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
<script type="text/javascript" src="${base}/static/publish_house_4/Login_Cookie.js.下载"></script>
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
        <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img src="${base}/static/publish_house_4/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/publish_house_4/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
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
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/publish_house_4/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="${base}/static/publish_house_4/ewmBNew.jpg" width="102" height="102"></dd>
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
            <img src="${base}/static/publish_house_4/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/publish_house_4/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob" id="mobYtx">

      	<a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
        <div class="ytxMobCon" style="display:none">
        	<span class="arrowGy">◆</span>
            <span class="arrowWt">◆</span>
            <dl>
            	<dt>扫描二维码安装游天下客户端</dt>
                <dd><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/publish_house_4/youtxapp.png" width="120" height="120"></a></dd>
            </dl>
            <dl>
            	<dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                <dd><img src="${base}/static/publish_house_4/ewmBNew.jpg" width="102" height="102"></dd>
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
            <h3><img id="daohang" src="${base}/static/publish_house_4/publishPlan504_.jpg" alt=""></h3>
            
    <form method="post" action="http://www.youtx.com/room/newfourplan/324548/?houseid=324548" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNDIxMjU5NTk1ZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAgUgY3RsMDAkY3RsMDAkYm9keSRSb29tQm9keSRhY2NlcHQFIGN0bDAwJGN0bDAwJGJvZHkkUm9vbUJvZHkkcmVmdXNlWpVcPz3moBZX+V9eOB+BWMh1mqk=">
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="20959283">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAASDNV0Vk3aahBtYABOlqVGVaKVkNnXW8ABF63OOAm4P0w/yfrB0752K0kkPYLns0MgHB/zFAIpV0iFsVFhX1xIwzFHv3lhtMJ0Z2Hq5PEOcQhG0S/I=">
</div>
    <div class="RoomDescription">
        <div class="RoomSituationTit">
            基本价格</div>
        <div class="RoomSituationTxt RoomSituationTxt02">
            <div id="dayPriceTip" class="PriceTiShi" style="top:51px;left:328px;display:none;">给个优惠点的价格吧，会吸引更多租客的。<span>◆</span> <span class="PriceTiShiImg">◆</span>
              <p><img id="imgx3" src="${base}/static/publish_house_4/QuAnTiShiColse.gif"></p>
            </div>
            <table width="620" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>交易币种：
                    </td>
                    <td>
                        <select id="selRMB" name="selRMB">
                            <option value="CNY">人民币</option>
                        </select>
                        <span id="chooseRMB" style="display: none;" class="SitWarSpan">请选择币种</span>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>日价格：
                    </td>
                    <td>
                        <div class="position">
                            <input id="dayPrice1" class="RoomSituationTxtInput112 RsTi112" value="" maxlength="12" onfocus="$(&#39;#choosePrice&#39;).hide();$(&#39;#validatePrice0&#39;).hide();$(&#39;#dayMinPrice&#39;).hide();" type="text"></div>
                        <span class="SitWarSpan" id="choosePrice" style="display: none; float: left;">请填写价格</span><span id="validatePrice0" style="display: none; float: left;" class="SitWarSpan">请正确填写价格，需为数字</span><span class="SitWarSpan" id="dayMinPrice" style="display: none; float: left;">日价格最低1元</span>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        周价格：
                    </td>
                    <td>
                         <div class="position MR10">
                            <input id="weekPrice1" class="RoomSituationTxtInput112 RsTi112" value="" maxlength="12" onfocus="$(&#39;#validatePrice1&#39;).hide();$(&#39;#weekMinPrice&#39;).hide();" type="text"></div>
                                <!--2013-7-3修改-->
                                 <span id="avgDayPrice1" style="float: left; color:#999;display: block;">每晚</span>
                                 <!--2013-7-3修改-结束--> 
                        <span id="validatePrice1" style="display: none; float: left;" class="SitWarSpan">周价必须是大于0的整数</span><span id="weekMinPrice" style="display: none; float: left;" class="SitWarSpan">周价格最低5元</span><div style="clear: both;">
                            </div>
                        <div style="clear: both;">
                        </div>
                        
                         <div class="color666" style="line-height: 18px;">单次入住大于等于7天时单价将按周价计算（除参与活动或设置了特殊价以外）</div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        月价格：
                    </td>
                    <td>
                        <div class="position MR10">
                            <input id="monthPrice1" class="RoomSituationTxtInput112 RsTi112" value="" maxlength="12" onfocus="$(&#39;#validatePrice2&#39;).hide();$(&#39;#monthMinPrice&#39;).hide();" type="text"></div>
                                <!--2013-7-3修改-->
                                <span style="float: left; color:#999;display: block;" id="avgDayPrice2">每晚</span>
                                <!--2013-7-3修改-结束-->
                        <span id="validatePrice2" style="display: none; float: left;" class="SitWarSpan">月价必须是大于0的整数</span><span id="monthMinPrice" style="display: none; float: left;" class="SitWarSpan">月价格最低20元</span>
                        <div style="clear: both;">
                        </div>
                        
                        <div class="color666" style="line-height: 18px;">
                        单次入住大于等于30天时单价将按月价计算（除参与活动或设置了特殊价以外）
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        周末价格：
                    </td>
                    <td>
                        <div class="position">
                            <input id="weekenPrice1" class="RoomSituationTxtInput112 RsTi112" maxlength="12" value="" onfocus="$(&#39;#validatePrice3&#39;).hide();$(&#39;#weekenPrice&#39;).hide();" type="text"></div>
                        <span style="float: left;">元/天</span> <span id="validatePrice3" style="float: left;
                            _margin: 3px 0 3px 10px; display: none;" class="SitWarSpan">周末价必须是大于0的整数</span><span id="weekenPrice" style="float: left; _margin: 3px 0 3px 10px; display: none;" class="SitWarSpan">周末价格最低1元</span>
                        <div style="clear: both;">
                        </div>
                        <div class="color666" style="line-height: 18px;">
                            三个月内，周五、周六的每天价格</div>
                    </td>
                </tr>
                <!--2013-7-3修改-->
               <tr style="display:none" id="tishi_jiage">
                  <td class="RoomSituationTxtTd">&nbsp;</td>
                  <td><div class="tishi_jiage"><p>周/月价满足条件时，你可享受以下特权</p><ul><li class="bjrightAD" id="bjrightAD"><a class="FR" target="_blank" href="http://www.youtx.com/midlong/">查看频道</a><strong class="greenAD09" id="jiaru">已加入：</strong>周租月租频道（需低于8折）</li></ul><ul><li class="bjwrongAD" id="bjwrongAD"><a class="FR" target="_blank" href="http://www.youtx.com/help/Manage#ZYZU">查看标签</a><strong id="huode">未获得：</strong>周租月租优惠标签（需低于9.9折）</li></ul></div></td>
               </tr>
<!--2013-7-3修改-结束-->
            </tbody></table>
        </div>
    </div>
    <div class="RoomDescription">
        <div class="RoomSituationTit">
            其它费用</div>
        <div class="RoomSituationTxt RoomSituationTxt02">
            <table width="620" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd">
                        <b></b>清洁费：
                    </td>
                    <td>
                        <div class="position">
                            <input id="qingjieAccount" class="RoomSituationTxtInput112 RsTi112" maxlength="12" value="" onfocus="$(&#39;#validatePrice4&#39;).hide();" type="text"></div>
                        <span id="validatePrice4" style="display: none; float: left;" class="SitWarSpan">请正确填写价格，需为数字</span><div style="clear: both;">
                        </div>
                        <div class="color666">
                            与房费一同线上收取。清洁费是指租客入住结束后清洁房间所需的费用。
                        </div>
                    </td>
                </tr>
                <tr id="yincang" style=";">
                    <td class="RoomSituationTxtTd">
                        <b></b>每位额外客人费用：
                    </td>
                    <td>
                        <div class="position">
                            <input id="kerenAccount" class="RoomSituationTxtInput112 RsTi112" maxlength="12" value="" onfocus="$(&#39;#validatePrice5&#39;).hide();" type="text"></div>
                        <span id="validatePrice5" style="display: none; float: left;" class="SitWarSpan">请正确填写价格，需为数字</span><div style="clear: both;">
                        </div>
                        <!--2012-11-06修改start-->
                        <div class="color666">
                              本房间正常容纳3人，另可额外容纳1人，此为每位额外客人多收取的费用
                        </div>
                        <!--2012-11-06修改end-->
                        
                    </td>
                </tr>
            </tbody></table>
        </div>
    </div>
    <div class="RoomDescription">
        <div class="RoomSituationTit">
            押 金</div>
        <div class="RoomSituationTxt RoomSituationTxt02">
            <table width="620" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd">
                        <b></b>押金：
                    </td>
                    <td>
                        <div class="position">
                            <input id="yajinAccount" class="RoomSituationTxtInput112 RsTi112" maxlength="12" value="" onfocus="$(&#39;#validatePrice6&#39;).hide();" type="text"></div>
                        <span id="validatePrice6" style="display: none; float: left;" class="SitWarSpan">请正确填写价格，需为数字</span>
                        <div style="clear: both;">
                        </div>
                        <div class="color666">
                            租客入住时线下收取。如果租客顺利结束入住，请在办理退房手续时将押金退还给租客。
                        </div>
                    </td>
                </tr>
            </tbody></table>
        </div>
    </div>
    <div class="RoomDescription">
        <div class="RoomSituationTit">
            发 票</div>
        <div class="RoomSituationTxt RoomSituationTxt02">
            <table width="620" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd">
                    </td>
                    <td>
                        <div class="RoomSituationRadio">
                            <label>
                                <input id="radio1" type="radio" name="radio" value="1">提供</label><label style="margin-left: 50px;"><input id="radio2" type="radio" checked="checked" name="radio" value="0">不提供</label></div>
                    </td>
                </tr>
            </tbody></table>
        </div>
    </div>
    <div class="RoomDescription">
        <div class="RoomSituationTit">
           交易规则</div>
        <div class="RoomSituationTxt RoomSituationTxt02">
            <table width="620" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd">
                        <b>*</b>交易规则：
                    </td>
                    <td>
                        <select id="tuoguanPolicy" style="display: none;">
                            <option selected="selected" value="8">不转账的(10%)</option>
                            <option value="10">灵活的(20%)</option>
                            
                            <option value="4">极严的(100%)</option>
                            <option value="11">长租期的</option>
                        </select>
                        <select id="tranPolicy">
                            <option selected="selected" value="5">灵活的</option>
                            <option value="6">中等的</option>
                            <option value="7">严格的</option>
                            <option value="4">极严的</option>
                        </select>
                        <!--2012-03-22修改-->
                        <img title="在线支付比例越低，租客取消时扣款幅度越低，对房东保护越弱。选择严格的交易规则能提交对房东的保护，但可能会降低成交率。请您结合自身实际情况选择交易规则。" style="cursor: help; vertical-align: middle" src="${base}/static/publish_house_4/questionmark_hover.png">
                        <!--2012-03-22修改end-->
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        &nbsp;
                    </td>
                    <td class="PolicyTxt" id="tuoguanPolicyTd" style="display: none;">
                        <!--style="line-height: 22px; width: 295px;"-->
                        <div class="color666" style="line-height: 22px;" id="tuoGuanInfoDiv">
                            <p id="TGLHDJ">
                                租客需要在线支付房款总额的<strong id="tuoguanDingJin" class="colorBD6600"> 5%</strong><span id="span_tuoguangming_day" style="display:none;">（如果订单租期在<strong id="strong_tuoguangminday" class="colorBD6600">5</strong>天之内，为1天房款）与清洁费</span>作为定金；</p>
                            <p style="display: none;" id="TGSZDJ">
                                租客需在线支付<strong id="shizhong" class="colorBD6600">1</strong>天房款作为定金；</p>
                            <p id="linghuotuoguan">
                                租客在入住前
                                <select id="tuoguanCancelDay" name="" class="TdSelect" style="width: 47px;">
                                    <option selected="selected" value="2">2天</option>
                                </select>
                                的中午12:00前取消交易，将不会向您支付违约金；<span id="AddTuoguanX"><br>
                                    租客在入住前<strong id="tuoguanX" class="colorBD6600">2</strong>天内取消交易，定金不予退还<span id="AddPingTai">，由平台保留</span>。</span></p>
                            <!-- 灵活的/长租期的 -->
                            <p id="jiyantuoguanPolicy2" style="display: none;">
                                入住前<strong id="tuoguanX2" class="colorBD6600">2</strong>天内租客取消<span id="ChangZuQi">,扣除房款总额的<strong class="colorBD6600">20%</strong>作为罚金</span>， 罚金的<strong class="colorBD6600">90%</strong>支付给房东；

                            </p>
                            <p id="jiyantuoguanPolicy3" style="display: none;">
                                入住后租客取消，房东可扣除已入住的房款、未入住房款的<strong class="colorBD6600">25%</strong>，余额退还租客。
                                
                            </p>
                            <!-- 灵活的/长租期的 -->
                            <p id="jiyantuoguanPolicy" style="display: none;">
                                租客在入住前任意时间取消，扣除房款总额的<strong class="colorBD6600">100%</strong>；<br>
                                罚金的<strong class="colorBD6600">100%</strong>支付给房东
                                
                            </p>
                        </div>
                    </td>
                    <td class="PolicyTxt" id="putongPolicyTd">
                        <p>
                            租客需要在线支付房款总额的 <strong id="dingjin_fake" class="colorBD6600" style="display: none;">20%</strong>
                            <select id="dingjin" style="width: 55px;"><option selected="selected" value="20">20%</option><option value="50">50%</option><option value="100">100%</option></select><span id="span_strong_minday" style="">（订房天数小于<strong id="strong_minday" class="colorBD6600">5</strong>时，订金为1天房款）</span>与清洁费作为订金；
                        </p>
                        <p id="pShow">
                            租客在入住前
                            <select id="selCancelDay" style="width: 50px;">
                                <option selected="selected" value="1">1天</option>
                                <option value="2">2天</option>
                                <option value="3" selected="selected">3天</option>
                                <option value="4">4天</option>
                                <option value="5">5天</option>
                                <option value="6">6天</option>
                                <option value="7">7天</option>
                                <option value="8">8天</option>
                                <option value="9">9天</option>
                                <option value="10">10天</option>
                                <option value="11">11天</option>
                                <option value="12">12天</option>
                                <option value="13">13天</option>
                                <option value="14">14天</option>
                                <option value="15">15天</option>
                            </select>
                           的中午12:00前取消交易，将不会向您支付违约金；
                            <!--2012-03-22修改-->
                            <img alt="" id="imgShow" title="假设租客入住的日期是12月20日，则租客在12月17日中午12:00之前取消订单，不会向您支付违约金。在此后取消订单，按照您设定的交易规则扣除租客订金。" style="cursor: help; vertical-align: middle" src="${base}/static/publish_house_4/questionmark_hover.png">
                            <!--2012-03-22修改end-->
                        </p>
                        <p id="infoShow">
                            入住前<strong id="X" class="colorBD6600">3</strong>天内租客取消 ,扣除房款总额的，房款的<strong id="totalAccount" class="colorBD6600">20%</strong>（订房天数小于<strong id="strong_minday1" class="colorBD6600">5</strong>时,为一天房款）作为罚金， 罚金的<strong class="colorBD6600" id="punishmentAccount">90%</strong>支付给房东；
                            </p><p id="jiyanddb2">
                                入住后租客取消订单，<span id="kouQuanKuan" style="display: none;">房东可扣除全额房款和清洁费</span><span id="koukuan"> 房东可扣除已入住的房款、未入住房款的<strong id="ruzhuAccount" class="colorBD6600">25%</strong>与清洁费，余额退还给租客。</span>
                             <span class="TaR02"><a class="CancelRule" href="http://www.youtx.com/CancelRule/#low" target="_blank">详情&gt;&gt;</a></span></p>
                        <p></p>
                        <p id="jiyanPolicy" style="display: none;">
                            极严的交易规则下，租客一旦付款，则不存在免支付违约金期；<br>
                            租客在入住前任意时间取消，扣除房款总额的<strong class="colorBD6600">100%</strong>作为罚金；入住后取消扣除全部订金。罚金的<strong class="colorBD6600">90%</strong>支付给房东
                            <span class="TaR02"><a class="CancelRule" href="http://www.youtx.com/CancelRule/#low" target="_blank">详情&gt;&gt;</a></span>
                        </p>
                    </td>
                    <td class="PolicyTxt" id="tdCancelationPolicy" style="display: none;">
                        <div id="flexible" style="display:none;">
                            <p>租客在线支付全额房款；</p>
                            <p>* 租客在入住24小时前取消订单，房款全额退还给租客；</p>
                            <p>* 租客在入住前24小时内取消订单，扣除一天房费；</p>
                            <p>* 租客在入住后提前退房，扣除实际入住天数的房费及清洁费；</p>
                        </div>
                        <div id="moderate" style="display:none;">
                            <p>租客在线支付全额房款；</p>
                            <p>* 租客在入住5天前取消订单，房款全额退还给租客；</p>
                            <p>* 租客在入住前5天内取消订单，扣除第一天房费及剩余房款的50%；</p>
                            <p>* 租客在入住后提前退房，扣除剩余房款的50%及清洁费；</p>
                        </div>
                        <div id="strict" style="display:none;">
                            <p>租客在线支付全额房款；</p>
                            <p>* 租客在入住7天前取消订单，扣除房款的50%；</p>
                            <p>* 租客在入住前7天内取消订单，房款不退；</p>
                            <p>* 租客在入住后提前退房，房款不退；</p>
                        </div>
                        <div id="superStrict" style="display:none;">
                            <p>租客在线支付全额房款；</p>
                            <p>* 租客在入住30天前取消订单，扣除房款的50%；</p>
                            <p>* 租客在入住前30天内取消订单，房款不退；</p>
                            <p>* 租客在入住后提前退房，房款不退；</p>
                        </div>
                        <p class="TaR"><a style="" class="CancelRule" href="http://www.youtx.com/AbroadTradePolicy/#low" target="_blank">详情&gt;&gt;</a></p>
                    </td>
                </tr>
            </tbody></table>
            <div class="RoomArea RoomPolicy">
                <h5>
                    交易规则：</h5>
                <div class="RoomAreaTxt">
                    <div>
                        <p class="colorBD6600">
                             * 什么是交易规则？</p>
                        <p style="padding: 0 0 5px 6px;">
                            交易过程中保护房东和租客双方利益的规章制度，订单一旦成立，双方需按此执行。</p>
                        <p class="colorBD6600">
                            * 我该如何选择交易规则？</p>
                        <p style="padding-left: 6px;">
                            您可以根据房间的情况选择适当水平的交易规则，保证自己的利益。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="RoomDescription">
        <div class="RoomSituationTit">
            入住要求</div>
        <div class="RoomSituationTxt RoomSituationTxt02">
            <table width="620" border="0">
                <tbody><tr>
                    <td class="RoomSituationTxtTd">
                        <b></b>房屋使用规则：
                    </td>
                    <td>
                      <textarea name="ctl00$ctl00$body$RoomBody$HouseControlContent" id="HouseControlContent" class="textarea">* 请带好您的有效身份证件办理入住。
* 请爱护房间内设施和物品。
* 请勿将房间用于违法活动。
</textarea>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        最少入住天数：
                    </td>
                    <td class="PolicyTxt">
                        <select id="selDayMinNum">
                            <option value="1" selected="selected">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        最多入住天数：
                    </td>
                    <td class="PolicyTxt">
                        <select id="selDayMaxNum">
                            <option selected="selected">没有限制</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                            <option value="32">32</option>
                            <option value="33">33</option>
                            <option value="34">34</option>
                            <option value="35">35</option>
                            <option value="36">36</option>
                            <option value="37">37</option>
                            <option value="38">38</option>
                            <option value="39">39</option>
                            <option value="40">40</option>
                            <option value="41">41</option>
                            <option value="42">42</option>
                            <option value="43">43</option>
                            <option value="44">44</option>
                            <option value="45">45</option>
                            <option value="46">46</option>
                            <option value="47">47</option>
                            <option value="48">48</option>
                            <option value="49">49</option>
                            <option value="50">50</option>
                            <option value="51">51</option>
                            <option value="52">52</option>
                            <option value="53">53</option>
                            <option value="54">54</option>
                            <option value="55">55</option>
                            <option value="56">56</option>
                            <option value="57">57</option>
                            <option value="58">58</option>
                            <option value="59">59</option>
                            <option value="60">60</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                       入住时间：
                    </td>
                    <td class="PolicyTxt">
                         <select id="selRuZhuTime" class="TdSelect">
                            <option value="0">00:00</option>
                            <option value="1">1:00</option>
                            <option value="2">2:00</option>
                            <option value="3">3:00</option>
                            <option value="4">4:00</option>
                            <option value="5">5:00</option>
                            <option value="6">6:00</option>
                            <option value="7">7:00</option>
                            <option value="8">8:00</option>
                            <option value="9">9:00</option>
                            <option value="10">10:00</option>
                            <option value="11">11:00</option>
                            <option value="12">12:00</option>
                            <option value="13">13:00</option>
                            <option value="14" selected="selected">14:00</option>
                            <option value="15">15:00</option>
                            <option value="16">16:00</option>
                            <option value="17">17:00</option>
                            <option value="18">18:00</option>
                            <option value="19">19:00</option>
                            <option value="20">20:00</option>
                            <option value="21">21:00</option>
                            <option value="22">22:00</option>
                            <option value="23">23:00</option>
                            
                        </select>
                         至
                        <select id="selRuZhuTimeafter" class="TdSelect">
                        <option value="0">00:00</option>
                            <option value="1">1:00</option>
                            <option value="2">2:00</option>
                            <option value="3">3:00</option>
                            <option value="4">4:00</option>
                            <option value="5">5:00</option>
                            <option value="6">6:00</option>
                            <option value="7">7:00</option>
                            <option value="8">8:00</option>
                            <option value="9">9:00</option>
                            <option value="10">10:00</option>
                            <option value="11">11:00</option>
                            <option value="12">12:00</option>
                            <option value="13">13:00</option>
                            <option value="14">14:00</option>
                            <option value="15">15:00</option>
                            <option value="16">16:00</option>
                            <option value="17">17:00</option>
                            <option value="18">18:00</option>
                            <option value="19">19:00</option>
                            <option value="20">20:00</option>
                            <option value="21">21:00</option>
                            <option value="22">22:00</option>
                            <option value="23">23:00</option>
                            <option value="24" selected="selected">24:00</option>   
                        </select>
                        要求租客在此时间段内办理入住
                    </td>
                </tr>
                <tr>
                    <td class="RoomSituationTxtTd">
                        退房时间：
                    </td>
                    <td class="PolicyTxt">
                        <select id="selTuiFangTime" class="TdSelect">
                            <option selected="selected" value="25">
                                没有限制</option>
                            <option value="0">00:00</option>
                            <option value="1">1:00</option>
                            <option value="2">2:00</option>
                            <option value="3">3:00</option>
                            <option value="4">4:00</option>
                            <option value="5">5:00</option>
                            <option value="6">6:00</option>
                            <option value="7">7:00</option>
                            <option value="8">8:00</option>
                            <option value="9">9:00</option>
                            <option value="10">10:00</option>
                            <option value="11">11:00</option>
                            <option value="12" selected="selected">12:00</option>
                            <option value="13">13:00</option>
                            <option value="14">14:00</option>
                            <option value="15">15:00</option>
                            <option value="16">16:00</option>
                            <option value="17">17:00</option>
                            <option value="18">18:00</option>
                            <option value="19">19:00</option>
                            <option value="20">20:00</option>
                            <option value="21">21:00</option>
                            <option value="22">22:00</option>
                            <option value="23">23:00</option>
                            <option value="24">24:00</option>
                        </select>
                        之前
                    </td>
                </tr>
                <tr language="en">
                    <td class="RoomSituationTxtTd" style="line-height:normal;padding-top:10px">
                        是否接受非中国大陆租客：
                    </td>
                    <td>
                        <label>
                            <input value="1" name="ctl00$ctl00$body$RoomBody$Roomradio" type="radio" id="accept">&nbsp;接受</label>
                            <span style="color:#999; margin-left:15px;">可接待外宾的房源，经审核可免费进入游天下国际站进行展示。</span><br>
                        <label>
                            <input value="0" name="ctl00$ctl00$body$RoomBody$Roomradio" type="radio" id="refuse">&nbsp;不接受</label>
                    </td>
                </tr>
            </tbody></table>
        </div>
        <div class="RoomNextBtn" id="RoomNextBtn">
            <span id="RoomNextBtnPrev"><a href="http://www.youtx.com/room/newthreeplan/324548">&lt;&lt; 上一步</a></span>
            <input id="RoomNextBtnNext" style="height:35px;width:117px;" class="RoomNextBtnNext" type="button" value="下一步">
        </div>
        <div id="submit_buttonNew" class="submit_buttonNew" style="display: none;">
            <input id="btnSave" type="button" value="保 存">
        </div>
    </div>
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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="${base}/static/publish_house_4/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
      <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
        <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a> <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
      <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="${base}/static/publish_house_4/VerisignYoutx.gif" height="35" width="60"></a></li>
      <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="${base}/static/publish_house_4/FooterNetPic.gif"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" rel="nofollow"><img src="${base}/static/publish_house_4/TrustYoutx.gif" width="100" height="35px"></a></li>
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
</script><script src="${base}/static/publish_house_4/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img border="0" src="${base}/static/publish_house_4/21.gif" width="20" height="20"></a>

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
<script type="text/javascript" src="${base}/static/publish_house_4/conversion.js.下载">
</script>
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>

<script type="text/javascript">
    var bd_cpro_rtid = "nWnknWD";
</script>
<script type="text/javascript" src="${base}/static/publish_house_4/rt.js.下载"></script>
<noscript>
&lt;div style="display:none;"&gt;
&lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD" /&gt;
&lt;/div&gt;
</noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="${base}/static/publish_house_4/clicktale.js.下载" type="text/javascript"></script><script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="${base}/static/publish_house_4/Youtx_WebIM_HTML.js.下载" type="text/javascript"></script><script src="${base}/static/publish_house_4/youtx_mi_query.js.下载" type="text/javascript"></script><script src="${base}/static/publish_house_4/WebIM.js.下载" type="text/javascript"></script><script src="${base}/static/publish_house_4/WebIM.Query.js.下载" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->  
    


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="${base}/static/publish_house_4/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/publish_house_4/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div><div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;"><div class="Talk  PosRe" id="Talk"><div class="UserMenu" id="UserBox"><div class="UserMain" id="UserM" style="cursor: move;"><ul class="TabHeader" id="UserNr" style="top:0px;"></ul></div><div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar" style="display:block; top:0px;"></span></div></div><div class="Talk_center"><span class="DownArrow" style="display:none;"><img src="${base}/static/publish_house_4/dowearrow.gif" width="16" height="16"></span><ul class="Yichu" style="display:none;"></ul><div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span class="RentName"></span><span class="Chat_min"><img src="${base}/static/publish_house_4/SIcon.png" width="25" height="25"></span></div><div class="clear"></div><div id="youtx_ch_webim"></div></div><div class="Talk_right"> </div><div class="HouseRe PosAb" style="display:none;"></div></div></div><div style="display:none;"> <ul id="youtx_none_li"></ul><div id="youtx_none_div"></div> </div><div id="house_webim_s" style="display:none;"></div> <div id="soundContainer" style=" width:10px; height:10px ;"><embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window" src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle" allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></div><div id="OutBox" class="OutBox" style="top: 355px; left: 759.5px;"><div class="OutBoxbg" id="OutBoxbg"></div><a href="http://www.youtx.com/room/newfourplan/324548/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic" class="OutBoxPic" src="http://www.youtx.com/room/newfourplan/324548/" style="top: 0px;"></div><div class="ChatSmall"><div><ul id="ChatSmallUl"><li id="ChatMes" class="ChatMes">短消息（0）</li></ul><div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2><p class="All_mes"><a target="blank" href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a></p><ul class="Mes_main" id="IDUlMes_main"></ul></div></div></div></body></html>