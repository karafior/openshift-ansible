FROM fedora

RUN \
  dnf \
    --assumeyes \
    install ansible openssh-clients tar &&\
  dnf clean all;

RUN curl --location --silent https://github.com/openshift/openshift-ansible/archive/release-1.4.tar.gz | tar xzf - -C /opt/

ENTRYPOINT ["/usr/bin/bash"]
