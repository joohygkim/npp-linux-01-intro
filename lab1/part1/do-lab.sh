#!/usr/bin/bash

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh

# run make aliases
source ./provided/make_aliases.sh

# Create bridge on switch
sw  ip link add name mybrdige type bridge
sw  ip link set mybrdige up
sw  ip link set eth1 master mybridge
sw  ip link set eth2 master mybridge
sw  ip link set eth3 master mybridge
sw  ip link set eth4 master mybridge
