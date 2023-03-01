FROM continuumio/miniconda3:latest

RUN mkdir /workspace
WORKDIR /workspace

COPY . .
RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda
RUN conda install python=3.9 forgi gunicorn viennarna flask werkzeug

EXPOSE 9000
#ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:9000", "forna_server:app"]
ENTRYPOINT ["python", "forna_server.py", "-s", "--host", "0.0.0.0", "--port", "9000"]
