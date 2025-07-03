#!/usr/bin/env bash

pdm lock --static-urls --lockfile pdm.spark34.lock --with spark34
pdm lock --static-urls --lockfile pdm.spark35.lock --with spark35
pdm lock --static-urls --lockfile pdm.spark40.lock --with spark40
