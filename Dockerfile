FROM python:2.7

RUN mkdir /code
WORKDIR /code
ADD ./tutorial/requirements.txt /code/
RUN pip install -r requirements.txt
ADD ./tutorial/ /code/

EXPOSE 5000
CMD python manage.py runserver 0.0.0.0:5000
