FROM mono:slim
RUN mkdir /opt/app

# install make
RUN apt-get update \
  && apt-get install -y build-essential
WORKDIR /opt/app
COPY . /opt/app
CMD ["make", "run"]
