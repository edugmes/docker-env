FROM ubuntu

#base directory
ENV HOME /root
#subdirectory name for the REST project
ENV PROJECT_NAME django_project
#subdirectory name of the users app
ENV APP_NAME users

#set the working directory
WORKDIR $HOME

#install Python 3, the Django engine and REST framework and the Cassandra Python driver
RUN apt-get update
RUN apt -y install python3-pip 2> /dev/null
RUN pip3 install djangorestframework
RUN pip3 install cassandra-driver
RUN pip3 install django-cassandra-engine

ENV CASSANDRA_SEEDS cas1

ENTRYPOINT ["python3","manage.py", "runserver", "0.0.0.0:8000"]