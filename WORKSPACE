workspace(name = "rules_envfile")

load("//:def.bzl", "envfile")

envfile(
    name = "env",
    files = [
        # "non-package/non-package.env",
        "//test-package:package.env",
        "//test-package:package2.env",
    ]
)