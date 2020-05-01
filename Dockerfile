FROM ubuntu:18.04
LABEl maintainer="oyopen<otyogupenguin@gmail.com>"


RUN echo "building...."
RUN apt-get update
RUN apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

RUN apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $PWD/data

VOLUME [$PWD]
CMD ["bash"]
