---
title: "indexd-server is updated to 0.0.2"
date: 2021-11-18T00:00:00Z
tags: [updates]
categories: [indexd-server]
---

Monaparty version of indexd-server was updated to 0.0.2.

This includes an usability bug fix.

https://github.com/monaparty/indexd-server/pull/2

This was applied both of the develop branch and the master branch.

## For wallet users

There is no need to action. Please wait until servers are updated.

## For node maintainers

Please upgrade your indexd-servers like this.

```
fednode rebuild indexd
fednode rebuild indexd-testnet
```

In this time, you don't need to run `fednode update`.

There is no reparse job running.
So We estimate the downtime of your nodes are a few minutes. 

Thanks for your cooperation.
