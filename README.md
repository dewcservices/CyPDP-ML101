# ml101

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/dewcservices/ml101/main?labpath=main.ipynb)

## Python

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