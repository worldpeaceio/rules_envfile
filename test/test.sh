#!/bin/bash

if [ "${QUOTED}" != "foo
bar" ]; then
    echo "QUOTED not set"
    exit 1
fi

if [ "${UNQUOTED}" != "baz" ]; then
    echo "UNQUOTED not set"
    exit 1
fi
