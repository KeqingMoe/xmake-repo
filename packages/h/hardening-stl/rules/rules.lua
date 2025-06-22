local prefix = "-D_LIBCPP_HARDENING_MODE=_LIBCPP_HARDENING_MODE_"

rule("none")
    on_config(function (target)
        target:add("cxxflags", prefix .. "NONE")
    end)

rule("fast")
    on_config(function (target)
        target:add("cxxflags", prefix .. "FAST")
    end)

rule("extensive")
    on_config(function (target)
        target:add("cxxflags", prefix .. "EXTENSIVE")
    end)

rule("debug")
    on_config(function (target)
        target:add("cxxflags", prefix .. "DEBUG")
    end)
