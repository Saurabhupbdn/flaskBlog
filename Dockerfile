FROM python:3 
WORKDIR /app
COPY . /app
RUN pip install Flask==2.2.2 
RUN pip install passlib==1.7.4 
RUN pip install WTForms==3.0.1 
RUN pip install flaskwebgui==1.0.3

ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
