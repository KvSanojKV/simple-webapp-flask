FROM ubuntu
RUN apt-get update -y 
RUN apt-get install python3 python-pip -y
RUN pip2 install flask
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 
