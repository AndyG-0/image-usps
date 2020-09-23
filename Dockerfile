FROM arm32v7/python:3

WORKDIR /usr/src/app

# for now install mosquitto
RUN apt install imagemagick

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir images

COPY usps.py nomail.gif requirements.txt ./

CMD [ "python", "./usps.py" ]