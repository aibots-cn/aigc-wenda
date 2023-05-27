FROM python:3.10.11-slim-buster
LABEL authors="baoguoqiang"

WORKDIR /app
VOLUME ["/app/model"]

COPY . /app/

RUN python -m pip install \
    -r requirements/requirements.txt \
    -r requirements/requirements-chatglm_api.txt \
    -r requirements/requirements-glm6b-lora.txt \
    -r requirements/requirements-glm6b-lora.txt \
    -r requirements/requirements-replitcode.txt

ENTRYPOINT ["sh", "run_rwkv.sh"]