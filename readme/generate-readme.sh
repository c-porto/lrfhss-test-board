#!/usr/bin/env bash

set -e

USER="c-porto"
REPO="lrfhss-test-board"
BRANCH="master"

TITLE="LR-FHSS Test Board"
SHORT_DESCRIPTION="A simple PCB for testing the LR-FHSS"

STATUS="in_development"
STATUS_COLOR="red"

DOI="10.5281/zenodo.19164080"

IMAGE_TOP="lrfhss_test_board_top.png.jpg"
IMAGE_BOTTOM="lrfhss_test_board_bottom.png.jpg"

sed \
  -e "s|{{USER}}|${USER}|g" \
  -e "s|{{REPO}}|${REPO}|g" \
  -e "s|{{BRANCH}}|${BRANCH}|g" \
  -e "s|{{TITLE}}|${TITLE}|g" \
  -e "s|{{SHORT_DESCRIPTION}}|${SHORT_DESCRIPTION}|g" \
  -e "s|{{STATUS}}|${STATUS}|g" \
  -e "s|{{STATUS_COLOR}}|${STATUS_COLOR}|g" \
  -e "s|{{DOI}}|${DOI}|g" \
  -e "s|{{IMAGE_TOP}}|${IMAGE_TOP}|g" \
  -e "s|{{IMAGE_BOTTOM}}|${IMAGE_BOTTOM}|g" \
  README.template.org > README.org
