+++
date = "2015-12-05T16:00:21-08:00"
draft = true
title = "Shared List"
weight = 2
menu = "main"
+++


This returns the entire toml file:

```toml
$ lgtm get octocat/helloworld


[people]
  [people.bradrydzewski]
    name = "Brad Rydzewski"
    login = "bradrydzewski"
  [people.mattnorris]
    name = "Matt Norris"
    login = "mattnorris"
  [people.thenatefisher]
    name = "Nate Fisher"
    login = "thenatefisher"

[org]
  [org.plugins]
    people = [
      "bradrydzewski",
      "mattnorris",
    ]
```

This returns a subset of the team members that are part of the `plugins`
organization, and are now listed in the `core` organization:

```
$ lgtm get octocat/helloworld plugins


[people]
  [people.bradrydzewski]
    name = "Brad Rydzewski"
    login = "bradrydzewski"
  [people.mattnorris]
    name = "Matt Norris"
    login = "mattnorris"

[org]
  [org.core]
    people = [
      "bradrydzewski",
      "mattnorris",
    ]
```

We can combine these to use a single Toml configuration file and upload
that configuration, or a subset, to another repository:

```sh
export GITHUB_TOKEN=
export LGTM_TOKEN=

$ lgtm get octocat/helloworld plugins | lgtm push octocat/Spoon-Knife
```

We can bulk activate all repositories owned by `octocat`:

```sh
lgtm ls --inactive | grep octocat/ | xargs lgtm add
```

We can bulk push a new MAINTAINERS file to all repositories owned by `octocat`:

```sh
lgtm ls | grep octocat/ | xargs -I{} lgtm push {} path/to/central/MAINTAINERS
```
