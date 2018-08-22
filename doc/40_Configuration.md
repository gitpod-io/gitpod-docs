# Configuring Workspaces

Gitpod workspaces are started based on sensible defaults, but of course not every workspace looks
the same.

  * [`.gitpod` File](#gitpod-file)
    * [Checked-in .gitpod File](#checked-in-gitpod-file)
    * [definitely-gp Repository](#definitely-gp-repository)
    * [Inferred `.gitpod` File](#inferred-gitpod-file)
  * [Docker Image](#docker-image)
  * [Exposing Ports](#exposing-ports)
  * [Start Script](#start-script)
  * [Working with Go](#working-with-go)

## `.gitpod` File

A workspace gets configured through a `.gitpod` file written in `yaml` syntax. There are three ways
you can provide this file:

### Checked-in `.gitpod` File

The simplest and preferred option is to check in a `.gitpod` file into your repository. The
advantage is that you can even version your configuration, so if you need to go back to an old
branch that, for instance, requires a different docker image, having a checked-in `.gitpod` file is
the solution.

### [definitely-gp](https://github.com/gitpod-io/definitely-gp) Repository

Sometimes you can't check in a `.gitpod` file, for instance because you don't have sufficient
access rights. However, you still can provide one through the central
[definitely-gp](https://github.com/gitpod-io/definitely-gp) repository. It contains `.gitpod` files
for public GitHub repositories.

### Inferred `.gitpod` File

If the first two locations don't have a `.gitpod` file for your project, Gitpod will compute one by
analyzing your project and using good common defaults.

## Docker Image

If the standard docker image that is provided by Gitpod doesn't include all the tools you need for
developing your project, you can provide a custom docker image. The image must be publicly
accessible and named like `<image>[:<tag>]`.

Example:
```yaml
image: node:alpine
```

## Exposing Ports

If you want to expose any ports from your development workspace, for instance the served ports of
your dev server, you can configure them in the `.gitpod` file:
```yaml
ports:
  - port: 8080
    protocol: "http"
```
Ports are being mapped to their own URLs prefixing the workspace URL with `{portnumber}-`. For
instance: `https://8080-fe76ea5b-924d-4a67-a2d5-24a259619fa7.ws.gitpod.io/`. At the moment only the
`http` protocol is available.

## Start Script

In many cases it makes sense to just start the build and maybe something like a dev server. For
that purpose, you can provide a shell command to be run in the initial terminal on start.

For instance, the start script for the Gitpod documentation repository is defined as:
```yaml
tasks:
  - command: "npm install && npm run serve"
```

You can chain multiple shell commands with `&&`.

## Working with Go

Go requires to [organize your code in a specific
way](https://golang.org/doc/code.html#Organization).
In short, it expects the source code of your repository and its dependencies in the directories
```
src/<repository provider>/<repository owner>/<repository name>
```
on the `$GOPATH`. To achieve that with Gitpod, you have to tweak the `.gitpod` file a bit. Here is
how we do that for the example
[go-gin-app](https://github.com/gitpod-io/definitely-gp/blob/master/go-gin-app/.gitpod) repository:
```yaml
...
checkoutLocation: "src/github.com/demo-apps/go-gin-app"
workspaceLocation: "."
tasks:
  - command: >
      cd /workspace/src/github.com/demo-apps/go-gin-app &&
      go get -v ./... &&
      go build -o app &&
      ./app
```

In more detail:
  * By default, Gitpod clones the repository into the directory `/workspace`, which becomes the
    parent directory for the workspace. With `checkoutLocation` and `workspaceLocation` you can
    change this (the paths are taken relative to `/workspace`).
  * Gitpod preconfigures the `$GOPATH` environment variable to include the directory `/workspace`.
  * With `go get -v ./...` we retrieve the sources of the dependencies from GitHub.
  * To build the app, we run `go build -o app`.
  * Finally we start the app.
