##dockerfile-tensorflow-jupyter
Dockerized Jupyter with tensorflow

##Get Started
With port forwarding:
```
docker run -d -p 8888:8888 xblaster/tensorflow-jupyter
```
For persistent storage:
```
docker run -d -p 8888:8888 -v /notebook:/notebook xblaster/tensorflow-jupyter
```
Just browse localhost:8888 and write code for tensorflow!
