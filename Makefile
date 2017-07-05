#!/usr/bin/make -f
.PHONY: put get

put : index.html outline.json get
	git diff --exit-code
	s3cmd put index.html outline.json   s3://todo.nfultz.com

get outline.json :
	wget -O - http://todo.nfultz.com/outline.json | python -m json.tool > outline.json

