FROM redis:6.0.20-alpine3.18
COPY ./giropops-senhas /giropops-senhas
WORKDIR /giropops-senhas
RUN apk update && apk add redis py-pip && pip install --no-cache-dir -r /giropops-senhas/requirements.txt
ENV REDIS_HOST=localhost
CMD redis-server & flask run --host=0.0.0.0