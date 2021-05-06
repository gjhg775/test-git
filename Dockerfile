FROM python:3.9.2

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

# CMD python /app/app.py

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]