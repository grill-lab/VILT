#!/bin/bash

echo "Downloading video corpus..."
wget https://vilt-public-data.s3.amazonaws.com/video_metadata.jsonl -P "./corpus"
