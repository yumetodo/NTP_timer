@echo off
pushd C:\MinGW\bin
echo gcc -finput-charset=cp932 -fexec-charset=cp932 %1 -std=c99 -Wall -o "%~dpn1.exe" -L"C:\MinGW\mingw32\lib" -lws2_32 -lwinmm -lwsock32
gcc -finput-charset=cp932 -fexec-charset=cp932 %1 -std=c99 -Wall -o "%~dpn1.exe" -L"C:\MinGW\mingw32\lib" -lws2_32 -lwinmm -lwsock32
popd
pause