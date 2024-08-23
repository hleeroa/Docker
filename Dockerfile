FROM python:3.12-alpine

WORKDIR /usr/src/app

EXPOSE 8000

COPY ./stocks_products .
RUN pip install -r requirements.txt

RUN python manage.py migrate


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
