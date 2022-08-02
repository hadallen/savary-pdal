#!/bin/bash
gdal_calc.py -A out/finals/dtm_filled.tif -B out/finals/dsm_filled.tif --calc="B-A" --outfile out/finals/chm.tif --extent intersect
