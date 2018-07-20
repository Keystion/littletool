#### Downloading an web site with wget

`iTerm or Terminal（终端）`

simple code

```
wget -r -p -np -k --restrict-file-names=nocontrol --no-check-certificate -e robots=off [url]
```

- `--restrict-file-names=nocontrol`: 防止乱码
- `--no-check-certificate`: https
- `-e robots=off`: 避开`robots.txt`规则
---

Save the file to the specified directory：

> image from Weibo.com

file.txt
```
http://ww2.sinaimg.cn/mw690/b0f11a02gw1f9bktaq9x8j20g80g8dj2.jpg
http://ww3.sinaimg.cn/orj480/006wFx6Agw1f9cqjhiinnj31hc1z41kx.jpg
```

cmd line

```
wget -P [PATH] -i file.txt
```

#### install wget

- [Homebrew](http://brew.sh/)
- [MacPorts](https://www.macports.org/)

#### little shell

[wget.sh](./wget.sh)

put it in `/Users/$user`

```
chmod -x wget.sh // Writable

./wget [url] // Any directory
```

#### Wiki

- https://en.wikipedia.org/wiki/Wget
- https://wiki.ubuntuusers.de/wget/

#### Update

- 2017.3.31 add param `--no-check-certificate`，When downloading https site, ignore certificate validation
