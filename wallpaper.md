#### Get wallpaper url with Javascript

`Cheome Dev Tool` 

Wallpaper site: :point_right: [:link:](https://interfacelift.com/wallpaper/downloads/date/any/) :point_left:

![Interfacelift.com](https://interfacelift.com/img_NEW/ifl-logo@2x.png)

1. Open `Google Chrome` app;
2. `Command` + `option` +  `j`, Open `Console` panel;
3. Copy this code:
  
  ```
  var i = 0, j = [], a = document.querySelectorAll('[href$=".jpg"]');
  for (i; i < a.length; i++) {
          j[i] = a.item(i)['href'];
  }
  j.join();
  ```
4. Paste the Console,Execution;
5. Click result;
6. Tools bulk download；

:stuck_out_tongue:

Updata time: 12/26 2015
