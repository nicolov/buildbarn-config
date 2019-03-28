#!/usr/bin/env bash

set -euxo pipefail

rm -rf bin
mkdir bin

bazel build \
    --show_result=100 \
    @com_github_buildbarn_bb_browser//cmd/bb_browser \
    @com_github_buildbarn_bb_storage//cmd/bb_storage \
    @com_github_buildbarn_bb_remote_execution//cmd/bb_runner \
    @com_github_buildbarn_bb_remote_execution//cmd/bb_scheduler \
    @com_github_buildbarn_bb_remote_execution//cmd/bb_worker 2>&1 | tee | grep bazel-bin | xargs -I % cp % bin

# Copy vendored binaries
cp vendor-bin/* bin/

# Copy bb_browser templates
cp -r $(bazel info execution_root)/external/com_github_buildbarn_bb_browser/cmd/bb_browser/* bin
