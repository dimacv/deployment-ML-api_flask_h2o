# Зададим имидж на основании которого мы делаем свой имидж
FROM python:3.10

# назначим рабочую папку
WORKDIR /app

# скопируем необходимые для работы файлы
COPY . .

# установим нужные пакеты python
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# установим нужное для работы JRE
RUN apt update && apt install default-jre -y

# очистим лишнее
RUN apt-get clean && apt autoremove -y && apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_* /usr/share/man/??.*

# запустим uvicorn и Streamlit
CMD python3 API_flask_h2o.py

