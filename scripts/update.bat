Rem This batch will delete the old AuxilimNode exe and move the new release to its place
Rem This batch need to be started while the AuxilimNode does not work
echo off
powershell -Command "& {sleep 5}"
Rem End of timeout
del AuxilimNode.exe
move newRelease.exe AuxilimNode.exe
exit
