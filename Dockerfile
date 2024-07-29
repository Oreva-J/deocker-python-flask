FROM python:3.10.12
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]

