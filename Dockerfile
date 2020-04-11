FROM python:3
WORKDIR /jd-assistant
ENV TZ Asia/Shanghai
RUN git clone https://github.com/yileicn/jd-assistantV2.git /jd-assistant && pip install -r requirements.txt
CMD [ "python", "main.py" ]
