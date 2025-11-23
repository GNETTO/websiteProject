FROM python:3.13.9-slim-trixie

WORKDIR /home/alp/app
COPY . /home/alp/app

RUN pip install -r requirements.txt &&\
    useradd alp

USER alp
EXPOSE 8000

CMD ["python", "manage.py",  "runserver"]



