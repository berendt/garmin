#!/usr/bin/env bash

docker run --rm -it -v $(pwd)/data:/data mkgmap:latest /bin/bash
