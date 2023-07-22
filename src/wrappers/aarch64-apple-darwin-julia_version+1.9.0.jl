# Autogenerated wrapper script for libcgal_julia_jll for aarch64-apple-darwin-julia_version+1.9.0
export libcgal_julia_exact, libcgal_julia_inexact

using CGAL_jll
using libcxxwrap_julia_jll
JLLWrappers.@generate_wrapper_header("libcgal_julia")
JLLWrappers.@declare_library_product(libcgal_julia_exact, "@rpath/libcgal_julia_exact.0.dylib")
JLLWrappers.@declare_library_product(libcgal_julia_inexact, "@rpath/libcgal_julia_inexact.0.dylib")
function __init__()
    JLLWrappers.@generate_init_header(CGAL_jll, libcxxwrap_julia_jll)
    JLLWrappers.@init_library_product(
        libcgal_julia_exact,
        "lib/libcgal_julia_exact.0.18.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcgal_julia_inexact,
        "lib/libcgal_julia_inexact.0.18.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
