FROM python:3.8

RUN apt install git -y

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]



