#!/usr/bin/env bats
FILES_TO_CHECK=(
  "FormVPF_pdfa.pdf"
  "FormVPF_pdfa.zip")

setup() {
  PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
  load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
  _common_setup

  FILE_PATH="$PROJECT_ROOT/CLI/Resources"
  assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--policyfile, Select a policy schematron or XSL file" {
  for file in "${FILES_TO_CHECK[@]}"; do
    policy_check $file
  done
}

policy_check() {
  echo "Running: $1" >&3
  run verapdf/verapdf $FILE_PATH/$1 --policyfile $FILE_PATH/FormVPF_pdfa.sch
  assert_output --partial 'policyReport passedChecks="0" failedChecks="0"'
  assert [ "$status" == 0 ]
}
