# Gitpod Documentation

Gitpod is an online IDE, that integrates with code hosting platforms such as GitHub, GitLab and Bitbucket. With 
a single click it creates ready-to use developer workspaces with a fully-featured IDE running in the Cloud.

The IDE is open-source and based on [Eclipse Theia](https://theia-ide.org). It is highly extensible and builds
upon mature technologies such as TypeScript, VS Code, Webpack, and Node.js. 

This site provides all the details on how to use Gitpod and Theia.

## Getting started with Gitpod

Gitpod delivers the IDE part for the web-based development flows of common code hosting platforms. This example 
shows how to use Gitpod with a GitHub repository.

1. Point your browser to some GitHub repository, e.g. TODO
2. Either prefix the URL in the address bar of your browser with `gitpod.io/` or push the _Gitpod_ button if you 
have installed the [Gitpod extension](link).
3. If you have not used Gitpod before, you will have to authorize access to your Github account. This is 
necessary to act towards GitHub on your behalf.
4. Gitpod will now launch a workspace container for you in the cloud. It contains a full Linux system, the backend 
code for Theia etc. It will also clone the GitHub repository branch you were
coming from, and run startup scripts in case they are defined in a [Gitpod configuration file]() for the repository.
5. Once the workspace is ready, Gitpod will launch the Theia IDE frontend in your browser. You can now start browsing, 
editing, reviewing the code. Read on [here]() for more details on the capabilities of the IDE.
6. You can push your changes back to GitHub, e.g. by creating a PR, pushing to remote branches,
adding review comments or similar. Read more about this in our section on [GitHub integration]().
7. Once you are done, close the IDE or just let it time out. Gitpod will automatically take care of disposing the 
resources and saving your workspace's state for a subsequent visit.


