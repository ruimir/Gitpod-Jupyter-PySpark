FROM gitpod/workspace-full

USER gitpod

# Install relevant packages
RUN sudo apt-get -q update && \
    sudo apt-get install -yq ocproxy openconnect && \
    sudo rm -rf /var/lib/apt/lists/*

RUN pip3 install jupyter pandas matplotlib 