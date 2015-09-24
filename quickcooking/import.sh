docker run --rm \
	--volumes-from qc-storage \
	--link elastic:qc-elastic\
	-e imageVolume=/images\
	-e elasticHost=elastic:9200\
	-e importVolume=/import
	-v $1:/import
	xblaster/xblaster/quickcooking-importer gulp && gulp elastic