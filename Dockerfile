FROM ghcr.io/gamestonkterminal/gst-poetry:latest

RUN poetry install -E prediction
RUN pip install --upgrade pip
RUN pip install jupyterlab
RUN pip install jupyterlab/gst
RUN pip install jupyterlab/gst-settings
RUN pip install jupyterlab/documentation
RUN jupyter labextension install jupyterlab/gst
RUN jupyter labextension install jupyterlab/gst-settings
RUN jupyter labextension install jupyterlab/documentation

CMD ["python", "main.py"]
