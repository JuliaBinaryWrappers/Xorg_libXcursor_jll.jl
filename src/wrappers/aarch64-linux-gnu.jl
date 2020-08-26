# Autogenerated wrapper script for Xorg_libXcursor_jll for aarch64-linux-gnu
export libXcursor

using Xorg_libXfixes_jll
using Xorg_libXrender_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libXcursor`
const libXcursor_splitpath = ["lib", "libXcursor.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libXcursor_path = ""

# libXcursor-specific global declaration
# This will be filled out by __init__()
libXcursor_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libXcursor = "libXcursor.so.1"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Xorg_libXcursor")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Xorg_libXfixes_jll.PATH_list, Xorg_libXrender_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Xorg_libXfixes_jll.LIBPATH_list, Xorg_libXrender_jll.LIBPATH_list,))

    global libXcursor_path = normpath(joinpath(artifact_dir, libXcursor_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libXcursor_handle = dlopen(libXcursor_path)
    push!(LIBPATH_list, dirname(libXcursor_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

