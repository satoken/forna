FROM continuumio/miniconda3:latest

RUN mkdir /workspace
WORKDIR /workspace

# Install Python dependencies from requirements.txt if it exists
#COPY .devcontainer/requirements.txt.temp requirements.txt* /workspace/
#RUN if [ -f "requirements.txt" ]; then pip install -r requirements.txt && rm requirements.txt*; fi

RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda
RUN conda install python=3.6 forgi gunicorn viennarna flask werkzeug

# Set the default shell to bash rather than sh
ENV SHELL /bin/bash
