#!/bin/bash

if [ "${PACKAGE}" != "foo" ]; then
    echo "PACKAGE not set"
    exit 1
fi

# if [ "${NON_PACKAGE}" != "bar" ]; then
#     echo "NON_PACKAGE not set"
#     exit 1
# fi
