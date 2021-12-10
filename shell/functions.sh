#!/bin/false
# shellcheck shell=bash

# Source a file only if it exists.
# Use for files that might not be on all machines (work-specific).
sourceif () { if [ -f "$1" ]; then source "$1"; fi }
