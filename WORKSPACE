# Python rules from Bazel.

load("//tools/build_rules:bazel_repos.bzl", "bazel_repos")

bazel_repos()

load("//tools/build_rules:google_repos.bzl", "google_repos")

google_repos()

# Load Python rules.
load("@io_bazel_rules_python//python:pip.bzl", "pip_repositories", "pip_import")

pip_repositories()

pip_import(
    name = "third_party_py",
    requirements = "//third_party:python.txt",
)

load("@third_party_py//:requirements.bzl", "pip_install")

pip_install()
