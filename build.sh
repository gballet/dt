#!/bin/bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1
project_root="$(pwd)"

help() {
    >&2 echo "USAGE: $(basename "$0") [build, test, ...]"
}

build() {
    zig build
}

test() {
    cd "$project_root"/old-rust-tests || exit 1
    cargo test
}

for cmd in "$@"; do
    cd "$project_root" || exit 1
    eval "$cmd"
done
