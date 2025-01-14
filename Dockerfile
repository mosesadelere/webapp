FROM python:3.11

WORKDIR /app

COPY myapp.py .

RUN pip install flask

EXPOSE 9090

CMD ["python", "myapp.py"]