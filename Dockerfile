FROM condaforge/miniforge3:latest

RUN apt-get update -y

WORKDIR /app
COPY . /app

RUN conda env create -f environment.yml
ENV CONDA_ENV_NAME=dask
RUN echo "source activate $CONDA_ENV_NAME" > ~/.bashrc
ENV PATH /opt/conda/envs/$CONDA_ENV_NAME/bin:$PATH

ENV PYTHONPATH='.'
