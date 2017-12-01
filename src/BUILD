load("@subpar//:subpar.bzl", "par_binary")
load("@third_party_py//:requirements.bzl", "requirement")

package(default_visibility = ["//visibility:public"])

py_binary(
    name = "encryption_bin",
    srcs = [
        "encryption_bin.py",
    ],
    deps = [
        requirement("google-cloud-storage"),
    ],
)

par_binary(
    name = "encryption_par",
    srcs = [
        "encryption_par.py",
    ],
    deps = [
        requirement("google-cloud-storage"),
    ],
)
