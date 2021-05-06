load(
  "@build_bazel_rules_nodejs//:index.bzl",
  "nodejs_binary",
)

nodejs_binary(
  name = "generate_file",
  data = [":generateFile.js"],
  entry_point = ":generateFile.js",
  visibility = ["//:__subpackages__"],
)
