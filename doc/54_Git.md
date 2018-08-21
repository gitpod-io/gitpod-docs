# Git Integration

Theia ships with a couple of Git-related features. Please note that these are all meant to be
convenient UIs on top of the command line `git`, which is available in the terminal as well.

  * [Authoring Commits](#authoring-commits)
  * [Git Status Bar](#git-status-bar)
  * [Branches and Tags](#branches-and-tags)
  * [Gutter Indicators](#gutter-indicators)
  * [Blame Annotations](#blame-annotations)
  * [Merge Conflicts](#merge-conflicts)
  * [Viewing Diffs](#viewing-diffs)
  * [Git History](#git-history)

## Authoring Commits

The Git view is automatically added to the left panel. If you have accidentally closed it, you can
activate it from the `View` > `Git` menu or with the <kbd>Ctrl+Shift+G</kbd> (<kbd>⌘+Shift+G</kbd>
on macOS) key binding.

The `Git` view consists of three major parts. The top section is for authoring the commit messages.
It also provides access to a couple of basic Git commands.

![](./images/54_Git/git_commit_message.jpg)

Right below the commit section, the changed files with their names are listed in two groups: the
`STAGED CHANGES` and `CHANGED`. The latter shows all unstaged changes.

![](./images/54_Git/git_file_changes.jpg)

At the bottom of the `Git` view, a small section gives a quick insight into the most recent commit.

![](./images/54_Git/git_last_commit.jpg)

In the list of staged and unstaged changes, the file names are followed by the path to their
containing folder and an indicator describing the type of the change. This can be:

  - `A`: Added (new staged),
  - `U`: new Unstaged,
  - `R`: Renamed,
  - `C`: Copied (blue), Conflicted (red),
  - `M`: Modified, and
  - `D`: Deleted.

An unstaged change can be reverted by clicking on the `Discard Changes` action next to the file
location. Double-clicking on a modified file will open it in a diff editor. The read-only editor on
the left-hand side shows the state from the index. The right-hand side of the editor reflects the
state of the working tree, and it lets you to further modify the file. New and deleted files do not
open in a diff editor. The files can be staged (added to the index) by clicking on the `Stage
Changes` action (`+` sign), the opposite operation being the `Unstage Changes` action (`-` sign).

After staging the desired files and specifying the commit message, the changes can be committed to
the repository. After a successful commit, the `Last Commit` section will be automatically updated.

## Git Status Bar

In the bottom left corner of Theia you can find indicators describing the status of your repository.
It shows the current branch, dirty indicators, and the number of ahead and behind changes of the
current branch.

The dirty indicators are as follows:

  - `*`: You have unstaged changes in your branch.
  - `+`: You have staged changes in your branch, but no unstaged.
  - `!`: You have conflicting changes in your branch.

![](./images/54_Git/git_status_bar.jpg)

By clicking on the branch name, you can perform a `git checkout`. This operation is equivalent to
the `Git: Checkout` command from the command palette.

There is a `Synchronize Changes` action as well in the status bar, next to the branch indicator, if
the currently checked-out branch has an upstream branch configured. `Synchronize Changes` will pull
remote changes down to your local repository and then push local commits to the upstream branch.

## Branches and Tags

![](./images/54_Git/git_checkout_command.jpg)

You can create and checkout branches directly within Theia through the `Git: Checkout` command in
the command palette. For creating a new branch, select the first item from the list, `Create new
branch...`, and specify the desired name of your branch. Theia creates the new branch for you and
switches to it.

![](./images/54_Git/git_checkout_branches.jpg)

## Gutter Indicators

If you open a file in an editor that is under version control by Git and start applying changes,
Theia will add useful annotations to the gutter and to the overview ruler of the editor.

  - A red triangle indicates where lines have been deleted.
  - A green bar shows the newly added lines.
  - A blue bar indicates modified lines.

![](./images/54_Git/git_gutter.jpg)

## Blame Annotations

You can show the blame annotation by either selecting the `Show Blame Annotations` from the editor's
context menu or by picking `Git: Show Blame Annotations` from the command palette. This will show
the blame annotations on the left hand-side of the editor. Press <kbd>Esc</kbd> if you want to hide
the blame annotations.

![](./images/54_Git/git_blame_annotations.jpg)

## Merge Conflicts

Theia recognizes merge conflicts. Theia highlights the differences and provides inline action to
accept either the local or the incoming change. Alternatively, both modifications can be accepted at
the same time. Once you have resolved the conflicts, stage your changes and commit them.

![](./images/54_Git/git_merge_conflicts.jpg)

## Viewing Diffs

The Git extension supports viewing of diff within Theia. Selecting any of the modified files will
open a diff editor. As discussed earlier, the left-hand side is a read-only editor representing the
index state, and the right-hand side editor is the working tree.

![](./images/54_Git/git_diff.jpg)

## Git History

Theia provides various ways to review the Git history.

  - The history of an individual file can be checked, or
  - The history of multiple files within a folder can be reviewed at once.

You can activate the `Git History` view from the `View` > `Git History` menu or toggle the view with
the <kbd>Alt+H</kbd> command, but the most convenient and recommended way is to right-click on the
file in the `Files` navigator and select the `Git History` context menu item. The content of the
`Git History` view does not update when changing the active editor or when altering the selection in
the `Files` view. To get the history of an individual resource you have to either use the `Git
History` command from the command palette or from the `Files` navigator's context menu.

The top of the `Git History` view shows the path of the resource or resources. Right below the path,
you can see the list of commits with some details; such as the committer, the subject of the commit
message, and the relative time of the commit. You can open up the commit in a read-only editor to
review all the details about the commit.

![](./images/54_Git/git_history.jpg)
