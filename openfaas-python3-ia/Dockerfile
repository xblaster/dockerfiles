FROM python:3.7-slim-buster

RUN pip install torch
RUN pip install sentencepiece
RUN pip install transformers
ADD dl_dep.py .
RUN python dl_dep.py
