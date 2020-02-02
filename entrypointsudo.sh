#!/bin/bash

# sudo -u rstudio 
# rstudio
/init & 
# code
PATH=$PATH:/usr/local/julia/bin/ sudo -u rstudio bash -c "PATH=$PATH:/usr/local/julia/bin/ PASSWORD=$PASSWORD HOME=/home/rstudio cd /home/rstudio && PATH=$PATH:/usr/local/julia/bin/ PASSWORD=$PASSWORD HOME=/home/rstudio /usr/bin/code & "

/app/entrypoint.sh

