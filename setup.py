# SPDX-FileCopyrightText: 2025 Alex Willmer <alex@moreati.org.uk>
# SPDX-License-Identifier: MIT

import setuptools

setuptools.setup(
    cffi_modules=[
        "_lzma_build.py:ffi",
    ],
)
