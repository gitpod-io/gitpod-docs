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