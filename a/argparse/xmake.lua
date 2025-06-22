package("argparse")
    set_kind("library")
    set_homepage("https://github.com/p-ranav/argparse")
    set_description("A single header argument parser for C++17")
    set_license("MIT")

    add_configs("enable_module", { default = false, type = "boolean" })
    add_configs("enable_std_import", { default = false, type = "boolean" })
    
    add_urls("https://github.com/KeqingMoe/argparse.git")

    on_install(function (package)
        local configs = {}
        if package:config("enable_module") then
            configs.enable_module = "ENABLE_MODULE"
        end
        if package:config("enable_std_import") then
            configs.enable_std_import = "ENABLE_STD_IMPORT"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        assert(package:check_cxxsnippets({test = [[
            void test() {
                argparse::ArgumentParser test("test");
            }
        ]]}, {configs = {languages = "c++17"}, includes = "argparse/argparse.hpp"}))
    end)
