FROM alielsayed76/TelArbawy:slim-buster

#clonning repo 
RUN git clone https://github.com/alielsayed76/TelArbawy/tree/main.git /root/TelArbawy
#working directory 
WORKDIR /root/TelArbawy

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/TelArbawy/bin:$PATH"

CMD ["python3","-m","TelArbawy"]
