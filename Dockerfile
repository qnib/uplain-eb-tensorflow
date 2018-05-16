FROM qnib/uplain-easybuild

RUN apt-get install -y libibverbs-dev unzip
ARG JVER=jdk-8u162-linux-x64
RUN mkdir -p ${PYTHONPATH}/easybuild_easyconfigs-3.6.0-py2.7.egg/easybuild/easyconfigs/j/Java/j/Java/ \
 && cd ${PYTHONPATH}/easybuild_easyconfigs-3.6.0-py2.7.egg/easybuild/easyconfigs/j/Java/j/Java/ \
 && wget -q http://ftp.osuosl.org/pub/funtoo/distfiles/oracle-java/${JVER}.tar.gz
USER user
RUN eb TensorFlow-1.7.0-foss-2018a-Python-3.6.4.eb --robot
