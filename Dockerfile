FROM ubuntu
RUN apt update
RUN apt -y install python3 python3-pip iputils-ping
RUN pip3 install flask
RUN mkdir /opt/web
COPY app.py /opt/web/app.py
ENTRYPOINT FLASK_APP=/opt/web/app.py flask run --host=0.0.0.0
