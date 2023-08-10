FROM jenkins/agent as agent
USER root
RUN apt-get update && apt-get install -y lsb-release
RUN apt-get install curl -y
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash
RUN apt update && apt install nodejs
WORKDIR /usr/local
RUN curl -L https://dl.dagger.io/dagger/install.sh | DAGGER_VERSION=0.6.4 sh
WORKDIR /home/jenkins
RUN npm install -g @dagger.io/dagger@0.6.4 
USER jenkins
RUN mkdir ~/.npm-global
RUN npm config set prefix '~/.npm-global'
RUN echo 'export PATH="$PATH:$HOME/.npm-global/bin"' >> ~/.profile
RUN . ~/.profile
RUN npm install -g @dagger.io/dagger@0.6.4 
USER root
