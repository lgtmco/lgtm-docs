+++
date = "2015-12-05T16:00:21-08:00"
draft = false
title = "Maintainers"
weight = 2
menu = "main"
+++

The list of approvers is stored in a `MAINTAINERS` text file in the root
of your repository. There are multiple supported file formats to choose from.

Username, separated by newline:

```
bradrydzewski
lindaortega
matthewnorris
```

Username and email address, separated by newline:

```
bradrydzewski <brad.rydzewski@mail.com>
lindaortega <linka.ortega@mail.com>
matthewnorris <matthew.norris@mail.com>
```

FullName, email address and username, separated by newline:

```
Brad Rydzewski <brad.rydzewski@mail.com> (@bradrydzewski)
Linda Ortega <linda.ortega@mail.com> (@lindaortega)
Matthew Norris <matthew.norris@mail.com> (@mattnorris)
```

Toml format inspired by the [Docker project](https://github.com/docker/opensource/blob/master/MAINTAINERS):

```
[people]
    [people.bradrydzewski]
        name = "Brad Rydzewski"
        email = "brad.rydzewski@mail.com"
        login = "bradrydzewski"

    [people.bradrydzewski]
        name = "Linda Ortega"
        email = "linda.ortega@mail.com"
        login = "lindaortega"

    [people.mattnorris]
        name = "Matt Norris"
        email = "matt.norris@mail.com"
        login = "mattnorris"
```

You may prefer to maintain a single list of maintainers across all repositories in your organization. When no maintainers file is found the system will fallback to the maintainers team in your organization:

![maintainers team](/docs/images/maintainers_team.png)



<!--
The individuals listed in the `core` organization represent the individuals that may approve pull requests for the current repository. You can also specify sub-organizations for other repositories:


```
[org]
    [org.core]
        people = [
            "bradrydzewski",
            "mattnorris",
        ]

    [org.python]
        people = [ "mattnorris" ]    
```

The above example includes a sub-organization that is responsible for maintaining our Python projects. We can use the command-line tools to generate a new `MAINTAINERS` file for our Python sub-organization:

```
$ lgtm octocat/hello-world python


[org]
    [org.core]
        people = [ "mattnorris" ]

[people]
    [people.mattnorris]
        name = "Matt Norris"
        email = "matt.norris@mail.com"
        login = "mattnorris"   
```

We can even push this file to another repository:

```
$ lgtm get octocat/hello-world python | lgtm push octocat/Spoon-Knife
```

This is useful when you want to have a master `MAINTAINERS` file that describes multiple repositories. See the command line documentation for more examples.
-->
