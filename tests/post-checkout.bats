#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

@test "Expand properties with values" {
  export BUILDKITE_PLUGIN_EXPANDABLE_FILES=""
  export BUILDKITE_PLUGIN_EXPANDABLE_DIRECTORIES=""
  export BUILDKITE_PLUGIN_EXPANDABLE_PROPERTIES=""

  run "$PWD/hooks/post-checkout"
}