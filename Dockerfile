FROM jupyterhub/jupyterhub-onbuild
MAINTAINER Daniel Suo <dsuo@cs.princeton.edu>

# Install Jupyter
RUN pip install jupyter

# Install BrainIAK dependencies
RUN apt-get update && apt-get install -y \
      build-essential \
      libgomp1 \
      libmpich-dev \
      mpich \
      python3-dev \
      python3-pip \
      python3-venv \
      git \
      vim-gtk \
      emacs \
      tmux \
      curl

RUN pip install brainiak

RUN git clone https://github.com/IntelPNI/brainiak
