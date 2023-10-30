docker run -it --name my_arm -v /usr/bin/qemu-aarch64-static:/usr/bin/qemu-aarch64-static -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro arm_ubuntu bash
docker commit ID image_name
docker build -t name:0.1 .
docker run -ti hashID bash
docker container rm --force $(docker container ps -aq)
docker image prune
