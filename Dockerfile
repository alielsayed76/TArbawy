FROM alielsayed76/arbawy:slim-buster

#clonning repo 
RUN git clone https://github.com/alielsayed76/TelArbawy/tree/main.git /root/arbawy
#working directory 
WORKDIR /root/arbawy

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/TelArbawy/bin:$PATH"

CMD ["python3","-m","TelArbawy"]
