# Code Reviews

This section gives you a brief introduction to the code review flow with Gitpod. This assumes if you are already [familiar with the pull request (PR) creation process](4_3_2_Pull_Requests.md) and you already have a PR ready for the review.

First off, go to your PR on GitHub.

![](./images/4_3_3_Code_Reviews/go_to_pr.jpg)

If you are using the Gitpod extension in your browser, click on the Gitpod button it will start your Gitpod workspace with all the changes.

![](./images/4_3_3_Code_Reviews/click_the_gitpod_button.jpg)

Otherwise, you need to suffix the `https://gitpod.io/workspaces/` URL with the URL of your PR: `https://gitpod.io/github.com/kittaakos/express-hello-world/pull/1`.

![](./images/4_3_3_Code_Reviews/suffx_gitpod_with_pr_url.jpg)

Once your workspace is up, Gitpod immediately shows you the `Diff` view with all the changes made on the branch.

![](./images/4_3_3_Code_Reviews/changed_files.jpg)

It also opens up the file with the relevant change.

![](./images/4_3_3_Code_Reviews/code_change.jpg)

Let assume, we are not happy with the current change, and we would like to suggest a modification. You can quickly add a comment from the diff editor's gutter. Just click on the `Start New Conversations` button. Note, this functionality works only for those files that were changed in the PR.

![](./images/4_3_3_Code_Reviews/start_new_conversation.jpg)

Start a new conversation and add some remark as a single comment.

![](./images/4_3_3_Code_Reviews/add_a_new_comment.jpg)

Gitpod pushes your new comment to GitHub so everything is in sync.

![](./images/4_3_3_Code_Reviews/gh_shows_new_comment.jpg)

Open the `Pull Request` view and click on the `Review Changes` button.

![](./images/4_3_3_Code_Reviews/review_changes.jpg)

Request some changes for the PR.

![](./images/4_3_3_Code_Reviews/reject.jpg)

Here, we assume, the other user has made all the desired adjustments and pushed the commit to the remote already. When the reviewer opens the changed `main.js` file in the diff editor, it already shows the most recent state of the file.

![](./images/4_3_3_Code_Reviews/code_change_after_adjustment.jpg)

Approve the change and the entire PR.

![](./images/4_3_3_Code_Reviews/approve.jpg)

You can verify the PR approval on GitHub; everything is in sync with Gitpod.

![](./images/4_3_3_Code_Reviews/gh_show_approval.jpg)

There are only two things you have to take care of: push the `Merge` button on GitHub and delete your branch.

