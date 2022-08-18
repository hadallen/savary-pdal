#!/bin/bash
cd tiles
ls bc_092f09*.laz | parallel -I{} pdal pipeline ../generate_dtm.json --readers.las.filename={} --writers.gdal.filename=../out/dtm/dtm_{/.}.tif
