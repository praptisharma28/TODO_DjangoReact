FROM  python:3.9-slim-buster

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt &&\
    chmod +x entrypoint.sh 
    
EXPOSE 8000

CMD [ "/app/entrypoint.sh" ]
