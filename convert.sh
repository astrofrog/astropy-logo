#!/bin/bash

# Convert form Inkscape SVG to PNG
inkscape astropy_logo.svg --export-png=astropy_logo.png
inkscape astropy_logo_linkout.svg --export-png=astropy_logo_linkout.png
inkscape astropy_logo_docs.svg --export-png=astropy_logo_docs.png
inkscape astropy_logo_small.svg --export-png=astropy_logo_small.png

# Convert form Inkscape SVG to Plain SVG (for web use)
inkscape astropy_logo.svg --export-plain-svg=astropy_logo_plain.svg
inkscape astropy_logo_linkout.svg --export-plain-svg=astropy_logo_linkout_plain.svg
inkscape astropy_logo_docs.svg --export-plain-svg=astropy_logo_docs_plain.svg
inkscape astropy_logo_small.svg --export-plain-svg=astropy_logo_small_plain.svg

# Convert to PNGs required by Astropy website/docs
convert -intent Saturation -colorspace sRGB -filter Lanczos -resize 1000x96 -trim astropy_logo.png astropy_banner_96.png
convert -colorspace sRGB -filter Box -resize 1000x31 -trim astropy_logo_docs.png astropy_docs_32.png
convert -colorspace sRGB -filter Box -resize 1000x20 -trim astropy_logo_linkout.png astropy_linkout_20.png
