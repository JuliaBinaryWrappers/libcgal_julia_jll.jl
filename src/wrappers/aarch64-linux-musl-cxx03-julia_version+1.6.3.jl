# Autogenerated wrapper script for libcgal_julia_jll for aarch64-linux-musl-cxx03-julia_version+1.6.3
export libcgal_julia_exact, libcgal_julia_inexact

using CGAL_jll
using libcxxwrap_julia_jll
JLLWrappers.@generate_wrapper_header("libcgal_julia")
JLLWrappers.@declare_library_product(libcgal_julia_exact, "libcgal_julia_exact.so.0")
JLLWrappers.@declare_library_product(libcgal_julia_inexact, "libcgal_julia_inexact.so.0")
function __init__()
    JLLWrappers.@generate_init_header(CGAL_jll, libcxxwrap_julia_jll)
    JLLWrappers.@init_library_product(
        libcgal_julia_exact,
        "lib/libcgal_julia_exact.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcgal_julia_inexact,
        "lib/libcgal_julia_inexact.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
