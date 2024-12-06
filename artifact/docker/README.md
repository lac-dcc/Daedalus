Given the Dockerfile in this directory, one needs to run the following commands to build the image:

```bash
$ docker build -t daedalus-artifact .
```

After that, it is possible to interact with the experiment results by running the existing container:

```bash
$ docker run -ti daedalus-artifact
```
