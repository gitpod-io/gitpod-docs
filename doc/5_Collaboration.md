# Collaboration

As with desktop IDEs, Gitpod allows users to collaborate using the Git repositories,
i.e. pushing to remote branches, creating pull-requests or commenting on issues.
Into the bargain, Gitpod users can _share_ their workspaces. 

The sharing mechanism is currently still a bit rough and will be likely improved and 
secured in the future.

## Shared workspaces

Workspaces can be shared from the [dashboard](1_3_Dashboard.md) or from within the IDE.
On the dahsboard, click on the lock icon of the workspace entry. Unlocked means shared.
In the IDE, right-click on the user's avatar and choose _Share Workspace_. Gitpod will 
tell you the URL of the workspace. 

Anybody with this URL will be able to access the workspace as long as it is shared. By 
unsharing the workspace, the link becomes useless to anybody but the workspace owner. 
All users that are currently logged in to the same workspace will be shown as avatars 
in the top right corner of the IDE.

Guests share the same Theia backend, including the filesystem and the terminals that the 
host had opened when they entered the workspace. Opened editors, editor content, and 
other UI state are currently not shared. 

Security caveat: Currently, we store your GitHub authentication in the workspace. So 
every action towards GitHub in a shared workspace happens on behalf of the workspace 
owner's GitHub account without further autorization. It is highly recommended to only 
share workspace URLs with trusted others and unshare workspaces when sharing is no 
longer necessary.
