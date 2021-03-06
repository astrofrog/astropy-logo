#!/bin/bash

# Remove old files
rm generated/*

# Convert form Inkscape SVG to PNG
inkscape astropy_logo.svg --export-png=generated/astropy_logo.png
inkscape astropy_logo_linkout.svg --export-png=generated/astropy_logo_linkout.png
inkscape astropy_logo_docs.svg --export-png=generated/astropy_logo_docs.png
inkscape astropy_logo_small.svg --export-png=generated/astropy_logo_small.png

# Convert form Inkscape SVG to Plain SVG (for web use)
inkscape astropy_logo.svg --export-plain-svg=generated/astropy_logo_plain.svg
inkscape astropy_logo_linkout.svg --export-plain-svg=generated/astropy_logo_linkout_plain.svg
inkscape astropy_logo_docs.svg --export-plain-svg=generated/astropy_logo_docs_plain.svg
inkscape astropy_logo_small.svg --export-plain-svg=generated/astropy_logo_small_plain.svg

# Convert to PNGs required by Astropy website/docs
convert -intent Saturation -colorspace sRGB -filter Lanczos -resize 1000x96 -trim generated/astropy_logo.png generated/astropy_banner_96.png
convert -colorspace sRGB -filter Box -resize 1000x31 -trim generated/astropy_logo_docs.png generated/astropy_docs_32.png
convert -colorspace sRGB -filter Box -resize 1000x20 -trim generated/astropy_logo_linkout.png generated/astropy_linkout_20.png
