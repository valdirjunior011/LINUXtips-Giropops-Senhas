FROM cgr.dev/chainguard/python:latest-dev as builder
COPY ./giropops-senhas /giropops-senhas
WORKDIR /giropops-senhas
RUN pip install --user --no-cache-dir -r /giropops-senhas/requirements.txt

FROM cgr.dev/chainguard/python:latest
WORKDIR /giropops-senhas
COPY --from=builder /giropops-senhas /giropops-senhas
COPY --from=builder /home/nonroot/.local/lib/python3.11/site-packages /home/nonroot/.local/lib/python3.11/site-packages
ENV REDIS_HOST=redisdb
ENTRYPOINT [ "python", "-m", "flask", "run", "--host=0.0.0.0"]