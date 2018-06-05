; ;
SFUserAttention = {
    G_reqURLOwnRecord: 'http://www.youtx.com/housefile/default.ashx',
    Check: function (ext) {
        if (ext.indexOf('^') >= 0) {
            return "error@ext has ^ char";
        }

        if (ext == "") {
            return "error@ext is empty";
        }

        if (typeof SFUV == "undefined") {
            return "false@SFUV is undefined";
        }
        else {
            if (typeof SFUV.getcookie == "undefined")
                return "false@SFUV.getcookie is undefined";
            if (typeof SFUV.G_GlobalCname == "undefined" || typeof SFUV.G_UniqueCname == "undefined")
                return "false@SFUV.G_GlobalCname,SFUV.G_UniqueCname is undefined";
        }
        var _GUID = SFUV.getcookie(SFUV.G_GlobalCname);
        var _UNID = SFUV.getcookie(SFUV.G_UniqueCname);
        if (_GUID == "" || _UNID == "")
            return "false@GUID,UNID is not set Complete";
        return "true";
    },
    Send: function (extid, ext) {
        try {
            var arg_dctc = _dctc || {};

            var checkmsg = this.Check(ext);
            if (checkmsg.split('@')[0] == "error" || checkmsg.split('@')[0] == "false")
                return checkmsg;

            if (extid > 0) {
                var paramsExtAry = [];
                paramsExtAry['g'] = SFUV.getcookie(SFUV.G_GlobalCname);
                paramsExtAry['u'] = SFUV.getcookie(SFUV.G_UniqueCname).split('*')[0];
                paramsExtAry['extid'] = extid;
                paramsExtAry['ext'] = ext;
                var _tmpExt = [];
                var _ext = '';
                paramsExtAry['s'] = '';
                for (var p in paramsExtAry) {
                    _ext = paramsExtAry[p].toString();
                    var aa = _ext.substring(_ext.length % 8, _ext.length % 8 + 1).toString();
                    paramsExtAry['s'] += aa ? aa : 'n';
                    _tmpExt.push(p + '=' + _ext);
                }
                var tempTimeVal = new Date().getTime();

                var node = document.getElementsByTagName('script')[0];
                var imgOwnRecord = document.createElement('img');
                imgOwnRecord.src = this.G_reqURLOwnRecord + "?" + _tmpExt.join('^') + '^' + tempTimeVal;
                imgOwnRecord.width = 0;
                imgOwnRecord.height = 0;
                node.parentNode.insertBefore(imgOwnRecord, node);

                return "true";
            }
        }
        catch (e) {
            return "error@undefinedError";
        }
    }
};
