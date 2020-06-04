#!/bin/bash
dirname="/home/vagrant/workspace/itunes-topsong-rss"
mkdir -p $dirname
filename="${dirname}/hourly-ranking-`date +'%Y%m%d%H%M'`.xml"
echo "Save to $filename"
curl -s -H "User-Agent: CrawlBot; unclesamforce@yahoo.co.jp" -o $filename https://itunes.apple.com/jp/rss/topsongs/limit=10/xml
