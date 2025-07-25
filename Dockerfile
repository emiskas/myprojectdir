FROM python:3.12

WORKDIR /myprojectdir

COPY . .

RUN pip install -r requirements.txt

WORKDIR myproject

CMD ["gunicorn", "--bind", "0.0.0.0:8001", "myproject.wsgi"]
