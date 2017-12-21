
## Check any changes in project
has_app_changes = !git.modified_files.grep(/ToolIntegration/).empty?

## check if tests are updated
has_test_changes = !git.modified_files.grep(/ToolIntegrationTests/).empty?

if has_app_changes && !has_test_changes && git.lines_of_code > 20
  fail "Please add tests before creating PR"
end


xcov.report(
   scheme: 'ToolIntegration',
   workspace: 'ToolIntegration.xcworkspace',
   exclude_targets: 'ToolIntegration.app',
   minimum_coverage_percentage: 90.0
)

swiftlint.lint_files