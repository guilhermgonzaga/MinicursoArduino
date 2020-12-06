Param(
  [Parameter(ParameterSetName='fqbn')]
  [string] $fqbn = 'arduino:avr:mega'
)

$failures = @()

Get-ChildItem -Directory -Path ?/sketches/* |
Resolve-Path -Relative |
ForEach-Object {
  Write-Output "-> $_"
  if (-not (arduino-cli compile --dry-run --fqbn $fqbn "$_")) {
    $failures += $_
  }
}

if ($failures.Count -eq 0) {
  Write-Output "`nAll sketches compiled successfully."
} else {
  Write-Output "`n$($failures.Count) compilation failure(s):"
  Write-Output $failures
  exit 1
}
