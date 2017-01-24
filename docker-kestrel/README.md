
Runs a [Kestrel](https://github.com/twitter/kestrel) server.

Build a private repo on the Docker hub as [zoyanhui/kestrel](https://hub.docker.com/r/zoyanhui/kestrel/):

    docker pull zoyanhui/kestrel

If want a public one, use available on the Docker Index as [thefactory/kestrel](https://registry.hub.docker.com/u/thefactory/kestrel/):

    docker pull thefactory/kestrel

### Versions
* Kestrel 2.4.2

### Usage
Start the container with a volume mounted on `datafor persistence:

    docker run -p 22133:22133 -v /local_path:/data thefactory/kestrel:latest
or

    docker run -p 22133:22133 -v /local_path:/data thefactory/zoyanhui:latest


### Build
This Dockerfile, add the debian's source list of China, and then build fast.

git clone https://github.com/zoyanhui/yh-dockers

In docker-kestrel directory, run:
docker build -t zoyanhui/kestrel:latest .  # or Use other tags
