# Configuring Workspaces

Gitpod workspaces come with good defaults, but of course not every workspace looks the same.

  * [`.gitpod` File](#gitpod-file)
    * [Checked-in .gitpod File](#checked-in-gitpod-file)
    * [definitely-gp Repository](#definitely-gp-repository)
    * [Inferred `.gitpod` File](#inferred-gitpod-file)
  * [Docker Image](#docker-image)
  * [Exposing Ports](#exposing-ports)
  * [Start Script](#start-script)
  * [Working with Go](#working-with-go)

## `.gitpod` File

A workspace gets configured through a `.gitpod` file written in YAML syntax. It has the following structure:

```yaml
# The Docker Image to run your workspace in
image: gitpod/workspace-full:latest
# The command to start on workspace startup
tasks:
  - command: "yarn install && yarn build"
# The ports to open at workspace startup
ports:
  - port: 8000
    protocol: "http"
```

There are three ways you can provide this file:

### Checked-in `.gitpod` File

The simplest and preferred option is to check in a `.gitpod` file into your repository. This way you
version your workspace configuration together with your code. If, for example, you need to go back to
an old branch that required a different Docker image, it will start with the correct image, since that
bit of configuration is part of your codebase.

### [definitely-gp](https://github.com/gitpod-io/definitely-gp) Repository

Sometimes you can't check in a `.gitpod` file, for instance because you do not have sufficient
access rights. However, you can still provide a `.gitpod` file through the central
[definitely-gp](https://github.com/gitpod-io/definitely-gp) repository. Note that it contains
`.gitpod` files for public GitHub repositories only. To add your `.gitpod` file to `definitely-gp`,
simply raise a PR.

### Inferred `.gitpod` File

If the first two locations do not have a `.gitpod` file for your project, Gitpod will compute one by
analyzing your project and using good common defaults.

## Docker Image

If the standard Docker image that is provided by Gitpod does not include all the tools you need for
developing your project, you can provide a custom Docker image.

### Configure a custom Docker Image

There are two ways to configure a custom Docker image in your `.gitpod` file:

* Reference a publicly available image:

    ```yaml
    image: node:alpine
    ```
    The official Gitpod Docker images are hosted on [DockerHub](https://hub.docker.com/u/gitpod/).
* Reference a Dockerfile next to your `.gitpod` file:

    ```yaml
    image:
      file: docker/gitpod.Dockerfile
      # Context is optional, defaults to an empty context
      context: docker
    ```
    The Dockerfile is built automatically and is updated whenever the Dockerfile changes.

### Develop a custom Docker Image

The simplest option is to inherit from
`gitpod/workspace-full`. It already contains all the tools necessary to work with all languages Gitpod supports.
Also, it has the `gitpod` user set up, which allows for adjusting user settings.

The following example shows a typical Dockerfile inheriting form `gitpod/workspace-full`:
```yaml
FROM gitpod/workspace-full:latest

USER root
# Install some Ubuntu packages
RUN apt-get update && apt-get install -y \
        ... \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Set some environment variables or configuraton for the Gitpod user
USER gitpod
ENV ...

# Give back control
USER root
```

### Creating Docker Images for Gitpod

A good starting point for creating custom Docker Images is the `gitpod/workspace-full` image.

```Dockerfile
FROM gitpod/workspace-full

# install custom tools, runtime, etc.
```

When you are launching the Gitpod IDE, the local console will use the `gitpod` user, so all local settings, config file, etc. should apply to `/home/gitpod` or be run using `USER gitpod`. 

Switching users in the Dockerfile to `gitpod` requires switching back to `USER root` at the end of the Dockerfile, so that the IDE can start. 

```Dockerfile
FROM gitpod/workspace-full

# install custom tools, runtime, etc.

USER gitpod

# apply user-specific settings

USER root
```

## Exposing Ports

If you want to access services running in your workspace, e.g. a development HTTP server on port `8080`,
you need to expose that port first. Gitpod has two means of doing that:
  1. On-the-fly: when you start a process which listens on a port in your workspace, Gitpod will ask you
     if you want to expose that port to the internet.
  2. In your configuration: if you already know that you want a particular port exposed, you can configure
     it in the `.gitpod` file and skip the extra click later on. For example:
```yaml
ports:
  - port: 8080
    protocol: "http"
```
Ports are mapped to their own URLs, prefixing the workspace URL with `{portnumber}-`. For instance:
`https://8080-fe76ea5b-924d-4a67-a2d5-24a259619fa7.ws.gitpod.io/`. At the moment you can only expose
HTTP servers.

## Start Script

In many cases it makes sense to start the build and maybe something like a dev server upon workspace
initialization. To that end you can provide a shell command that gets executed in a terminal on start.

For instance, the start script for the Gitpod documentation repository is defined as:
```yaml
tasks:
  - command: "npm install && npm run serve"
```
Note that you can chain multiple shell commands with `&&`.

## Working with Go

Go projects need a [specific workspace layout](https://golang.org/doc/code.html#Organization):
the source code of your repository and its dependencies must be in the directories
```
src/<repository provider>/<repository owner>/<repository name>
```
in the `$GOPATH`. Using the `.gitpod` file, you can bring about such a workspace layout. Here is
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
    root directory for the workspace. With `checkoutLocation` and `workspaceLocation` you can
    change this behavior (the paths are taken relative to `/workspace`).
  * Gitpod preconfigures the `$GOPATH` environment variable to include the directory `/workspace`.
  * With `go get -v ./...` we retrieve the sources of the dependencies from GitHub.
  * To build the app, we run `go build -o app`.
  * Lastly, we start the application.
