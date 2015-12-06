+++
date = "2015-12-05T16:00:21-08:00"
draft = false
title = "Setup Approvers"
weight = 1
menu = "main"
+++

The list of approvers is stored in a `MAINTAINERS` text file in the root
of your repository. There are multiple supported file formats to choose from.


Username, separated by newline:

```
bradrydzewski
matthewnorris
```

Username and email address, separated by newline:

```
bradrydzewski <brad.rydzewski@mail.com>
matthewnorris <matthew.norris@mail.com>
```

FullName, email address and username, separated by newline:

```
Brad Rydzewski <brad.rydzewski@mail.com> (@bradrydzewski)
Matthew Norris <matthew.norris@mail.com> (@mattnorris)
```

Toml format inspired by the [Docker project](https://github.com/docker/opensource/blob/master/MAINTAINERS):

```
[people]
    [people.bradrydzewski]
        name = "Brad Rydzewski"
        email = "brad.rydzewski@mail.com"
        login = "bradrydzewski"

    [people.mattnorris]
        name = "Matt Norris"
        email = "matt.norris@mail.com"
        login = "mattnorris"
```
