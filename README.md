# Github Release Action

A Github action to create releases and upload artifacts to the release. It assumes anything in `$GITHUB_WORKSPACE` matching `./*.tgz` is an artifact.


```
workflow "on tag, create a release and upload artifacts" {
  on = "tag"
  resolves = ["create release"]
}

action "create release" {
  uses = "devinclark/create-github-release@master"
  secrets = ["GITHUB_TOKEN"]
}
```

Tests

The tests use shellcheck.

```bash
./test.sh
```