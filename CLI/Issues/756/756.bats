bats_require_minimum_version 1.5.0

@test "PDF/UA-2 validation does not cause infinite loop in struct tree" {
  run timeout 30s verapdf/verapdf --flavour ua2 "$BATS_TEST_DIRNAME/756-minimal-loop.pdf"

  [ "$status" -ne 124 ]
}
