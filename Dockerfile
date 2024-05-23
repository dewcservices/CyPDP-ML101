FROM python:3.11-slim
RUN apt-get update && apt-get install gcc libc-dev -y
WORKDIR /src
COPY train.parquet .
COPY test.parquet .
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY main.ipynb .
EXPOSE 8888
CMD ["python", "-m", "notebook", "main.ipynb", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
