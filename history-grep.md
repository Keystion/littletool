#### history 和 grep 搭配 模糊匹配用过的命令

不全乎，只要自己想玩，可以找到很多好玩的命令（毕竟我这菜鸟会的不多）。

如果你在终端里面已经敲过N多行（上千条+）命令了，想要查自己以前输入过的命令，单独的使用`history`可能无法满足你的需求，这时候可能你需要一个很好的办法来优化这一个过程；那么你可以尝试下`history`和`grep`搭配使用。

```
496  ls -la
497  ls
498  history
499  ls
500  cd domains
501  cd ..
502  ls
503  history
504  cd ls
505  ls
506  cd data
507  ls
508  cd ..
509  cd domains
510  ls
511  cd ..
512  history
```

---

不错的效果

`history | grep 'npm init'`

```
  603  npm init
  605  npm init --yes
  656  npm init
  999  npm init
 1459  npm init
```


> 从开始第一行命令开始看起，需要按方向键:

```
history | less
```

> 查看最近的10行命令，您可以使用以下:

```
history | tail
```

> 查看最近的25行命令，使用以下:

```
history 25
```


#### wiki

自己Google到的，想玩的可以自己去涉猎一下周边的东西。

- [15 Examples To Master Linux Command Line History](http://www.thegeekstuff.com/2008/08/15-examples-to-master-linux-command-line-history)
- [The Power of Linux “History Command” in Bash Shell](http://www.tecmint.com/history-command-examples/)
- [USING THE HISTORY COMMAND](https://mediatemple.net/community/products/dv/204404624/using-the-history-command)
- [12 Practical Examples of Linux grep Command](http://www.tecmint.com/12-practical-examples-of-linux-grep-command/)
- [GNU Grep 2.25](http://www.gnu.org/software/grep/manual/grep.html)
