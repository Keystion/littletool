打开Chrome 并全屏.scpt

```
do shell script "open '/Applications/Google Chrome.app' https://webclown.net/"
tell application "Google Chrome" to activate
tell application "System Events"
	keystroke "f" using {command down, control down}
end tell
```
