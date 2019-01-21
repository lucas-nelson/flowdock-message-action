# Flowdock Message Action

A GitHub action to post a new message in a Flowdock flow when a PR gets into a specific state. The
original intent was to post into our PR flow when dependabot creates a new PR.

## Usage

```
workflow "pull_request" {
  on = "pull_request"
  resolves = ["if dependabot creates PR, post to flowdock"]
}

action "if dependabot creates PR, post to flowdock" {
  uses = "lucas-nelson/flowdock-message-action@master"
  env = {
    PR_USER = "dependabot"
    PR_ACTION = "create"
  }
  secrets = ["FLOWDOCK_TOKEN"]
}
```

## Configiration

### Secrets

Create a secret for your `FLOWDOCK_TOKEN` and select it in the action.

### Environment

Two environment variables are required:

* `PR_USER` - the github user account to monitor, e.g. dependabot
* `PR_ACTION` - the pull requestio action to monitor, e.g. opened

## Setup in Flowdock

1. go to https://www.flowdock.com/oauth/applications
2. "New Application"
3. fill in the form, select "Shortcut application"
4. "Save"
5. under "Create a new source", enter a name, choose a flow and "Generate Source"

That will give you a "flow token" to use in the API request.
