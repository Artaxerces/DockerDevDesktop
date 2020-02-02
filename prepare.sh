cat code-server2.1692-vsc1.39.2-linux-x86_64.tar.gza* > code-server2.1692-vsc1.39.2-linux-x86_64.tar.gz
tar zxvf code-server2.1692-vsc1.39.2-linux-x86_64.tar.gz
mv code-server2.1692-vsc1.39.2-linux-x86_64/code-server .
rm code-server2.1692-vsc1.39.2-linux-x86_64.tar.gz
rm code-server2.1692-vsc1.39.2-linux-x86_64/*
sudo docker build -t akilles/rjulia -f Dockerfile .
