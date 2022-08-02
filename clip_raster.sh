#!/bin/bash
for file in "$@"


do
    filename=$(basename $file .tif)
    dirname=$(dirname $file)
    suffix="_cut.tif"
    outfile="$dirname/$filename$suffix"
    gdalwarp -of GTiff -cutline shapefile/savary_polygon.shp -cl savary_polygon  -crop_to_cutline $file $outfile
done
