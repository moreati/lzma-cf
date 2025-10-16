
:: SPDX-FileCopyrightText: 2025 Alex Willmer <alex@moreati.org.uk>
:: SPDX-License-Identifier: MIT

:: https://github.com/actions/runner-images/blob/main/images/windows/Windows2025-Readme.md#visual-studio-enterprise-2022
:: https://learn.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-170#developer_command_file_locations
:: FIXME Hardcoded VS path
REM Setting MSVS variables
call "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" %RUNNER_ARCH%
if %errorlevel% neq 0 exit /b %errorlevel%

:: Restore command echo disabled by vcvars*.bat
echo on

REM Changing dir
pushd %LZMA_CF_LIBRARY_DIRS%
if %errorlevel% neq 0 exit /b %errorlevel%

REM Running lib.exe
lib.exe /DEF:liblzma.def /OUT:lzma.lib
if %errorlevel% neq 0 exit /b %errorlevel%

REM Restoring dir
popd
if %errorlevel% neq 0 exit /b %errorlevel%

REM Done
