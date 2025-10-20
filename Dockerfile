# Jupyter + TensorFlow CPU preinstalled (works well for notebooks)
FROM tensorflow/tensorflow:2.13.0-jupyter

# Extra Python deps used in AI.ipynb
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Workdir inside the container
WORKDIR /app

# Copy repo (AI.ipynb, sp500.csv, etc.) into the image so it also runs on Docker Desktop “From Git”
COPY . /app

# Jupyter in container
EXPOSE 8888
CMD ["bash", "-lc", "jupyter lab --ip=0.0.0.0 --no-browser --NotebookApp.token='' --NotebookApp.password='' --allow-root"]
