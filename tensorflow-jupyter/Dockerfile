
# Pull base image.
FROM jupyter/all-spark-notebook:2d125a7161b5
MAINTAINER xblaster@lo2k.net



USER root
RUN apt-get update
RUN apt-get install -y libx11-dev


USER jovyan
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN /bin/bash -c "source activate /opt/conda/envs/python2/ && pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.8.0-cp27-none-linux_x86_64.whl"

RUN /bin/bash -c "source activate /opt/conda/envs/python2/ && pip install Pillow==2.9.0 matplotlib sklearn"

VOLUME /notebook
WORKDIR /notebook
EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0
