# FILENAME: add_all_libs.cmake
# -----------------------------------------------------------------------------
# DESCRIPTION: Defines a function to add and link all custom libraries necessary 
# for the project. This includes specifying the directories containing the 
# libraries' source and include files and setting up their inter-library dependencies.
# -----------------------------------------------------------------------------

function(add_all_libs)
    # Add libraries specifying their directories
    add_lib(Common DIRS libraries/Common)

endfunction(add_all_libs)

# *** end of file ***
