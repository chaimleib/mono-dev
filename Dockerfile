FROM mono:latest AS builder
WORKDIR /opt/app

# install make
RUN apt-get update \
  && apt-get install -y build-essential
COPY . .
RUN make

FROM mono:slim
WORKDIR /opt/app
COPY --from=builder /opt/app/bin bin/
COPY --from=builder /opt/app/lib/mono-dev lib/mono-dev/
# CMD ls
CMD ["bin/hello"]
