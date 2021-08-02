FROM python:alpine
RUN pip install linode-cli; \
    pip install boto; \
    python --version >> /version.txt; \
    pip list 2> /dev/null | grep linode >> /version.txt

ENTRYPOINT ["/usr/local/bin/linode-cli"]
