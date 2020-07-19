#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

@test "Expand properties with values" {
  run "$PWD/hooks/post-checkout"
}