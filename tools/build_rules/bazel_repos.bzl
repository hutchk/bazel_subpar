def bazel_repos():

  # Python rules from Bazel.
  native.git_repository(
      name = "io_bazel_rules_python",
      # Workaround for https://github.com/bazelbuild/rules_python/issues/14
      commit = "10d8f0f3f791d2e5ab4a81a73d3d053f651a7310",
      remote = "https://github.com/hutchk/rules_python.git",
      )

  # Docker rules from bazel.
  native.git_repository(
      name = "io_bazel_rules_docker",
      remote = "https://github.com/bazelbuild/rules_docker.git",
      tag = "v0.3.0"
      )
