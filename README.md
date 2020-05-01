# Docker LATEX
Dockerで構築するLatex環境。
Ubunu上にTexLiveを載せている。

latexmkを利用して、指定したファイルを監視、自動コンパイルを行う。

## Usage 

### Build 
```shell 
$ docker build -t latex　./
```

### Run
```shell
$ docker run -v $PWD:/data -it latex:1.0 latex.tex
```

Curent Working DIR is mounted on Data volume.



