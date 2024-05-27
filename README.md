# ml101

You can use either Python or Docker to spin up the notebook.

## Python
If you need to install Python, the following is recommended on Ubuntu.
```
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.11 python3.11-venv
```

To run the notebook:
```
git clone https://github.com/dewcservices/ml101.git
cd ml101
python3.11 -m venv venv --prompt .
. venv/bin/activate
pip install -r requirements.txt
python -m notebook
```

## Docker
```
git clone https://github.com/dewcservices/ml101.git
cd ml101
docker build . -t ml101:latest
docker run -p 8888:8888 ml101:latest
```