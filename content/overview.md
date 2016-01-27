+++
date = "2015-12-05T16:00:21-08:00"
draft = false
title = "Quick Start"
weight = 1
menu = "main"
toc = true
+++

# Overview

Get started by logging in to [lgtm.co](https://lgtm.co) (or by [installing](../install) and setting up your own lgtm instance) and enabling your repositories via a simple on / off switch.

When you enable your repository it is automatically configured to use [protected branches](https://github.com/blog/2051-protected-branches-and-required-status-checks). Protected branches prevent pull requests from being merged until required status checks are passing. LGTM will register itself as a required status check.

# Approvers

Define a list of individuals that can approve pull requests. This list should be store in a MAINTAINERS file to the root of your repository. Please see the [maintainers](../maintainers) documentation for supported file formats.

```
bradrydzewski <brad.rydzewski@mail.com>
matthewnorris <matthew.norris@mail.com>
```

**Please note** that LGTM pulls the MAINTAINERS file from your repository default branch (typically master). Changes to the MAINTAINERS file are not recognized until present in the default branch. Changes to the MAINTAINERS file in a pull request are therefore not recognized until merged.

# Approvals

Pull requests are locked and cannot be merged until the minimum number of approvals are received (two, by default). Project maintainers can indicate their approval by commenting on the pull request and including LGTM, looks good to me, in their approval text.

![approval complete](/docs/images/approval_complete.png)


# Customize

You can customize the required number of approvals and approval regex matching pattern. Please see the customization [documentation](../customize) for more detail.
