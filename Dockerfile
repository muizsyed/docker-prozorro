FROM fedora:22
RUN dnf -y install gcc file git libevent-devel python-devel sqlite-devel zeromq-devel libffi-devel openssl-devel systemd-python
RUN dnf -y install couchdb nano
RUN couchdb &
#RUN cd /opt/ && git clone https://github.com/openprocurement/openprocurement.buildout.git
#RUN cd /opt/openprocurement.buildout && git checkout ea_master
#RUN python bootstrap.py --setuptools-version=11.3
#RUN ./bin/buildout -N -v

EXPOSE 8080
