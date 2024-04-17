# FILENAME: install_all_files.cmake
# -----------------------------------------------------------------------------
# DESCRIPTION: Defines a function to install all necessary files to the appropriate 
# directories in the build environment. It utilizes custom install_file commands 
# for organized file deployment.
# -----------------------------------------------------------------------------

function(install_all_files)
    install_file("${CMAKE_SOURCE_DIR}/projects/test_project/local/test_local.py" "projects/test_project" "local")
    install_file("${CMAKE_SOURCE_DIR}/docs/build_system.md" "projects/test_project" "docs")
endfunction(install_all_files)

# *** end of file ***
