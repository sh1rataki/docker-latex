FROM ubuntu:18.04
LABEl maintainer="oyopen<oyogupenguin@gmail.com>"


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

COPY ./.latexmkrc /root/.latexmkrc


WORKDIR $PWD/data

VOLUME [$PWD]
#CMD ["bash"]
ENTRYPOINT latexmk -pvc $@
