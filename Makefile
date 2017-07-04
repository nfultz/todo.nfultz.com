#!/usr/bin/make -f

put : index.html outline.json ## Update todo.nealreads.com
	s3cmd put index.html outline.json   s3://todo.nfultz.com

