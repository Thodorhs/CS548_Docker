FROM klakegg/hugo:0.96.0-ext-alpine as builder
WORKDIR /hy548
RUN apk --no-cache add git \
    && git clone --recursive https://github.com/chazapis/hy548.git .

RUN make html

FROM nginx:1.23.3-alpine
WORKDIR /usr/share/nginx/html
COPY --from=builder /hy548/html/public .
EXPOSE 80

