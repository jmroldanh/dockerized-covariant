FROM python:3.6-slim

# uswgi fails to install without these dependencies
RUN apt-get update && apt-get install -y python3-dev gcc libc-dev

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./main.py ./

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["./main.py"]
