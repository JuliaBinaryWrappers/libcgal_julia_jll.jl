# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libcgal_julia_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libcgal_julia")
JLLWrappers.@generate_main_file("libcgal_julia", UUID("e9ad47b2-a301-5fb7-a0bd-6eece649b37c"))
end  # module libcgal_julia_jll
