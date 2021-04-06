# API for vendored repository rules

load("@bazel_tools//tools/build_defs/repo:http.bzl",
   _http_archive = "http_archive",
)

http_archive = _http_archive

def load_external_workspaces():
  """Load external workspaces.
  """
  http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "fcc6dccb39ca88d481224536eb8f9fa754619676c6163f87aa6af94059b02b12",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/3.2.0/rules_nodejs-3.2.0.tar.gz"],
  )
