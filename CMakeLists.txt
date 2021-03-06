cmake_minimum_required(VERSION 3.12)
project(tensor)

set(CMAKE_CXX_STANDARD 14)

include_directories(./include)

include_directories(/opt/intel/mkl/include)
link_directories(/opt/intel/mkl/lib/intel64)
link_libraries(libmkl_core.a libmkl_blas95_ilp64.a libmkl_rt.so)

include_directories(/usr/local/fftw/include)
link_directories(/usr/local/fftw/lib)
link_libraries(libfftw3.a libfftw3f.a)

#FIND_PACKAGE(fftw REQUIRED)
#if(fftw_FOUND)
#    message("fftw FOUND")
#    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${fftw_C_FLAGS}")
#    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${fftw_CXX_FLAGS}")
#    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${fftw_EXE_LINKER_FLAGS}")
#endif()


FIND_PACKAGE(OpenMP REQUIRED)
if(OPENMP_FOUND)
    message("OPENMP FOUND")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
endif()


add_executable(tensor
        src/main.cpp
        src/tensor_hooi.cpp
        src/cpd_als.cpp src/t_svd.cpp src/tucker_hosvd.cpp src/cpd_gen.cpp src/Tensor3D.cpp src/tensor_train.cpp src/mode_n_product.cpp src/pinv.cpp)
