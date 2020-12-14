<#
.SYNOPSIS
Check compilation of all sketches in the project.
.DESCRIPTION
Check compilation of all sketches in the project.
No build folder or binaries are copied to the directories.
An FQBN may be passed as parameter to compile for specific boards.
A warning level (as used by arduino-cli) may be passed to enable warnings.
.EXAMPLE
./compile-sketches.ps1 -warnings default
.EXAMPLE
./compile-sketches.ps1 -fqbn arduino:avr:uno
.LINK
https://arduino.github.io/arduino-cli/latest/
.LINK
https://arduino.github.io/arduino-cli/latest/FAQ/#whats-the-fqbn-string
#>

Param(
	[string] $fqbn = 'arduino:avr:mega',
	[string] $warnings = 'all'
)

$failures = @()

Get-ChildItem -File -Path '[0-9]/sketches/*/*.ino' |
Where-Object {$_.BaseName -eq $_.Directory.Name} |
ForEach-Object {
	$relativePath = Resolve-Path -Relative $_.Directory
	Write-Output "Compiling '$relativePath':"

	arduino-cli compile --fqbn "$fqbn" --warnings "$warnings" "$_"
	if (-not $?) {
		$failures += $relativePath
	}
}

if ($failures.Count -eq 0) {
	Write-Output "All sketches compiled successfully."
} else {
	Write-Output "Compilation failure(s): $($failures.Count)" $failures
	exit 1
}
