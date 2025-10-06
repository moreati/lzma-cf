# SPDX-FileCopyrightText: 2025 Alex Willmer <alex@moreati.org.uk>
# SPDX-License-Identifier: MIT

import os
import pprint

import setuptools

if os.environ.get('CIBUILDWHEEL') == '1':
    pprint.pprint(dict(os.environ))

setuptools.setup(
    cffi_modules=[
        "src/lzma_cf/_lzma_build.py:ffi",
    ],
)
