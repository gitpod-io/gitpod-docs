## Shared Workspaces
Workspaces can be shared from the [dashboard](60_Dashboard.md) or from within the IDE. In the IDE,
right-click on the user's avatar and choose `Share Workspace`. Provide the URL shown in the dialog to
anyone you want to share your workspace with.

![](./images/share-workspace.png)

Beware, anybody with this URL and a Gitpod account will be able to access the workspace as long as
it is shared and running. By unsharing the workspace, the link becomes useless to anybody but the
workspace owner. All users that are currently looking at your workspace will be shown as avatars in
the top right corner of the IDE.

All users in one workspace share the Theia backend and the filesystem. Opened editors, terminals,
and other UI state are currently not shared.

**Security note: since the `git` command in the workspace is configured with your personal GitHub
token, your access to GitHub is shared, too!**

Every action towards GitHub in a shared workspace happens on behalf of the workspace owner's GitHub
account without further authorization. It is highly recommended to give workspace URLs only to
trusted users and unshare workspaces as soon as sharing them is no longer necessary. A Gitpod
workspace really is your personal machine.

