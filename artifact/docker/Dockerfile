FROM debian:12
WORKDIR /src

RUN apt update && apt upgrade -y
RUN apt install -y sudo \
                   git \
                   tcl \
                   tcl-dev \
                   vim \
                   build-essential \
                   cmake \
                   ninja-build \
                   python3 \
                   python3-scipy \
                   python3-pandas \
                   python3-psutil

# Clone and Build LLVM 17
RUN git clone --depth 100 -b merge-functions-pass https://github.com/Casperento/llvm-project.git 
WORKDIR llvm-project
RUN mkdir -p build
RUN cmake -G Ninja \
          -DLLVM_ENABLE_PROJECTS='clang;compiler-rt;lld' \
          -DCMAKE_BUILD_TYPE="Release" \
          -DLLVM_TARGETS_TO_BUILD=X86 \
          -DLLVM_ENABLE_ASSERTIONS=On \
          -S llvm -B build
RUN cmake --build build -- -j 16
ENV PATH="/src/llvm-project/build/bin:$PATH"

# Clone and Build Daedalus
WORKDIR /src
RUN git clone -b dev1 https://github.com/lac-dcc/Daedalus.git
WORKDIR Daedalus
RUN mkdir -p build
RUN cmake -G Ninja -DLLVM_DIR=/src/llvm-project/build/lib/cmake/llvm -S . -B build
RUN cmake --build build

# Clone and Build LLVM 17 - Test Suite 
WORKDIR /src
RUN git clone -b daedalus https://github.com/Casperento/llvm-test-suite.git
WORKDIR llvm-test-suite
RUN mkdir -p build
RUN mkdir -p /lit-results

RUN cmake --fresh -G "Ninja" \
	-DCMAKE_C_COMPILER=clang \
	-DCMAKE_CXX_COMPILER=clang++ \
	-DCMAKE_C_FLAGS="-flto" \
	-DCMAKE_CXX_FLAGS="-flto" \
	-DTEST_SUITE_COLLECT_INSTCOUNT=ON \
	-DTEST_SUITE_SELECTED_PASSES= \
	-DTEST_SUITE_PASSES_ARGS= \
	-DTEST_SUITE_COLLECT_COMPILE_TIME=OFF \
	-DCMAKE_EXE_LINKER_FLAGS="-flto -fuse-ld=lld -Wl,--plugin-opt=-lto-embed-bitcode=post-merge-pre-opt" \
	"-DTEST_SUITE_SUBDIRS=SingleSource;MultiSource" \
	-C "cmake/caches/Os.cmake" \
	-S . -B build
RUN cmake --build build -- -j 16 || exit
RUN llvm-lit --timeout 100 -j 16 -s -o ~/lit-results/baseline_Os.json build || exit

RUN cmake --fresh -G "Ninja" \
	-DCMAKE_C_COMPILER=clang \
	-DCMAKE_CXX_COMPILER=clang++ \
	-DCMAKE_C_FLAGS="-flto" \
	-DCMAKE_CXX_FLAGS="-flto" \
	-DTEST_SUITE_COLLECT_INSTCOUNT=ON \
	-DTEST_SUITE_SELECTED_PASSES=daedalus \
	"-DTEST_SUITE_PASSES_ARGS=-load-pass-plugin=/home/rafackstein/src/github/Daedalus/build/lib/libdaedalus.so" \
	-DTEST_SUITE_COLLECT_COMPILE_TIME=OFF \
	-DCMAKE_EXE_LINKER_FLAGS="-flto -fuse-ld=lld -Wl,--plugin-opt=-lto-embed-bitcode=post-merge-pre-opt" \
	"-DTEST_SUITE_SUBDIRS=SingleSource;MultiSource" \
	-C "cmake/caches/Os.cmake" \
	-S . -B build
RUN cmake --build build -- -k 0 -j 16 || exit
RUN llvm-lit --timeout 100 -j 16 -s -o ~/lit-results/daedalus_Os.json build || exit

RUN python3 utils/compare.py --full --diff -m instcount -m size..text ~/lit-results/baseline_Os.json ~/lit-results/daedalus_Os.json > ~/lit-results/results.txt
