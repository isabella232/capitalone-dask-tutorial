FROM condaforge/miniforge3:latest

RUN apt-get update -y && \
    apt-get install unzip -y

WORKDIR /app
COPY . /app

RUN wget https://github.com/dask/dask-tutorial/archive/master.zip && \
    unzip master.zip -d /app/

RUN conda env create -f environment.yml
ENV CONDA_ENV_NAME=dask
RUN echo "source activate $CONDA_ENV_NAME" > ~/.bashrc
ENV PATH /opt/conda/envs/$CONDA_ENV_NAME/bin:$PATH

RUN jupyter labextension install $(cat labextensions.txt)
RUN python /app/dask-tutorial-master/prep.py --small -d flights

ENV PYTHONPATH='.'
