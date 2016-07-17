+++
date = "2015-12-05T16:00:21-08:00"
draft = false
title = "Customize"
weight = 4
menu = "main"
+++

Place an `.lgtm` file in the root of your repository to customize your project's approval process. Below is a list of available configuration parameters:

* `approvals` number of required approvals, defaults to 2
* `pattern` regular expression used to match approvals, defaults to `(?i)LGTM`
* `self_approval_off = true` prevents an author from approver their own commit

# Examples

Example `.lgtm` configuration file:

```
approvals = 1
pattern = "(?i)LGTM"
```

Example pattern to match `LGTM` in a comment:

```
pattern = "(?i)LGTM"
```

Example pattern to match `+1` in a comment:

```
pattern = "(?i)\\+1"
```

Example pattern to match `:+1:` emoji in a comment:

```
pattern = "(?i):\\+1:"
```

Example pattern to match `:shipit:` in a comment:

```
pattern = "(?i):shipit:"
```

Example pattern that combines multiple of the above patterns:

```
pattern = "(?i):shipit:|:\\+1:|LGTM"
```

# Regex Engine

Pattern matching is performed using Go's regular expressions package. We recommended testing custom regular expressions in the [Go playground](http://play.golang.org/p/nQx_jGsLHz).
