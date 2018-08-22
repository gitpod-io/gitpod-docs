# Workspaces

A Gitpod workspace can be created from any GitHub project, branch, issue, or pull request. Very
soon Gitpod will support additional platforms and integrate with GitLab, Bitbucket, and Jira.

  * [Context URLs](#context-urls)
    * [GitHub Project Context](#github-project-context)
    * [GitHub File Context](#github-file-context)
    * [GitHub Issue Context](#github-issue-context)
    * [GitHub Pull Request Context](#github-pull-request-context)
  * [Life of a Workspace](#life-of-a-workspace)
    * [Timeouts](#timeouts)
    * [Stop and Archive](#stop-and-archive)
    * [Changes Are Saved](#changes-are-saved)
  * [Shared Workspaces](#shared-workspaces)

## Context URLs

Gitpod derives the workspace context from the URL of the repository page from which it was
started. Different issues, pull requests, or branches will result in different workspaces, allowing
developers to easily perform individual tasks in their own isolated environments.

Each workspace includes a full Linux container. From the IDE's terminal, the user can directly
access all development tools of the Linux system and even install missing ones.

In the following we describe the supported contexts and what they do:

### GitHub Project Context

Creating a Gitpod workspace from the project's base URL does not carry a lot of context.
Gitpod will check out the `master` branch and open the `Readme.md` if it exists.

An example for this context is `https://github.com/arunoda/learnnextjs-demo`.

### GitHub File Context

The file context is an extension to the project context, in that Gitpod will check out the
corresponding branch and open the respective file in an editor.

An example for this context is
`https://github.com/arunoda/learnnextjs-demo/blob/getting-started/pages/index.js`.

When pointing to a directory, e.g.
`https://github.com/arunoda/learnnextjs-demo/tree/create-dynamic-pages/pages`, `Readme.md`
will be opened if it exists there.

### GitHub Issue Context

When starting a workspace from a GitHub issue, a local branch named `GH-{issue-number}` will be
created, based on the remote's default branch. In most cases that will be `origin/master`.

In addition, the commit message is preconfigured with `fixes #{organization}/{repo}#{issue-number}`.
This will automatically close the GitHub issue once such a commit is merged into the default branch.

As soon as changes have been committed locally, the `Pull Request` view on the right can be used to
push changes to a remote repository and create a pull request.

### GitHub Pull Request Context

Starting workspaces from pull requests will clone the respective branch and open the file
changes of the PR in a view on the left. The first change is opened in the diff editor.
Also the `Pull Request` view on the right is configured to reflect the PR information.

This context is meant for code reviews or to take action on feedback you got from a reviewer.

## Life of a Workspace

Gitpod makes creating fresh workspaces as easy as clicking a button on a GitHub page.
In most cases it is easier to create fresh workspaces rather than going back to older ones.
See the [dashboard documentation](60_Dashboard.md) on where to find your workspace history
and how to restart the older workspaces.

### Timeouts
Any running workspace will automatically stop after 30 minutes of inactivity. Activity is triggered
by any action in the IDE; moving the mouse is enough. If the IDE is still open, but the
corresponding workspace has stopped, a dialog will pop up that lets you start the workspace
again.

### Stop and Archive
If you want more control over your Gitpod hours, you can stop your workspace explicitly. To
do so, click on the avatar in the top right and choose the `Stop Workspace` command (also available
through the command palette). The dialog will ask if you want to archive the workspace. By default,
archived workspaces are not shown in the workspace list of the dashboard and will not be considered
when starting a fresh workspace for the same context URL.

Workspaces can also be stopped, started, archived, and unarchived from the
[dashboard](60_Dashboard.md).

### Changes Are Saved
Gitpod continuously backs up the current state of the workspace's repository in the cloud, so that
you can revisit it later. Files in other locations will not be saved. Gitpod never deletes a
workspace. See [dashboard](60_Dashboard.md) for details.

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
