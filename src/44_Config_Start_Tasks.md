## Start Script

In many cases it makes sense to start the build and maybe something like a dev server upon workspace
initialization. To that end you can provide a shell command that gets executed in a terminal on start.

For instance, the start script for the Gitpod documentation repository is defined as:
```yaml
tasks:
  - command: "npm install && npm run serve"
```
Note that you can chain multiple shell commands with `&&`.