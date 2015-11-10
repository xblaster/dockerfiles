# Pull base image.
FROM jupyter/all-spark-notebook
MAINTAINER xblaster@lo2k.net

#RUN source activate python2

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN source activate python2

RUN pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl

VOLUME /notebook
WORKDIR /notebook
EXPOSE 8888
#CMD jupyter notebook --no-browser --ip=0.0.0.0
