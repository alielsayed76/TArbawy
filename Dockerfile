FROM alielsayed76/arbawy:alpine

#clonning repo 
RUN git clone https://github.com/alielsayed76/arbawy/tree/main.git /root/arbawy
#working directory 
WORKDIR /root/arbawy

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/arbawy/bin:$PATH"

CMD ["python3","-m","arbawy"]
