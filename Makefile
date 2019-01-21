
DWSH_IMAGE := debian:latest

.phony: command
command: _dwsh
	dwcmd $(DOCKER_IMAGE) -c "echo hello world"

_dwsh:
	[ "${DWSH_ENV}" = "1" ] && exit 0
	[ -f /.dockerenv ] && echo "dwsh ERR: Already running in docker container" && exit 1
	docker run --rm -v "$(PWD):/dwsh" -w "/dwsh" -e DWSH_ENV="1" $$(env | cut -f1 -d= | sed 's/^/-e /') $(DWSH_IMAGE) -c
