# Shell Script Bug: Filename Handling

This repository demonstrates a common error in shell scripting when dealing with filenames that contain spaces. The script `bug.sh` attempts to process files found in the current directory. However, it fails when a filename includes spaces because of improper handling in the command line that uses the filename.

The solution, in `bugSolution.sh`, shows how to correctly handle spaces in filenames using proper quoting and escaping, and using appropriate command-line tools to parse the input.

## Bug Description

The primary issue lies in the way filenames are passed to the `commandThatFailsWithSpaces` function. When a filename contains spaces, the shell splits it into multiple words, leading to unexpected behavior or errors within the function. The script `bug.sh` shows this error.

## Solution

The corrected script (`bugSolution.sh`) demonstrates the solution by carefully quoting the filename to prevent word splitting and using safer alternatives to process filenames.