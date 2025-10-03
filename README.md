# lzma-cf

A Python LZMA & XZ library with greater control over compression parameters.

## License

<!-- SPDX-FileCopyrightText: 2025 Alex Willmer <alex@moreati.org.uk> -->
<!-- SPDX-License-Identifier: MIT -->

BSD-3-Clause AND MIT AND PSF-2.0

## History

lzma-cf is derived from code that has passed through multiple projects by
multiple authors

1. [CPython] 3.3.0 added `lzma` to the stdlib in `_lzmamodule.c` & `lzma.py`
1. [backports.lzma] repackaged CPython C-API code & adapted it
1. [lzmaffi] forked backports.lzma & changed C-API bindings to [CFFI] bindings
1. [PyPy] incorporated lzmaffi code into their stdlib & updated it
1. lzma-cf (this project) uses PyPy code and builds on it

[backports.lzma]: http://pypi.python.org/pypi/backports.lzma/
[CFFI]: https://pypi.org/project/cffi/
[CPython]: https://python.org
[CPython-lzma]: https://docs.python.org/3/library/lzma.html
[lzmaffi]: http://pypi.python.org/pypi/lzmaffi/
[PyPy]: https://pypy.org/
