#!/bin/bash

if [ "${QUOTED}" != "foo" ]; then
    echo "QUOTED not set"
    exit 1
fi

if [ "${UNQUOTED}" != "baz" ]; then
    echo "UNQUOTED not set"
    exit 1
fi

# if [ "${NON_PACKAGE}" != "bar" ]; then
#     echo "NON_PACKAGE not set"
#     exit 1
# fi
