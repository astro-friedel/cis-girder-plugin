FROM girder/girder:3.1.0

ARG PLUGIN_NAME="cis"

RUN pip install gitpython pyaml yggdrasil-framework

COPY . /girder/plugins/${PLUGIN_NAME}/
COPY Dockerfile /girder
COPY girder.local.cfg /girder/girder/conf/
