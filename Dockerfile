FROM lMl10l/userbot:slim-buster

#clonning repo 
RUN git clone https://github.com/alielsayed76/arbawy.git /root/jmthon
#working directory 
WORKDIR /root/arbawy

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","arbawy"]
