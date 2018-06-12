# Configuration

Gitpos workspaces are started based on sensible defaults, but of course not every workspace looks the same.

## `.gitpod` Files

A workspace gets configured through a .gitpod file. There are three ways Gitpod will look one up for your workspace.
### 1) Check-in `.gitpod` File

The simplest and preferred option is to check-in a `.gitpod` file into your repository. The advantage is that you can even version your configuration,
so if you need to go back to an old branch, that, for instance, requires a different docker image having a checked-in `.gitpod` file is the solution.

### 2) "[definitely-gp](https://github.com/gitpod-io/definitely-gp)" Repository

In case you can't check-in a .gitpod file, for instance, because you don't have access rights. You can provide one through the central
`definitely-gp` repository. It contains `.gitpod` files for public GitHub repositories. 

### 3) Inferred `.gitpod`

If the first two locations don't have a `.gitpod` file for your project, Gitpod will compute 
by analyzing your project and using good common defaults.

## Workspace Image

## Theia Extensions

## Exposed Ports

## Start Script

You can provide a shell command the initial terminal should execute on start.
In many cases it makes sense to just start the build and maybe something like a dev server.

Example:
```

```