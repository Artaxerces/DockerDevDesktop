# DockerDevDesktop
Docker based dev desktop for R/Julia/Python/Datascience
MIT & GPL License, copyright Akilles Inc, and original code under their own open source license

* please note, scripts run `sudo docker`...
* How to build
> source prepare.sh
important step is 
> sudo docker build -t akilles/rjulia -f Dockerfile .

* how to run
environment
    PASSWORD=abcdefgh
    DISPLAY_WIDTH=<width> (1024)
    DISPLAY_HEIGHT=<height> (768)
    RUN_XTERM={yes|no} (yes)
    RUN_FLUXBOX={yes|no} (yes)
ports
    8080: noVNC / X11 - root user
    8686: vs code online, rstudio user
    8787: rstudio
`..` is mapped to `/local` within docker
default password is vaevictis1

> source run.sh
important step is
> sudo docker run -e PASSWORD="vaevictis1" --rm -p 8787:8787 -p 8686:8686 -p 8080:8080 --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v "$(pwd)"/..:/local akilles/rjulia

To stop:
> sudo docker ps
> sudo docker kill XXXXX

Please kindly contact contact@akille.ai if you think we should add copyright notice or give credit to other 3rd party author 
who is not already mentioned here or in the license files.
