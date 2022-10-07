#!/bin/bash

(
	echo -n "${REPL_SLUG}" | sha256sum - | cut -f1 -d\ 
	echo -n "${REPL_OWNER}" | sha256sum - | cut -f1 -d\ 
) | sha256sum - | cut -f1 -d\ 
