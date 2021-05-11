# Bazel env file rules

This rule can be used to import environment vars into a Bazel workflow directly from an environment file.

### Basic usage

In `.env`:
```shell
# Vars need to be quoted
SOME_ENV="Hello, world!"
```

In `WORKSPACE`:
```starlark
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    # Get copy pase instructions for the http_archive attributes from the
    # release notes at https://github.com/worldpeaceio/rules_envfile/releases
)

load("@io_worldpeace_rules_envfile//:def.bzl", "envfile")
envfile(
    name = "env",
    files = [
        "//.env"
    ]
)
```

In a `BUILD.bazel` file:
```starlark
load("@env//:environment.bzl", "SOME_ENV")

sh_test(
    name = "test",
    srcs = ["test.sh"],
    env = {
        "SOME_ENV": SOME_ENV,
    },
)
````

Notes:
- This rule does not support unquoted env vars
- This rule does not support 
