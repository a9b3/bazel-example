load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories", "npm_install", "yarn_install")

def setup_js():
  """Setup javascript deps.
  """
  node_repositories(
    node_urls = [
        "https://mirror.bazel.build/nodejs.org/dist/v{version}/{filename}",
        "https://nodejs.org/dist/v{version}/{filename}",
    ],
    node_version = "14.15.5",
    yarn_urls = [
        "https://github.com/yarnpkg/yarn/releases/download/v{version}/{filename}",
    ],
    yarn_version = "1.22.4",
  )
