FROM opensuse:latest
RUN zypper in -y python python-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY suse /src/suse
COPY static /src/static
COPY templates /src/templates
CMD python /src/app.py
