#### Downloading an web site with wget

`iTerm or Terminal（终端）`

simple code

```
wget -r -p -np -k --restrict-file-names=nocontrol [url]
```

---

把文件保存到指定的目录下：

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

- Homebrew
- MacPorts

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
