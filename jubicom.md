# 查看自己在[聚币网](https://www.jubi.com)所有的交易记录

```javascript
// 时间格式化
Date.prototype.format = function(format) {
    var date = {
        "M+": this.getMonth() + 1,
        "d+": this.getDate(),
        "h+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        "S+": this.getMilliseconds()
    };
    if (/(y+)/i.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + '').substr(4 - RegExp.$1.length));
    }
    for (var k in date) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? date[k] : ("00" + date[k]).substr(("" + date[k]).length));
        }
    }
    return format;
}
var idArr = []; // 缓存所有 币种的 id
var nameArr = []; // 缓存所有 币种的 name
var obj = {}; // 组合数据 id 和 name
// 请求所有的币种的 id
$.ajax({
    type: "get",
    url: "https://www.jubi.com/ajax/user/finance?t=" + new Date().getTime(),
    success: function (data) {
        data = JSON.parse(data);
        idArr = Object.keys(data.msg);
        for (var i = 0; i < data.msg.length; i++) {
            var element = data.msg[i];
            nameArr[i] = element
        }
        // 请求所有的币种的 name
        $.ajax({
            type: "get",
            url: "https://www.jubi.com/coin/allcoin?t="+new Date().getTime(),
            success: function (res) {
				      res = JSON.parse(res);
				      var _arr = Object.keys(res);
                for (var j = 0; j < Object.keys(res).length; j++) {
                    var element = res[_arr[j]];
                    nameArr[j] = element[0];
                }
                for (var k = 0; k < idArr.length; k++) {
                    obj[k] = {
                        "id": idArr[k],
                        "name": nameArr[k]
                    };
                }
                for (var m = 0; m < Object.keys(obj).length; m++) {
                    var element = obj[m];
                    (function(element){
                        $.ajax({
                            type: "get",
                            url: "https://www.jubi.com/ajax/trade/order/coin/"+ element.id +"/type/3?p=1",
                            success: function (response) {
                                response = JSON.parse(response);
                                var str = "";
                                var item = response.data.datas;
                                if(item.length > 0){
                                    for (var n = 0; n < item.length; n++) {
                    										// c 成交时间 // f 手续费 // n 成交量 // p 成交价格 // s 成交金额 // t 买/卖
                                        var oooo = item[n];
                                        if(element.name){
                                            str += element.name + "：" + new Date((oooo.c + "000") * 1).format("MM月dd日 hh:mm:SS") +" 以：" + oooo.p + " " + oooo.t + " 成交量：" + oooo.n + " 成交金额：" + oooo.s
                                        }else{
                                            str += element.id + "：" + new Date((oooo.c+ "000") * 1).format("MM月dd日 hh:mm:SS") +" 以：" + oooo.p + " " + oooo.t + " 成交量：" + oooo.n + " 成交金额：" + oooo.s
                                        }
                                        str += "\n";
                                    }
                                    console.log(str)
                                }
                            },
                            fail: function(res){
                                console.log(res);
                            }
                        });
                    })(element);
                }
            },
            fail: function(res){
                console.log(res);
            }
        });
    },
    fail: function(res){
        console.log(res);
    }
});
```

娱乐一下。
