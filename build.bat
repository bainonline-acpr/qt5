CALL "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64

SET _ROOT=C:\tmp\src\

SET PATH=%_ROOT%\qtbase\bin;%_ROOT%\gnuwin32\bin;%PATH%

REM Uncomment the below line when using a git checkout of the source repository
SET PATH=%_ROOT%\qtrepotools\bin;%PATH%

REM Uncomment the below line when building with OpenSSL enabled. If so, make sure the directory points
REM to the correct location (binaries for OpenSSL).
REM SET PATH=C:\OpenSSL-Win32\bin;%PATH%

REM When compiling with ICU, uncomment the lines below and change <icupath> appropriately:
REM SET INCLUDE=<icupath>\include;%INCLUDE%
REM SET LIB=<icupath>\lib;%LIB%
REM SET PATH=<icupath>\lib;%PATH%

REM Contrary to earlier recommendations, do NOT set QMAKESPEC.
.\configure.bat -prefix %CD%\qtbase -opensource -confirm-license -nomake tests
nmake
