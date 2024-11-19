#FROM nvidia/cuda:12.3.2-cudnn9-runtime-ubuntu22.04
FROM nvidia/cuda:12.3.2-base-ubuntu22.04
# Base python3 env
RUN apt update -qq && apt install -qy python3-dev python3-pip
RUN pip install numpy huggingface-hub

# PyCUDA
RUN apt update -qq && apt install -qy cuda-nvcc-12-3 cuda-profiler-api-12-3 libcurand-dev-12-3
RUN pip install pycuda

# llama-cpp-python
RUN apt update -qq && apt install -qy libcublas-12-3 
RUN pip install  --only-binary ':all:' llama-cpp-python --extra-index-url https://abetlen.github.io/llama-cpp-python/whl/cu123

# ldconfig is important to update dynlib cache
RUN ldconfig
# Copy example code
COPY *.py /code/
RUN chmod +x /code/*.py

CMD ["sleep", "inf"]
