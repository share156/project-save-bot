#!/usr/bin/env bash
# exit on error
set -o errexit

# Install build dependencies for packages like aiohttp
apt-get update && apt-get install -y build-essential

# Install your python dependencies
pip install -r requirements.txt
