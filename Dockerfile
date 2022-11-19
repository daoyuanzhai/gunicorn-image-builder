FROM python:3.11.0-alpine3.16

# Setup Virtual Environment
ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# install gunicorn
RUN pip install -Iv gunicorn==20.1.0

CMD gunicorn --version