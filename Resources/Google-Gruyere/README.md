# 🧀 Google Gruyere

## ⚡ Install

```bash
$ ./run.sh 
[+] Building 1.1s (8/8) FINISHED                                                                                                              docker:default
 => [internal] load build definition from Dockerfile                                                                                                    0.0s
 => => transferring dockerfile: 136B                                                                                                                    0.0s
 => [internal] load metadata for docker.io/library/python:2.7-slim                                                                                      0.9s
 => [internal] load .dockerignore                                                                                                                       0.0s
 => => transferring context: 2B                                                                                                                         0.0s
 => [1/3] FROM docker.io/library/python:2.7-slim@sha256:6c1ffdff499e29ea663e6e67c9b6b9a3b401d554d2c9f061f9a45344e3992363                                0.0s
 => [internal] load build context                                                                                                                       0.1s
 => => transferring context: 1.89kB                                                                                                                     0.0s
 => CACHED [2/3] WORKDIR /app                                                                                                                           0.0s
 => [3/3] COPY . /app/                                                                                                                                  0.0s
 => exporting to image                                                                                                                                  0.0s
 => => exporting layers                                                                                                                                 0.0s
 => => writing image sha256:2a8270309a75b864b4cb4b2eb50eb7666db0bf5df16070052e6633268cfdf289                                                            0.0s
 => => naming to docker.io/library/mon-app-python27                                                                                                     0.0s
f1a627e1ada31168c13edb48ed8a8fbdc66d6273a417c4e3837f9be43d734a64
```

After running the `run.sh` script, go to `http://localhost:8008/` in your browser. You should see the Gruyere web application running.

## 🪳 Debugging

If you want to debug the application and get logs from the container, you can use the following command to start a shell in the Docker container:

```bash
$ docker logs mon-container-python27

      Gruyere started...
          http://127.0.0.1:8008/
          http://127.0.0.1:8008/544224177967763771258090439530926944905/
Couldn't load data; expected the first time Gruyere is run
127.0.0.1 - - [14/Apr/2025 12:05:37] "GET / HTTP/1.1" 302 -
127.0.0.1 - - [14/Apr/2025 12:05:37] "GET /544224177967763771258090439530926944905/ HTTP/1.1" 200 -
127.0.0.1 - - [14/Apr/2025 12:05:37] "GET /544224177967763771258090439530926944905/lib.js HTTP/1.1" 200 -
127.0.0.1 - - [14/Apr/2025 12:05:37] "GET /544224177967763771258090439530926944905/cheese.png HTTP/1.1" 200 -
```

## 🐳 CleanUp

To stop the Docker container, you can use the following command:

```bash
$ docker stop mon-container-python27
$ docker rm mon-container-python27
```