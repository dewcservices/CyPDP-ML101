FROM python:3.11-slim
WORKDIR /src
COPY . .
RUN apt-get update && apt-get install gcc libc-dev -y
RUN pip install -r requirements.txt
EXPOSE 8888
CMD ["python", "-m", "notebook", "main.ipynb", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
