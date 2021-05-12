workspace(name = "rules_envfile")

load("//:def.bzl", "envfile")

envfile(
    name = "env",
    files = [
        "//test:.env",
        "//test:2.env",
    ]
)