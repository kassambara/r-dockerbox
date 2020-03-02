latest:
	docker build -t kassambara/r-bioverse -f latest.Dockerfile .
	export VERSION=`cat latest.Dockerfile | head -n1 | sed 's/.*\([0-9].[0-9].[0-9]\)/\1/'` && docker tag kassambara/r-bioverse kassambara/r-bioverse:"$$VERSION"
	

