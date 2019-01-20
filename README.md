# Flowdock Message Action

A GitHub action to post a new message in a Flowdock flow when a PR gets into a specific state. The
original intent was to post into our PR flow when dependabot creates a new PR.

## Usage

```
workflow "on dependabot pull request create, post to flowdock" {
  on = "pull_request"
  resolves = ["post on create"]
}

action "post on create" {
  uses = "lucas-nelson/flowdock-message-action"
  secrets = ["GITHUB_TOKEN"]
}
```

## Configiration

*TODO*
