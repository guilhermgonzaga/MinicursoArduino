<#
.SYNOPSIS
Check compilation of all sketches in the project and list unsuccessful builds.
.DESCRIPTION
Check compilation of all sketches in the project and list unsuccessful builds.
No build folder or binaries are copied to the directories.
An FQBN may be passed as parameter to compile for specific boards.
A warning level (as used by arduino-cli) may be passed to enable
a specific warning level.
.PARAMETER fqbn
(Optional) Fully-qualified board name (FQBN) of the compilation target board.
The string format is "vendor:architecture:board[:menu_id=option[, ...]]".
.PARAMETER warnings
(Optional) Used to enable a specific warning level. Can be one of:
- none
- default
- more
- all
.EXAMPLE
./compile-sketches.ps1 -fqbn arduino:avr:uno -warnings default
.LINK
https://arduino.github.io/arduino-cli/latest/
.LINK
https://arduino.github.io/arduino-cli/latest/FAQ/#whats-the-fqbn-string
.LINK
https://github.com/arduino/arduino-cli/
#>

# SPDX-License-Identifier: CC0-1.0

Param(
	# Regex based on behavior of ParseFQBN and TestFQBN
	# in  github.com/arduino/arduino-cli/blob/master/arduino/cores/fqbn.go
	# and github.com/arduino/arduino-cli/blob/master/arduino/cores/fqbn_test.go
	[ValidatePattern('^\w*:\w*:\w+(:\w+=\w*(,\w+=\w*)*)?$',
	                 ErrorMessage = 'The FQBN follows this format: "vendor:architecture:board[:menu_id=option[, ...]]"')]
	[string] $fqbn = 'arduino:avr:mega',
	[ValidateSet('none', 'default', 'more', 'all',
	             IgnoreCase = $false, ErrorMessage = 'Valid options: {1}')]
	[string] $warnings = 'all'
)

$failures = @()  # List of sketches that failed to compile

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
	Write-Output "Compilation failure(s): $( $failures.Count )" $failures
	exit 1
}
