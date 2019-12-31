FROM python:3.6.10

ADD welcome-bot.py /

RUN pip install discord.py==1.2.5 python-dotenv==0.10.3

CMD [ "python", "./bot.py" ]