## Magic ToolFlash

An android CLI flash tool without custom recoveries. Usage in Terminal Emulator or Termux with Root access: 
```
flash [ZIP...]
```

Path to ZIP should be full and multiple ZIP at same time are allowed. **Busybox must be installed!!**

<img src="https://github.com/HuskyDG/huskydg.github.io/raw/main/img/Screenshot_20220411-162531_Terminal_Emulator.png" width="500px"/>

Android environment will no longer be used. Instead, Magic FlashTool will create a new environment and flashing will be performed in isolated chroot environment to match with Custom Recovery environment.

**IMPORTANT: Only use this for flashing mods zip (magisk module, magisk update, mods zip, ...) Do not use this tool to flash ROM while Android system is running because it will lead to bootloop**

### Known issues

- (Solved) ~~The flashable zip that uses `/tmp` as temporary directory will not work as `/tmp` does not exist on Android root directory. Please prefer to use `/dev/tmp` as temporary directory.~~
- (Solved) ~~The flashable zip hardcoded `/sbin` in command might not work because `/sbin` doesn't always exist on Android 11+~~
