#!/bin/bash
cd tiles
ls bc_092f09*.laz | parallel -I{} pdal pipeline ../generate_dsm.json --readers.las.filename={} --writers.gdal.filename=../out/dsm/dsm_{/.}.tif
