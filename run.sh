#!/bin/bash

podman run --rm -v "${PWD}":/config -it ghcr.io/esphome/esphome:2025.11.3 compile beerfiller01.yml
