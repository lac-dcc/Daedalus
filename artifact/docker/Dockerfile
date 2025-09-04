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
	python3-venv \
	clang

RUN python3 -m venv /src/venv-py
ENV PATH="/src/venv-py/bin:$PATH"
RUN python3 -m pip install --upgrade pandas scipy psutil

# Clone and Build LLVM 17
RUN git clone --depth 100 -b merge-functions-pass https://github.com/Casperento/llvm-project.git 
WORKDIR llvm-project
RUN mkdir -p build
RUN cmake -G Ninja \
	-DCMAKE_C_COMPILER=clang \
	-DCMAKE_CXX_COMPILER=clang++ \
	-DLLVM_ENABLE_PROJECTS='clang;compiler-rt;lld' \
	-DCMAKE_BUILD_TYPE="Release" \
	-DLLVM_TARGETS_TO_BUILD=X86 \
	-DLLVM_ENABLE_ASSERTIONS=On \
	-S llvm -B build
RUN cmake --build build -- -j 10
ENV PATH="/src/llvm-project/build/bin:$PATH"

# Clone and Build Daedalus
WORKDIR /src
RUN git clone -b main https://github.com/lac-dcc/Daedalus.git
WORKDIR Daedalus
RUN mkdir -p build
RUN cmake -G Ninja -DLLVM_DIR=/src/llvm-project -S . -B build
RUN cmake --build build

# Clone and Build LLVM 17 - Test Suite 
WORKDIR /src
RUN git clone --depth 100 -b daedalus https://github.com/Casperento/llvm-test-suite.git
WORKDIR llvm-test-suite
RUN mkdir -p build
RUN mkdir -p /lit-results

# Clone daedalus-dbg-toolkit to run the experiment
WORKDIR /src
RUN git clone https://github.com/Casperento/daedalus-dbg-toolkit.git
RUN python3 -m pip install -r /src/daedalus-dbg-toolkit/requirements.txt

# Build llvm with func-merging pass
RUN git clone --depth 100 -b code-size https://github.com/rcorcs/llvm-project.git code-size
WORKDIR code-size
RUN mkdir -p build
RUN cmake -G Ninja \
	-DCMAKE_C_COMPILER=clang \
	-DCMAKE_CXX_COMPILER=clang++ \
	-DLLVM_ENABLE_PROJECTS='clang;compiler-rt;lld' \
	-DCMAKE_BUILD_TYPE="Release" \
	-DLLVM_TARGETS_TO_BUILD=X86 \
	-DLLVM_ENABLE_ASSERTIONS=On \
	-S llvm -B build
RUN cmake --build build -- -j 10
WORKDIR /src/daedalus-dbg-toolkit
RUN ./run-experiment.sh -w 10 \
	-t 120 \
	--llvm-project /src/llvm-project \
	--code-size-llvm-project /src/code-size \
	--llvm-test-suite /src/llvm-test-suite \
	--daedalus /src/Daedalus \
	--lit-results /lit-results \
	--errors-dbg /src/daedalus-dbg-toolkit
