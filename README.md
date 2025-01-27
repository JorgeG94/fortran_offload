# fpm-openacc-bug_questionmark
A simple reproducible of a bug in the FPM 


## How to build 
First, use one of the scripts in [here](https://github.com/lmarzen/OpenMP-nvptx-offload-build-tools/tree/main) to build your accelerated supported gcc. Then: 


`FPM_FC=$GCC_DIR/bin/gfortran fpm build --flag="-fopenacc" --link-flag="-fopenacc -lcublas" --verbose`
