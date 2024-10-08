FROM debian:12
WORKDIR /src

RUN apt update && apt upgrade -y
RUN apt install -y sudo \
                   git \
                   build-essential \
                   cmake \
                   ninja-build \
                   python3

# Clone repositories
RUN git clone --depth 100 -b merge-functions-pass https://github.com/Casperento/llvm-project.git 

# Clone and Build LLVM 17
WORKDIR llvm-project
RUN mkdir -p build
RUN cmake -G Ninja \
          -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
          -DLLVM_ENABLE_PROJECTS='clang;compiler-rt;lld' \
          -DCMAKE_BUILD_TYPE="Release" \
          -DLLVM_TARGETS_TO_BUILD=X86 \
          -DLLVM_ENABLE_ASSERTIONS=On \
          -S llvm -B build
RUN cmake --build build
ENV PATH="/src/llvm-project/build/bin:$PATH"

# Clone and Build Daedalus
WORKDIR /src
RUN git clone -b dev1 https://github.com/lac-dcc/Daedalus.git
WORKDIR Daedalus
RUN mkdir -p build
RUN cmake -G Ninja -DLLVM_DIR=/src/llvm-project/build/lib/cmake/llvm -S . -B build
RUN cmake --build build

# Clone and Build LLVM 17 - Test Suite 
RUN apt install -y tcl tcl-dev
WORKDIR /src
RUN git clone -b instcount https://github.com/Casperento/llvm-test-suite.git
WORKDIR llvm-test-suite
RUN mkdir -p build
RUN cmake -G Ninja \
          -DCMAKE_C_COMPILER=clang \
          -DCMAKE_CXX_COMPILER=clang++ \
          -DCMAKE_C_FLAGS="-flto" \
          -DCMAKE_CXX_FLAGS="-flto" \
          -DTEST_SUITE_COLLECT_INSTCOUNT=ON \
          -DTEST_SUITE_SELECTED_PASSES= \
          -DTEST_SUITE_PASSES_ARGS= \
          -DTEST_SUITE_COLLECT_COMPILE_TIME=OFF \
          -DCMAKE_EXE_LINKER_FLAGS="-flto -fuse-ld=lld -Wl,--plugin-opt=-lto-embed-bitcode=post-merge-pre-opt" \
          -C cmake/caches/O1.cmake \
          -S . -B build
RUN cmake --build build

# Install LIT dependencies and Run it
RUN mkdir -p /lit-results
RUN apt install -y python3-pandas \
                   python3-scipy 
WORKDIR /src/llvm-test-suite/build
RUN llvm-lit -v -o /lit-results/results_instcount.json .

