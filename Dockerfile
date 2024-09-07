FROM elricariocco/mltb2024sept:latest
RUN curl https://rclone.org/install.sh | bash

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt --break-system-packages

COPY . .

CMD ["bash", "start.sh"]
