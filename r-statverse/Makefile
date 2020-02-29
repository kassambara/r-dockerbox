latest:
	docker build -t kassambara/r-statverse -f latest.Dockerfile .
	export VERSION=`cat latest.Dockerfile | head -n1 | sed 's/.*\([0-9].[0-9].[0-9]\)/\1/'` && docker tag kassambara/r-statverse kassambara/r-statverse:"$$VERSION"
	

all:
	docker build -t kassambara/r-statverse:3.6.0 -f 3.6.0.Dockerfile .
