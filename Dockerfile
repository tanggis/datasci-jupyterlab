FROM jupyter/datascience-notebook:2ce7c06a61a1

USER root

RUN apt-get -y update && \
    apt-get -y install vim htop && \
    conda install -y -c conda-forge tqdm plotly && \
    jupyter labextension install @krassowski/jupyterlab_go_to_definition @jupyterlab/plotly-extension @lckr/jupyterlab_variableinspector @jupyterlab/toc && \
    fix-permissions $CONDA_DIR
