#!/bin/sh

convert \
    "ASI_PRISMA/ASI PRISMA Spectrogram VNIR and SWIR Bands.jpg" \
    "EO1_HYPERION/EO-1 HYPERION Spectrogram VNIR and SWIR Bands.jpg" \
    "COPERNICUS_S3_OLCI/COPERNICUS_S3_OLCI Spectrogram VNIR and SWIR Bands.jpg" \
    -gravity center -append \
    Spectrograms1.jpg

convert \
    "COPERNICUS_S2_SR/COPERNICUS_S2_SR Spectrogram VNIR and SWIR Bands.jpg" \
    "ASTER_AST_L1T_003/ASTER_AST_L1T_003 Spectrogram VNIR and SWIR Bands.jpg" \
    "LANDSAT_LC08_C01_T1_SR/LANDSAT_LC08_C01_T1_SR Spectrogram VNIR and SWIR Bands.jpg" \
    -gravity center -append \
    Spectrograms2.jpg

convert \
    Spectrograms1.jpg \
    Spectrograms2.jpg \
    +append -gravity center \
    Spectrograms.jpg

convert \
    "ASTER_AST_L1T_003/ASTER_AST_L1T_003 Spectrogram VNIR and SWIR Bands FULL.jpg" \
    "ASTER_AST_L1T_003/ASTER_AST_L1T_003 VNIR and SWIR Bands.jpg" \
    "LANDSAT_LC08_C01_T1_SR/LANDSAT_LC08_C01_T1_SR Spectrogram VNIR and SWIR Bands FULL.jpg" \
    "LANDSAT_LC08_C01_T1_SR/LANDSAT_LC08_C01_T1_SR VNIR and SWIR Bands.jpg" \
    -gravity center -append \
    Spectrograms_FULL.jpg

convert \
    "ASI_PRISMA/ASI PRISMA Spectrogram VNIR and SWIR Bands.jpg" \
    "ASI_PRISMA/ASI PRISMA VNIR and SWIR Bands.jpg" \
    "EO1_HYPERION/EO-1 HYPERION Spectrogram VNIR and SWIR Bands.jpg" \
    "EO1_HYPERION/EO-1 HYPERION VNIR and SWIR Bands.jpg" \
    -gravity center -append \
    ASI_PRISMA_EO1_HYPERION.jpg
