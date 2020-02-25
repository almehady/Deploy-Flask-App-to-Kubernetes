FROM python:stretch


COPY . /Deploy-Flask-App-to-Kubernetes
WORKDIR  Deploy-Flask-App-to-Kubernetes

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt


# ENTRYPOINT ["gunicorn -b :8080", "main:APP"]


# CMD ["gunicorn", "--bind", ":8080", "main:APP"]

ENTRYPOINT ["gunicorn", "--bind", ":8080", "main:APP"]


