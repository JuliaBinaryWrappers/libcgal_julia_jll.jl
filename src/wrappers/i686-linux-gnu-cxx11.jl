# Autogenerated wrapper script for libcgal_julia_jll for i686-linux-gnu-cxx11
export libcgal_julia_exact, libcgal_julia_inexact

using CGAL_jll
using libcxxwrap_julia_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libcgal_julia_exact`
const libcgal_julia_exact_splitpath = ["lib", "libcgal_julia_exact.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcgal_julia_exact_path = ""

# libcgal_julia_exact-specific global declaration
# This will be filled out by __init__()
libcgal_julia_exact_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcgal_julia_exact = "libcgal_julia_exact.so"


# Relative path to `libcgal_julia_inexact`
const libcgal_julia_inexact_splitpath = ["lib", "libcgal_julia_inexact.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcgal_julia_inexact_path = ""

# libcgal_julia_inexact-specific global declaration
# This will be filled out by __init__()
libcgal_julia_inexact_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcgal_julia_inexact = "libcgal_julia_inexact.so"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"libcgal_julia")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CGAL_jll.PATH_list, libcxxwrap_julia_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CGAL_jll.LIBPATH_list, libcxxwrap_julia_jll.LIBPATH_list,))

    global libcgal_julia_exact_path = normpath(joinpath(artifact_dir, libcgal_julia_exact_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcgal_julia_exact_handle = dlopen(libcgal_julia_exact_path)
    push!(LIBPATH_list, dirname(libcgal_julia_exact_path))

    global libcgal_julia_inexact_path = normpath(joinpath(artifact_dir, libcgal_julia_inexact_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcgal_julia_inexact_handle = dlopen(libcgal_julia_inexact_path)
    push!(LIBPATH_list, dirname(libcgal_julia_inexact_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

