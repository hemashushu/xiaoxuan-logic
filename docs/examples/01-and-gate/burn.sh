#!/bin/bash
filename=and-gate
pcf_file=../boards/iCESugar-v1.5/io.pcf

mkdir -p target
yosys -p "synth_ice40 -json target/$filename.json" $filename.sv top.sv
nextpnr-ice40 \
		--up5k \
		--package sg48 \
		--json target/$filename.json \
		--pcf $pcf_file \
		--asc target/$filename.asc
icepack target/$filename.asc target/$filename.bin

ICELINK_DIR=`df | grep iCELink | awk '{print $6}'`
echo "iCELink path: $ICELINK_DIR"

if [ -d "$ICELINK_DIR" ]; \
then \
    # cp target/$filename.bin $ICELINK_DIR; \
    echo "OK"; \
else \
    echo "iCELink not found"; \
    exit 1; \
fi