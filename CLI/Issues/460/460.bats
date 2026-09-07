bats_require_minimum_version 1.5.0

setup() {
  PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
  load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
  _common_setup
}

# https://github.com/veraPDF/veraPDF-validation-profiles/pull/460
# https://github.com/veraPDF/veraPDF-validation/pull/737
# https://github.com/veraPDF/veraPDF-model/pull/348
@test "#460: PDF/UA-2 8.2.5.20-2 error message contains link annotation and target object arguments" {

  run verapdf/verapdf --flavour ua2 --format xml "$BATS_TEST_DIRNAME/8.2.5.20-t02-fail-a.pdf"

  [ "$status" -eq 1 ]

  assert_output --partial '<rule specification="ISO 14289-2:2024" clause="8.2.5.20" testNumber="2" status="failed"'
  assert_output --partial 'Struct element 21 0 obj contains Link annotations 13 0 obj and 12 0 obj that target different locations (20 0 obj and 19 0 obj respectively)'
}
