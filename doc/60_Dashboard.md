# The Dashboard

Gitpod's dashboard allows you to log in and out, navigate through all your workspaces 
and view details of your account and subscription. It can be reached by pointing your 
browser to [https://gitpod.io](https://gitpod.io).

If you're not logged in, you will see a _Log in_ button. Otherwise, the top-right 
corner will display your avatar's picture. Clicking it will reveal the User Menu.

## Workspaces

By default, the dashboard shows you a list of your workspaces and their current state.
The list is sorted by relevance (running workspaces first). It can be searched using the 
search field.

![a workspace entry](images/1_3_Dashboard/workspace-entry.png)

Each entry provides information about the workspace's name, creation date, workspace 
context (repository, branch, commit ID, issue or pull-request), execution state (e.g. 
_Starting_, _Stopping_, _Last run_),

Workspaces can be started, stopped, or opened using the respective buttons.

You can also allow/disallow sharing of a workspace by clicking the lock icon. See the 
section on [collaboration](30_Workspaces.md#shared-workspaces) for details about sharing workspaces.

### Archived workspaces

You can also _archive_ a workspace if you don't want it to appear in the list unless it 
is necessary.

If you try to open a workspace from an existing context, Gitpod will redirect you 
to the dashboard in order to choose whether to open a new workspaces or an  
exisiting one. Archived workspaces will not be taken into account.

## Account details

Acount details can be accessed via the _User Menu > Account details_. This page
allows you to add remove accounts to code hosting platforms and manage your Gitpod 
subscription. It also gives you a tabular view on your Gitpod usage.

## Log out

You can log out of Gitpod using _Log out_ from the _User Menu_. Note that your GitHub
authentication token will be preserved for the next time you log in.