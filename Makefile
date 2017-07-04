#!/usr/bin/make -f

put : index.html outline.json ## Update todo.nfultz.com
	git diff --exit-code
	s3cmd put index.html outline.json   s3://todo.nfultz.com

