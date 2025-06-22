# hardening-stl

加固标准库相关参数的纯规则包，仅支持 clang。

## 使用说明

```xmake
add_requires("hardening-stl")
```

在 `target` 中无需 `add_package`，直接 `add_rules` 即可。

```xmake
    add_rules("@hardening-stl/none")
    add_rules("@hardening-stl/fast")
    add_rules("@hardening-stl/extensive")
    add_rules("@hardening-stl/debug")
```

以上规则四选一，不可以同时使用。
