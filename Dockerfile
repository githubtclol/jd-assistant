FROM python:3
WORKDIR /app
ENV TZ Asia/Shanghai
RUN git clone https://github.com/nicholastz/jd-assistantV2.git /app  && pip install -r requirements.txt
VOLUME /app
CMD [ "python", "mainV2.py" ]
