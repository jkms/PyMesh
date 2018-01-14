FROM hypriot/rpi-alpine
MAINTAINER John Stafford <john@jkms.me>

RUN apk add --no-cache bash python3 git
RUN pip3 install flask wifi

COPY PyMesh.py /bin/PyMesh.py
ENV FLASK_APP=/bin/PyMesh.py

ENTRYPOINT [ "/usr/bin/python3", "-m", "flask", "run"]
