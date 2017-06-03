# CCTV 直播页面全屏

[tv.cntv.cn/live/](http://tv.cntv.cn/live/)

右键审查元素 - console面板，输入一下代码即可全屏。

```
(function(){
    $('.column_wrapper_160119').remove();
    $('.gwA151201_ind01').remove();
    $('.clear').eq(0).remove();
    $('.ELMT5PXfc4VDe7IE7NxHl4YU160202').remove();
    $('.ELMTKgYWJbtqsgPFmQklaBY4160119').remove();
    $('.column_wrapper_xw_160113').css({"width": "100%"});
    $('.column_wrapper_1000_xw_160113').css({"width": "100%"})
    $('.gwA151201_zb02_160128').css({"float": "initial"})
    $('embed').attr({"width": "100%", "height": $(window)[0].screen.height})
})()
```

Done，关闭控制台。Enjoy it.
