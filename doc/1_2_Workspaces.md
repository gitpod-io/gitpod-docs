# Workspaces

A Gitpod workspace can be created from any GitHub project, branch, issue or pull-request.
We are still working on supporting other plaftorms such as GitLab and Bitbucket. 

Gitpod derives the context of the workspace from the URL of the repository page from which it 
was started. Different issues, pull requests, or branches will result in separate workspaces,
allowing to easily perform individual tasks in their own isolated environments. Workspaces of 
the same Git repository can be synchronized by means of the usual Git facilities.

Each workspace consists of a full Linux container and the backend part of the Theia IDE. 
From the IDE's terminal, the user can directly access all development tools of the Linux 
system and even install missing ones.

When launching a workspace, Gitpod will start the container in the cloud and check out the
Git repository accoding to the context, i.e. create feature branches for issues automatically, 
or check out the branch of a PR. The context is also used to set up the IDE i.e. prepare 
the _Git Diff_ and _Pull Request_ views for pull-request reviews.

You can further configure your workspace using `.gitpod` files. How this is done is explained 
[here](./3_Configuration.md).

Workspaces will be closed automatically when there has not been user interaction for a certain 
period of time. If the IDE is still open, a dialog will pop up that lets the user either restart
the workspace or got to the dashboard. Workspaces can also be closed from the user context menu
in the IDE (right-click on your Avatar in the upper right corner), or from the dashboard. 

On close, Gitpod stores the current state of the workspace's repository in the cloud, such that 
you can revisit it later. Files in other locations will not be saved. Gitpod does not delete 
any of these workspaces. See [dashboard](1_3_Dashboard.md) for details.

Workspaces can also be shared with other users. See the section on [collaboration](5_Collaboration.md) 
for details.