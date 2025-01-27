# fpm + openacc + gpu 

A how to run an openacc accelerated program using the fpm, using the interfaces from https://github.com/SourceryTools/fortran-cuda-interfaces/tree/master


## How to build and run  
First, use one of the scripts in [here](https://github.com/lmarzen/OpenMP-nvptx-offload-build-tools/tree/main) to build your accelerated supported gcc. Then: 

`FPM_FFLAGS="-fopenacc" FPM_LDFLAGS="-lcublas" fpm run`

If you are lazy, you can create a setup.sh which will export those variables for the FPM.

```
export FPM_FFLAGS="-fopenacc" 
export FPM_LDFLAGS="-lcublas"
```
