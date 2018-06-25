# Configuration

Gitpos workspaces are started based on sensible defaults, but of course not every workspace looks the same.

## `.gitpod` File

A workspace gets configured through a .gitpod file written in `yaml` syntax. There are three ways Gitpod will look one up for your workspace.
### 1) Check-in `.gitpod` File

The simplest and preferred option is to check-in a `.gitpod` file into your repository. The advantage is that you can even version your configuration,
so if you need to go back to an old branch, that, for instance, requires a different docker image having a checked-in `.gitpod` file is the solution.

### 2) "[definitely-gp](https://github.com/gitpod-io/definitely-gp)" Repository

In case you can't check-in a .gitpod file, for instance, because you don't have access rights. You can provide one through the central
`definitely-gp` repository. It contains `.gitpod` files for public GitHub repositories. 

### 3) Inferred `.gitpod`

If the first two locations don't have a `.gitpod` file for your project, Gitpod will compute 
by analyzing your project and using good common defaults.

## Docker Image

If the standard docker image that is provided by Gitpod doesn't include all the tools you need for developing your project, you can provide
a custom docker image. The image must be publicly accessibly and follow the cmmonly used syntax of `<image>[:<tag>]`.

Example:
```
image: node:alpine
```

## Exposing Ports

If you want to expose any ports from your development workspace, for instance the served ports of your dev server. 
You can configure them in the `.gitpod` file. Ports are being mapped to their own URLs prefixing the workspace URL with `{portnumber}-`.

For instance : `https://8080-fe76ea5b-924d-4a67-a2d5-24a259619fa7.ws.gitpod.io/`.

At the moment only the `http` protocol is available.

## Start Script

You can provide a shell command for the initial terminal to run on start.
In many cases it makes sense to just start the build and maybe something like a dev server.

For example the `.gitpod` file for the documentation repository looks like this as the time of writing:
```
ports:
  - port: 8080
    protocol: "http"
tasks:
  - command: "npm install && npm run serve"
```