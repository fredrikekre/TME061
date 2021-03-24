
SHELL := /bin/bash
JULIA := julia --project=build-tools -L build-tools/L.jl

clean:
	rm -rf __site
	rm -rf __push
optimize: clean franklin-image
	${JULIA} -e 'Franklin.optimize(minify=false, prepath="TME061")'
	docker run -v ${PWD}/__site:/__site franklin-minify
publish: optimize
	mkdir __push && pushd __push && \
	git init && git remote add origin https://github.com/fredrikekre/TME061.git && \
	git fetch origin && git checkout gh-pages && git rm -rf --ignore-unmatch . && \
	cp -r ../__site/* . && \
	git add -A . && git commit -m "Updated build."
	# && git push origin gh-pages
build: clean
	${JULIA} -e 'Franklin.serve(single=true)'
serve: clean
	${JULIA} -e 'while true; try; Franklin.serve(); catch e; sleep(1); end; end'
lserve:
	${JULIA} -e 'Franklin.optimize(minify=false)'
	${JULIA} -e 'LiveServer.serve(dir="__site")'
# deploy: optimize

franklin-image:
	@if ! docker image ls | grep --quiet franklin-minify ; then \
		docker build -f build-tools/minify-docker/Dockerfile -t franklin-minify build-tools/minify-docker/; \
	fi

.PHONY: clean optimize build serve lserve franklin-image
