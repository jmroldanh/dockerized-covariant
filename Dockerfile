FROM python:3.6

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./main.py ./

EXPOSE 5000 

ENTRYPOINT ["python"]
CMD ["./main.py"]
