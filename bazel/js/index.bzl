load(
  "@build_bazel_rules_nodejs//:index.bzl",
  "node_repositories",
  "npm_install",
  "yarn_install",
  _pkg_npm = "pkg_npm",
  _js_library = "js_library",
  _nodejs_binary = "nodejs_binary",
)

load(
  "@bazel_js_typescript_npm_deps//@bazel/typescript:index.bzl",
   _ts_project = "ts_project"
)

# Re-export repository-wide js rules.
pkg_npm = _pkg_npm
js_library = _js_library
ts_project = _ts_project
nodejs_binary = _nodejs_binary
