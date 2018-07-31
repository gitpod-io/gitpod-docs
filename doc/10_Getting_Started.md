# Getting Started with Gitpod

Gitpod delivers the IDE part for the web-based development flows of common code hosting platforms. The following example 
shows how to use Gitpod with a GitHub repository.

1. Point your browser to some GitHub repository, pull request or issue, e.g. https://github.com/arunoda/learnnextjs-demo
2. Either prefix the URL in the address bar of your browser with `https://gitpod.io#` (e.g. https://gitpod.io#https://github.com/arunoda/learnnextjs-demo) or push the _Gitpod_ button if you 
have installed the [Gitpod extension](20_Browser_Extension.md).
3. On first use you will have to authorize access to your GitHub account. This is necessary so you can use it from within Gitpod.
4. Gitpod will now launch a workspace container for you in the cloud containing a full Linux system machine. It will also clone the GitHub repository branch 
according to the GitHub site you were coming from, and run startup scripts in case they are defined in a [Gitpod configuration file](40_Configuration.md) for the repository.
5. The Theia IDE frontend opens in your browser with the views opened according to your GitHub context. You can now start browsing, 
coding, running and reviewing the source code. Read on [here](50_IDE.md) for more details on the capabilities of the IDE.
6. You can push your changes back to GitHub, e.g. by creating a PR, pushing to remote branches,
adding review comments or similar. Read more about this in our section on [Git integration](54_Git.md).
7. Once you are done, close the IDE or just let it time out (30 mins). Gitpod will automatically take care of disposing the 
resources and saving your workspace's state for a subsequent visit in case you need to.

