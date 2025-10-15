:: SPDX-FileCopyrightText: 2025 Alex Willmer <alex@moreati.org.uk>
:: SPDX-License-Identifier: MIT

pushd xz\windows
call build-with-cmake.bat "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin" "c:\msys64\ucrt64\bin" "ON"
if %errorlevel% neq 0 exit /b %errorlevel%
popd
