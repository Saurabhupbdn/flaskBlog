# Build stage 
FROM python:3 AS build
WORKDIR /app
COPY . /app
RUN pip install Flask==2.2.2 
Run pip install passlib==1.7.4 
RUN pip install WTForms==3.0.1 
RUN pip install flaskwebgui==1.0.3

# Final stage 
FROM python:3-alpine
WORKDIR /app
COPY --from=build /app /app
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
