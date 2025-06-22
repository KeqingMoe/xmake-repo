# KeqingMoe/xmake-repo

自用仓库喵

## 使用说明

在终端执行

```shell
xmake repo --add keqingmoe-repo https://github.com/KeqingMoe/xmake-repo.git
```

或者在 xmake.lua 中添加：

```xmake
add_repositories("keqingmoe-repo https://github.com/KeqingMoe/xmake-repo.git")
```

即可。

然后您可以开始使用这里的库，例如：

```xmake
add_requires("argparse fix-xmake-modules", {
    configs = {
        enable_module = true,
        enable_std_import = true
    }
})
```
