# Autogenerated wrapper script for libcgal_julia_jll for x86_64-w64-mingw32-cxx11-julia_version+1.7.0
export libcgal_julia_exact, libcgal_julia_inexact

using CGAL_jll
using libcxxwrap_julia_jll
JLLWrappers.@generate_wrapper_header("libcgal_julia")
JLLWrappers.@declare_library_product(libcgal_julia_exact, "libcgal_julia_exact.dll")
JLLWrappers.@declare_library_product(libcgal_julia_inexact, "libcgal_julia_inexact.dll")
function __init__()
    JLLWrappers.@generate_init_header(CGAL_jll, libcxxwrap_julia_jll)
    JLLWrappers.@init_library_product(
        libcgal_julia_exact,
        "bin\\libcgal_julia_exact.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcgal_julia_inexact,
        "bin\\libcgal_julia_inexact.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
