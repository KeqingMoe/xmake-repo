# argparse

这是 argparse 模块化的远程包。argparse 本身对模块的处理有 bug，官方 xmake-repo 也没有做相关处理。

这是在 argparse 合并我的 PR 之前的折中手段。

## 使用说明

```xmake
add_requires("argparse fix-xmake-modules", {
    configs = {
        enable_module = true,
        enable_std_import = true
    }
})
```

不要漏了 `fix-xmake-modules`，因为对 argparse 的改动处于该分支。
