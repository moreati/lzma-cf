# SPDX-FileCopyrightText: 2025 Alex Willmer <alex@moreati.org.uk>
# SPDX-License-Identifier: MIT

import setuptools

setuptools.setup(
    cffi_modules=[
        "src/lzma_cf/_lzma_build.py:ffi",
    ],
)
