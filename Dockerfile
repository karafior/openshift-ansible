FROM fedora

RUN \
  dnf \
    --assumeyes \
    install ansible tar &&\
  dnf clean all;

RUN \
  mkdir -p /usr/ansible/openshift-ansible/ &&\
  curl --location --silent https://github.com/openshift/openshift-ansible/archive/master.tar.gz | tar xzf - --strip-components 1 -C /usr/ansible/openshift-ansible/

ENTRYPOINT ["/usr/bin/bash"]
