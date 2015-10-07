docker run --rm \
        -v /volumes/qc/images:/images \
        --link qc-elastic:elastic\
        -e imageVolume=/images\
        -e elasticHost=elastic:9200\
        -e importVolume=/import\
        -v "$1":/import\
        xblaster/quickcooking-importer sh scan.sh
