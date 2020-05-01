# Docker LATEX
Dockerで構築するLatex環境。
Ubunu上にTexLiveを載せている。

## Usage 

### Build 
```shell 
$ docker build -t latex:1.0 ./
```

### Run
```shell
$ docker run -it latex:1.0
```

Curent Working DIR is mounted on Data volume.



