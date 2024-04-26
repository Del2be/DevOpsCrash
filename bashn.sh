#!/bin/bash

check_https_url() {
    local url=$1
    if [[ $url =~ ^https:// ]]; then
        echo "$url"
    else
        echo "Error"
    fi
}

if [ $# -ne 1 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

url_to_check=$1

check_https_url "$url_to_check"
