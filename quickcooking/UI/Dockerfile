FROM xblaster/generic_node

RUN apt-get install -y imagemagick tesseract-ocr-fra tesseract-ocr

RUN git clone https://github.com/xblaster/quickCooking3-UI
WORKDIR quickCooking3-UI

RUN git pull

RUN npm config set registry http://registry.npmjs.org/

RUN npm install
RUN bower install --allow-root

EXPOSE 9000

CMD grunt serve:dist
