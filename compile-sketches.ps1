Param(
  [Parameter(ParameterSetName='fqbn')]
  [string] $fqbn = 'arduino:avr:mega'
)

$failures = @()

Get-ChildItem -File -Path '[0-9]/sketches/*/*.ino' |
Where-Object {$_.BaseName -eq $_.Directory.Name} |
ForEach-Object {
  $relPath = Resolve-Path -Relative $_.Directory
  Write-Output "Compiling '$relPath':"

  arduino-cli compile --dry-run --fqbn $fqbn "$_"
  if (-not $?) {
    $failures += $relPath
  }

  Write-Output ''
}

if ($failures.Count -eq 0) {
  Write-Output "All sketches compiled successfully."
} else {
  Write-Output "Compilation failure(s): $($failures.Count)" $failures
  exit 1
}
