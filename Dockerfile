FROM alpine:3.20.2
RUN apk update
RUN apk add python3
RUN apk add py3-pip
RUN apk add curl iputils
COPY pip_requirements.txt .
RUN pip3 install --break-system-packages -r pip_requirements.txt
COPY version/VERSION /exporter/
COPY exporter.py /exporter/
COPY metrics.json /exporter/
RUN touch /exporter/exporter.log
RUN ln -sf /dev/stdout /exporter/exporter.log
USER nobody


ENTRYPOINT ["python3", "/exporter/exporter.py" ]
