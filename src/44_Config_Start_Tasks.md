# Start Tasks

When starting or restarting a workspace you typically want to run certain tasks.
Most probably that includes the build and maybe also running tests and automatically start the application in
e.g. a dev server.

Gitpod allows you to configure start tasks in the `.gitpod.yml` file.

For instance, the start script for the Gitpod documentation repository is defined as:

```yaml
tasks:
- command: mdbook serve --hostname 0.0.0.0
```

You can have multiple tasks, which are opened on separated terminals.
Let's go through the supported properties:

## command

The mandatory `command` is executed in a new terminal running in a bash. YAML allows to write string values without quotes and
even has a nice syntax for multi-line strings which comes in handy if you chain mutliple commands using `&&`.

Here is an example for a multi-line task:

```yaml
tasks:
  - command: >
      cd /workspace/src/github.com/demo-apps/go-gin-app &&
      go get -v ./... &&
      go build -o app &&
      ./app
```

## cwd

The optional `cwd` property can be used to specifiy the current working directory.
The default value is the workspace location, usually `/workspace/<repository-name>`.

## on

The optional `on` property allows to distinct when a task should be executed. There are two possible values:

`on:init` makes sure to execute a task only on first start of a workspace, but not when restarting one or on snapshot starts.
Builds are usually a good candidate, especially non-incremental or long running ones, as you don't want to rebuild everything again unneccessarily.

`on:restart` is the opposite and makes sure that the task is only executed on restarts and snapshot workspace starts.

If you leave the `on` property out, the task will be executed in any case.

Here is an example of how a configuration using this feature could look like:

```yaml
- command: yarn && yarn build && yarn serve
  on: init
- command: yarn serve
  on: restart
```

## openIn

You can configure where in the IDE the terminal should be opened:

| openIn       | Where |
| ---------------|---------------------------|
| `openIn:bottom`| the bottom panel (default)|
| `openIn:left`  | the left panel|
| `openIn:right` | the right panel|
| `openIn:main`  | the main editor area|

## openMode

You can configure how the terminal should be opened relative to the previous task.

| openMode        | Description |
| --------------- | ----------- |
| `openMode:tab-after`     | Opens in the same tab group right after the previous tab |
| `openMode:tab-before`    | Opens in the same tab group left before the previous tab |
| `openMode:split-right`   | Splits and adds the terminal to the right |
| `openMode:split-left`    | Splits and adds the terminal to the left |
| `openMode:split-top`     | Splits and adds the terminal to the top |
| `openMode:split-bottom`  | Splits and adds the terminal to the bottom |