Trying to get Bazel to produce working PAR.

subpar is meant to be a "drop-in replacement" for a py_binary rule in Bazel.

However, there's a discrepancy:

```shell
$ bazel run //src:encryption_bin
INFO: Found 1 target...
Target //src:encryption_bin up-to-date:
  bazel-bin/src/encryption_bin
INFO: Elapsed time: 0.097s, Critical Path: 0.00s

INFO: Running command line: bazel-bin/src/encryption_bin
usage: encryption_bin.py [-h]
                         {generate-encryption-key,upload,download,rotate} ...
encryption_bin.py: error: too few arguments
ERROR: Non-zero return code '2' from command: Process exited with status 2.
```

```shell
$ bazel run //src:encryption_par.par
INFO: Found 1 target...
Target //src:encryption_par.par up-to-date:
  bazel-bin/src/encryption_par.par
INFO: Elapsed time: 0.106s, Critical Path: 0.00s

INFO: Running command line: bazel-bin/src/encryption_par.par
Traceback (most recent call last):
  File "/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/runpy.py", line 174, in _run_module_as_main
    "__main__", fname, loader, pkg_name)
  File "/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/runpy.py", line 72, in _run_code
    exec code in run_globals
  File "/private/var/tmp/_bazel_hk/49a4db98db9f33c98c510babb653ffc3/execroot/__main__/bazel-out/darwin_x86_64-fastbuild/bin/src/encryption_par.par/__main__.py", line 38, in <module>
  File "/private/var/tmp/_bazel_hk/49a4db98db9f33c98c510babb653ffc3/execroot/__main__/bazel-out/darwin_x86_64-fastbuild/bin/src/encryption_par.par/pypi__google_cloud_storage_1_6_0/google/cloud/storage/__init__.py", line 35, in <module>
  File "/private/var/tmp/_bazel_hk/49a4db98db9f33c98c510babb653ffc3/execroot/__main__/bazel-out/darwin_x86_64-fastbuild/bin/src/encryption_par.par/pypi__setuptools_38_2_3/pkg_resources/__init__.py", line 564, in get_distribution
  File "/private/var/tmp/_bazel_hk/49a4db98db9f33c98c510babb653ffc3/execroot/__main__/bazel-out/darwin_x86_64-fastbuild/bin/src/encryption_par.par/pypi__setuptools_38_2_3/pkg_resources/__init__.py", line 436, in get_provider
  File "/private/var/tmp/_bazel_hk/49a4db98db9f33c98c510babb653ffc3/execroot/__main__/bazel-out/darwin_x86_64-fastbuild/bin/src/encryption_par.par/pypi__setuptools_38_2_3/pkg_resources/__init__.py", line 984, in require
  File "/private/var/tmp/_bazel_hk/49a4db98db9f33c98c510babb653ffc3/execroot/__main__/bazel-out/darwin_x86_64-fastbuild/bin/src/encryption_par.par/pypi__setuptools_38_2_3/pkg_resources/__init__.py", line 870, in resolve
pkg_resources.DistributionNotFound: The 'google-cloud-storage' distribution was not found and is required by the application
ERROR: Non-zero return code '1' from command: Process exited with status 1.
```
