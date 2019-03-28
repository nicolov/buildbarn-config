workspace(name = "buildbarn_builder")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
        name = "bazel_gomock",
        sha256 = "eeed097c09e10238ca7ec06ac17eb5505eb7eb38d6282b284cb55c05e8ffc07f",
        strip_prefix = "bazel_gomock-ff6c20a9b6978c52b88b7a1e2e55b3b86e26685b",
        urls = ["https://github.com/jmhodges/bazel_gomock/archive/ff6c20a9b6978c52b88b7a1e2e55b3b86e26685b.tar.gz"],
)

http_archive(
        name = "bazel_toolchains",
        sha256 = "109a99384f9d08f9e75136d218ebaebc68cc810c56897aea2224c57932052d30",
        strip_prefix = "bazel-toolchains-94d31935a2c94fe7e7c7379a0f3393e181928ff7",
        urls = [
                    "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/94d31935a2c94fe7e7c7379a0f3393e181928ff7.tar.gz",
                    "https://github.com/bazelbuild/bazel-toolchains/archive/94d31935a2c94fe7e7c7379a0f3393e181928ff7.tar.gz",
                ],
)

http_archive(
        name = "io_bazel_rules_docker",
        sha256 = "aed1c249d4ec8f703edddf35cbe9dfaca0b5f5ea6e4cd9e83e99f3b0d1136c3d",
        strip_prefix = "rules_docker-0.7.0",
        urls = ["https://github.com/bazelbuild/rules_docker/archive/v0.7.0.tar.gz"],
)

http_archive(
        name = "io_bazel_rules_go",
        sha256 = "6776d68ebb897625dead17ae510eac3d5f6342367327875210df44dbe2aeeb19",
        urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.17.1/rules_go-0.17.1.tar.gz"],
)

http_archive(
        name = "bazel_gazelle",
        sha256 = "3c681998538231a2d24d0c07ed5a7658cb72bfb5fd4bf9911157c0e9ac6a2687",
        urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/0.17.0/bazel-gazelle-0.17.0.tar.gz"],
)

load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories")

container_repositories()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains()

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

# Storage

http_archive(
        name = "com_github_buildbarn_bb_storage",
        urls = ["https://github.com/buildbarn/bb-storage/archive/b60a694b50592ad72a5a126f2cba7f96a15b4291.tar.gz"],
        strip_prefix = "bb-storage-b60a694b50592ad72a5a126f2cba7f96a15b4291",
)

load("@com_github_buildbarn_bb_storage//:go_dependencies.bzl", "bb_storage_go_dependencies")

bb_storage_go_dependencies()

# Browser

http_archive(
        name = "com_github_bazelbuild_bazel",
        patches = ["@com_github_buildbarn_bb_browser//:patches/com_github_bazelbuild_bazel/build_event_stream.diff"],
        sha256 = "6860a226c8123770b122189636fb0c156c6e5c9027b5b245ac3b2315b7b55641",
        urls = ["https://github.com/bazelbuild/bazel/releases/download/0.22.0/bazel-0.22.0-dist.zip"],
)

http_archive(
        name = "com_github_buildbarn_bb_browser",
        urls = ["https://github.com/buildbarn/bb-browser/archive/1b82094f6418c7fc157cf76130bd05e1efe08f29.tar.gz"],
        strip_prefix = "bb-browser-1b82094f6418c7fc157cf76130bd05e1efe08f29",
)

load("@com_github_buildbarn_bb_browser//:go_dependencies.bzl", "bb_browser_go_dependencies")

bb_browser_go_dependencies()

# Remote execution

http_archive(
        name = "com_github_buildbarn_bb_remote_execution",
        urls = ["https://github.com/buildbarn/bb-remote-execution/archive/68405fb417c8edf624ee0ee68042f4c309969da1.tar.gz"],
        strip_prefix = "bb-remote-execution-68405fb417c8edf624ee0ee68042f4c309969da1",
)
