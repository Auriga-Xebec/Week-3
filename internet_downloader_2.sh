#!/bin/bash

echo "Enter a download source"
read download_source
echo "Enter download destination"
read download_destination
wget "$download_source" "$download_destination"