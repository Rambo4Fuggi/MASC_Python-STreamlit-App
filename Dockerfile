FROM python
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8080
ENTRYPOINT [ "streamlit", "run" ]
CMD ["app.py", "--server.port=8080", "--server.address=0.0.0.0"]