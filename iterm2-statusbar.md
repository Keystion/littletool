# iterm2 statusbar

<img src="https://user-images.githubusercontent.com/2408287/157455317-dce32567-9bed-4cbe-872c-891ec7a158cf.png" width="400px">

## 开始

### 基础配置

编辑 .zshrc 最后一行添加：`source ~/.iterm2_shell_integration.zsh`

```
vi ~/.zshrc
```

<img src="https://user-images.githubusercontent.com/2408287/157456037-c7b887eb-4b8a-4cf7-9849-49fce2931355.png" width="400px">

编辑 .iterm2_shell_integration.zsh 添加变量

```
vi ~/.iterm2_shell_integration.zsh
```
找到 `iterm2_print_user_vars()` 方法，在方法内添加变量

```shell
iterm2_set_user_var phpVersion $(php -v | awk '/^PHP/ { print $2 }')
iterm2_set_user_var rubyVersion $(ruby -v | awk '{ print $2 }')
iterm2_set_user_var nodeVersion $(node -v)
```
<img src="https://user-images.githubusercontent.com/2408287/157456565-5d173b95-bde1-4c5b-88c5-a97c28dbd18d.png" width="800px">

配置文件 done

### 使用配置

```
Node: \(user.nodeVersion)

PHP: \(user.phpVersion)

Ruby: \(user.rubyVersion)
```

<img src="https://user-images.githubusercontent.com/2408287/157455374-3e7f10d9-6d99-470c-8016-3d36330a308c.png" width="400px">

<img src="https://user-images.githubusercontent.com/2408287/157455549-5ba027ee-ebe5-41b2-a4ab-3861caa06cc6.png" width="400px">

<img src="https://user-images.githubusercontent.com/2408287/157457016-2a3b37de-9b2b-459c-9666-1998249f3c65.png" width="400px">

<img src="https://user-images.githubusercontent.com/2408287/157457141-0251eed1-15d7-40e0-b23e-5bc30038be6e.png" width="400px">

<img src="https://user-images.githubusercontent.com/2408287/157457281-c92e1816-c900-4f8f-9e75-b9ece83565b9.png" width="400px">

**All done. 重新打开iterm2 看下效果。**
