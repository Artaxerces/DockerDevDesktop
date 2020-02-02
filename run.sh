sudo docker run -e PASSWORD="vaevictis1" --rm -p 8787:8787 -p 8686:8686 -p 8080:8080 --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v "$(pwd)"/..:/local akilles/rjulia
