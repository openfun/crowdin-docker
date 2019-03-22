# crowdin-cli docker image

This repository contains the `Dockerfile` to build image for [crowdin-cli](https://github.com/crowdin/crowdin-cli-2)

## Building the image

```bash
$ docker build -t fundocker/crowdin:TAG .
```

## Using the image

This image entrypoint will directly run `crowdin`, you will just have to add the command you want to run. For the `list` command for example:

```bash
$ docker run --rm -it fundocker/crowdin list project
```


