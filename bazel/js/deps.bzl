load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories", "npm_install", "yarn_install", _pkg_npm = "pkg_npm")

# Re-export repository-wide js rules.
pkg_npm = _pkg_npm

def setup_js():
  """Setup javascript deps.
  """
  node_repositories(
     node_repositories = {
      "14.15.5-darwin_amd64": ("node-v14.15.5-darwin-x64.tar.gz", "node-v14.15.5-darwin-x64", "78e2a63c54f0d3e22f0b3d29a832d0379406a619f1107d6e74679a1e76a132b0"),
    },
    node_urls = [
        "https://nodejs.org/dist/v{version}/{filename}",
    ],
    node_version = "14.15.5",
    yarn_urls = [
        "https://github.com/yarnpkg/yarn/releases/download/v{version}/{filename}",
    ],
    yarn_version = "1.22.4",
  )

  # manage all babel npm deps here
  npm_install(
    name="bazel_js_babel_npm_deps",
    package_json = "//bazel/js/babel:package.json",
    package_lock_json = "//bazel/js/babel:package-lock.json",
    symlink_node_modules = False,
  )
